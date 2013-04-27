<?php

function extract_class_signatures($files) {
    $signatures = array();
    foreach ($files as $file) {
        $doc = new DOMDocument;
        $doc->loadHTMLFile($file);
        $xpath = new DOMXpath($doc);

        $classname = extract_class_name($xpath, $file);
        if (empty($classname)) {
            // no usual class synopsis found inside the file, just skip this class
            continue;
        }
        $fields    = extract_class_fields($xpath, $classname, $file);
        $methods   = extract_class_methods($xpath, $classname, $file);

        if (!isset($signatures[$classname])) {
            $signatures[$classname] = array(
                'constants'         => $fields['constants'],
                'properties'        => $fields['properties'],
                'static_properties' => $fields['static_properties'],
                'methods'           => $methods['methods'],
                'static_methods'    => $methods['static_methods'],
            );
        } else {
            // there are some duplicate class names in extensions, use only the first one
        }

    }
    ksort($signatures);
    return $signatures;
}

function extract_class_fields($xpath, $classname, $file) {
    $re = array(
        'constants' => array(),
        'properties' => array(),
        'static_properties' => array(),
    );
    $field_nodes = $xpath->query('//div[@class="classsynopsis"]//div[contains(@class, "fieldsynopsis")]');
    foreach ($field_nodes as $field_node) {
        // fields look like: <var class="varname"><a href="">$<var class="varname">y</var></a></var>
        $property_node = $xpath->query('var[@class="varname"]//var[@class="varname"]/..', $field_node);
        if ($property_node->length) {
            $property_info = handle_class_property($xpath, $field_node, $file);
            if (in_array('static', $property_info['modifiers'])) {
                $re['static_properties'][$property_info['name']] = $property_info;
            } else {
                $re['properties'][$property_info['name']] = $property_info;
            }
            continue;
        }

        // constants look like: <var class="fieldsynopsis_varname"><a href="#"><var class="varname">W3C</var></a></var>
        $constant_node = $xpath->query('*[@class="modifier" and text() = "const"]/..', $field_node);
        if ($constant_node->length) {
            $constant_info = handle_class_const($xpath, $field_node, $file);
            $re['constants'][$constant_info['name']] = $constant_info;
            continue;
        }
    }
    array_map('ksort', $re);
    return $re;
}

function extract_class_methods($xpath, $classname, $file) {
    $re = array(
        'methods' => array(),
        'static_methods' => array(),
    );
    $method_nodes = $xpath->query('//div[@class="classsynopsis"]//div[contains(@class, "constructorsynopsis") or contains(@class, "methodsynopsis")]');
    foreach ($method_nodes as $method_node) {
        $method_info = handle_method_def($xpath, $classname, $method_node, $file);
        if (in_array('static', $method_info['modifiers'])) {
            $re['static_methods'][$method_info['name']] = $method_info;
        } else {
            $re['methods'][$method_info['name']] = $method_info;
        }
    }
    array_map('ksort', $re);
    return $re;
}

function handle_method_def($xpath, $classname, $node, $file) {
    $re = array(
        'name'        => '',
        'return_type' => '',
        'modifiers'   => array(),
        'params'      => array(),
    );

    $type = $xpath->query('*[@class="type"]', $node);
    $methodparams = $xpath->query('*[@class="methodparam"]', $node);
    $name = $xpath->query('*[@class="methodname"]/*[@class="methodname"]', $node);

    if ($name->length === 0) {
        var_dump($node->textContent);
        fwrite(STDERR, "\nextraction error, cant find method name in $file\n");
        exit;
    }
    // chop of class name from the inherited method names
    $name = preg_replace('/^\w+::/', '', trim($name->item(0)->textContent));
    $re['name'] = $name;

    // constructors and destructors dont have return types
    if ($type->length === 0 && !($name == '__construct' || $name == '__destruct' || $name == $classname)) {
        var_dump($xpath->document->saveHTML($node));
        fwrite(STDERR, "\nextraction error, cant find return type in $file\n");
        exit;
    }
    $re['return_type'] = $type->length ? trim($type->item(0)->textContent) : null;

    $modifiers = $xpath->query('*[@class="modifier"]', $node);
    foreach ($modifiers as $modifier) {
        $re['modifiers'][] = trim($modifier->textContent);
    }

    $params = array();
    $optional = false;
    foreach ($methodparams as $i => $param_node) {
        if (!$optional
            && $param_node->previousSibling->nodeType == XML_TEXT_NODE
            && strpos($param_node->previousSibling->textContent, '[') !== false) {

            $optional = true;
        }
        $paramtype = $xpath->query('*[@class="type"]', $param_node);
        $paramname = $xpath->query('*[contains(@class, "parameter")]', $param_node);
        $paramdefault = $xpath->query('*[@class="initializer"]', $param_node);
        if ($paramname->length) {
            // regular parameter
            $param = array(
                'type' => trim($paramtype->item(0)->textContent),
                'name' => trim($paramname->item(0)->textContent),
                'optional' => $optional,
            );
            if ($paramdefault->length) {
                $param['default'] = trim($paramdefault->item(0)->textContent, "=\n\r ");
                $param['optional'] = $optional;
            }
            $params[] = $param;
        }
    }

    $re['params'] = $params;
    return $re;
}

function extract_class_name($xpath) {
    $class = $xpath->query('//div[@class="classsynopsis"]/div[@class="classsynopsisinfo"]/*[@class="ooclass"]/*[@class="classname"]')->item(0);
    if (!$class) {
        return false;
    }
    $classname = trim($class->textContent);
    return $classname;
}

function handle_class_property($xpath, $node, $file) {
    $re = array(
        'name' => '',
        'modifiers' => array(),
        'initializer' => '',
        'type' => '',
    );
    $type = $xpath->query('*[@class="type"]', $node)->item(0);
    if ($type) {
        $re['type'] = trim($type->textContent);
    }

    $initializer = $xpath->query('*[@class="initializer"]', $node)->item(0);
    if ($initializer) {
        $re['initializer'] = trim($initializer->textContent, "= ");
    }

    $modifiers = $xpath->query('*[@class="modifier"]', $node);
    foreach ($modifiers as $modifier) {
        $re['modifiers'][] = trim($modifier->textContent);
    }

    $name = $xpath->query('var[@class="varname"]', $node)->item(0);
    if (!$name) {
        print $xpath->document->saveHTML($node);
        fwrite(STDERR, "\nextraction error, cant find field name in $file\n");
        exit;
    }
    if (in_array('static', $re['modifiers'])) {
        $re['name'] = trim($name->textContent);
    } else {
        $re['name'] = trim($name->textContent, '$ ');
    }


    return $re;
}

function handle_class_const($xpath, $node, $file) {
    $re = array(
        'name' => '',
        'initializer' => '',
    );
    $name = $xpath->query('var//var[@class="varname"]', $node)->item(0);
    if (!$name) {
        print $xpath->document->saveHTML($node);
        fwrite(STDERR, "\nextraction error, cant find const name in $file\n");
        exit;
    }
    $re['name'] = trim($name->textContent);

    $initializer = $xpath->query('*[@class="initializer"]', $node)->item(0);
    if ($initializer) {
        $re['initializer'] = trim($initializer->textContent, "= ");
    }

    return $re;
}

function write_class_signatures_to_vim_hash($signatures, $outpath) {
    $fd = fopen($outpath, 'w');

    fwrite($fd, "let g:php_builtin_classes = {\n");
    foreach ($signatures as $classname => $class_info) {
        fwrite($fd, "\\'{$classname}': {\n");

        fwrite($fd, "\\   'constants': {\n");
        foreach ($class_info['constants'] as $constant => $constant_info) {
            fwrite($fd, "\\     '{$constant}': '".vimstring_escape($constant_info['initializer'])."',\n");
        }
        fwrite($fd, "\\   },\n");

        fwrite($fd, "\\   'properties': {\n");
        foreach ($class_info['properties'] as $property => $property_info) {
            fwrite($fd, "\\     '{$property}': { 'initializer': '".vimstring_escape($property_info['initializer'])."', 'type': '".vimstring_escape($property_info['type'])."'},\n");
        }
        fwrite($fd, "\\   },\n");

        fwrite($fd, "\\   'static_properties': {\n");
        foreach ($class_info['static_properties'] as $property => $property_info) {
            fwrite($fd, "\\     '{$property}': { 'initializer': '".vimstring_escape($property_info['initializer'])."', 'type': '".vimstring_escape($property_info['type'])."'},\n");
        }
        fwrite($fd, "\\   },\n");

        fwrite($fd, "\\   'methods': {\n");
        foreach ($class_info['methods'] as $methodname => $method_info) {
            fwrite($fd, "\\     '{$methodname}': { 'signature': '".format_method_signature($method_info)."', 'return_type': '".vimstring_escape($method_info['return_type'])."'},\n");
        }
        fwrite($fd, "\\   },\n");

        fwrite($fd, "\\   'static_methods': {\n");
        foreach ($class_info['static_methods'] as $methodname => $method_info) {
            fwrite($fd, "\\     '{$methodname}': { 'signature': '".format_method_signature($method_info)."', 'return_type': '".vimstring_escape($method_info['return_type'])."'},\n");
        }
        fwrite($fd, "\\   },\n");

        fwrite($fd, "\\},\n");
    }
    fwrite($fd, "\\}\n");
    fclose($fd);
}


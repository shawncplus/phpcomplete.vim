<?php

/**
 * Create dictionaries for phpcomlete.vim to use in autocompletion
 *
 * Uses the offical PHP documentation html files to extract function
 * and method names with parameter signatures. The extracted info
 * dumped into vim dictionaries that phpcomlete.vim plugin loads in
 * for omnicomplete.
 *
 * @author: http://github.com/complex857
 */

main($argv);

function main($argv){

    if (count($argv) < 3) {
        usage($argv);
        return 1;
    }

    if (!is_dir($argv[1])) {
        fprintf(STDERR, "Error: Invalid php_doc_path. {$argv[1]} is not a directory\n\n");
        usage($argv);
        return 1;
    }
    if (!is_readable($argv[1])) {
        fprintf(STDERR, "Error: Invalid php_doc_path. {$argv[1]} is not readalbe\n\n");
        usage($argv);
        return 1;
    }
    if (!is_dir($argv[2])) {
        fprintf(STDERR, "Error: Invalid plugin_path. {$argv[2]} is not a directory\n\n");
        usage($argv);
        return 1;
    }
    if (!is_dir($argv[2].'/misc')) {
        fprintf(STDERR, "Error: Invalid plugin_path. {$argv[2]}/misc is not a directory\n\n");
        usage($argv);
        return 1;
    }

    libxml_use_internal_errors(true);

    $function_files = glob("{$argv[1]}/function.*.html");
    $signatures = extract_function_signatures($function_files);
    write_function_signatures_to_vim_hash($signatures, $argv[2].'/misc/php_builtin_functions.vim');
    print "extracted ".count($signatures)." built-in function\n";

    $class_files = glob("{$argv[1]}/class.*.html");
    $signatures = extract_method_signatures($class_files);
    write_method_signatures_to_vim_hash($signatures, $argv[2].'/misc/php_builtin_object_functions.vim');
    print "extracted ".count($signatures)." built-in class method\n";

    // unfortunately constants are really everywhere, the *constants.html almost where ok but leaves out
    // pages like filter.filters.sanitize.html
    $function_files = glob("{$argv[1]}/*.html");
    $constants = extract_constant_names($function_files);
    write_constant_names_to_vim_hash($constants, $argv[2].'/misc/php_constants.vim');
    print "extracted ".count($constants)." built-in constants\n";

    return 0;
}

function extract_constant_names($files) {
    $constants = array();
    foreach ($files as $file) {
        $doc = new DOMDocument;
        $doc->loadHTMLFile($file);
        $xpath = new DOMXpath($doc);

        // Unfortunately, the constatns are not marked with classes in code,
        // only a <strong><code>UPPERCASE_LETTER</code></strong> seem to be universal among them
        // xpath1 doesn't have uppercase so but fortunetly the alphabet is pretty limited
        // so translate() will do for uppercasing content so we only select full uppercased contents
        $nodes = $xpath->query('//strong/code[translate(text(), "abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLMNOPQRSTUVWXYZ") = text()]');
        foreach ($nodes as $node) {
            // regexp lifted from http://php.net/manual/en/language.constants.php added ":" so we can pick up class constants
            if (preg_match('/^[a-zA-Z_\x7f-\xff][:a-zA-Z0-9_\x7f-\xff]*$/', trim($node->textContent))) {
                $constants[trim($node->textContent)] = true;
            }
        }
        // most class constants are inside the Class synopsis blocks,
        // written out like they would be in normal code.
        $class_const_nodes = $xpath->query('//*[@class="classsynopsis"]/*[@class="fieldsynopsis"]/*[@class="modifier" and text() = "const"]/..');
        foreach ($class_const_nodes as $node) {
            $class_constant = handle_class_const($xpath, $node, $file);
            $constants[$class_constant] = true;
        }
    }
    ksort($constants);
    return $constants;
}

function handle_class_const($xpath, $node, $file) {
    $class = $xpath->query('//div[@class="classsynopsis"]/div[@class="classsynopsisinfo"]/*[@class="ooclass"]/*[@class="classname"]')->item(0);
    if (!$class) {
        print $xpath->document->saveHTML($node);
        fwrite(STDERR, 'extraction error, cant find class name name in '.$file);
        exit;
    }
    $classname = trim($class->textContent);

    $constname = $xpath->query('var//var[@class="varname"]', $node)->item(0);
    if (!$constname) {
        print $xpath->document->saveHTML($node);
        fwrite(STDERR, 'extraction error, cant find const name in '.$file);
        exit;
    }
    $constname = trim($constname->textContent);
    return $classname."::".$constname;
}

function write_constant_names_to_vim_hash($constants, $outpath) {
    $fd = fopen($outpath, 'w');

    fwrite($fd, "let g:php_constants = {\n");
    foreach ($constants as $constant => $file) {
        fwrite($fd, "\\ '{$constant}': '',\n");
    }
    fwrite($fd, "\\ }\n");
    fclose($fd);
}

function extract_function_signatures($files) {
    $signatures = array();
    foreach ($files as $file) {
        $doc = new DOMDocument;
        $doc->loadHTMLFile($file);
        $xpath = new DOMXpath($doc);
        $nodes = $xpath->query('//div[contains(@class, "methodsynopsis")]');
        if ($nodes->length == 0) {
            // no signature found, maybe its an alias?
            $nodes = $xpath->query('//div[contains(@class, "description")]/p[@class="simpara"][contains(text(), "This function is an alias of:")]');
            if ($nodes->length) {
                $signatures[] = handle_func_alias($xpath, $nodes, $file);
            }
        } else if ($nodes->length == 1) {
            $signatures[] = handle_func_def($xpath, $nodes->item(0), $file);
        } else if ($nodes->length > 1) {
            // more than one signature for a single function name
            // maybe its a procedural style of a method like  xmlwriter_text -> XMLWriter::text
            // search for the first non object style synopsis and extract from that
            foreach ($nodes as $node) {
                if (!preg_match('/\w+::\w+/', $node->textContent)) {
                    $signatures[] = handle_func_def($xpath, $node, $file);
                    break;
                }
            }
        }
    }
    return $signatures;
}

function write_function_signatures_to_vim_hash($signatures, $outpath) {
    $fd = fopen($outpath, 'w');
    // weed out duplicates, (like nthmac) only keep the first occurance
    $signatures = array_index_by_col($signatures, 'name', false);

    fwrite($fd, "let g:php_builtin_functions = {\n");
    foreach ($signatures as $signature) {
        if ($signature['type'] == 'function') {
            fwrite($fd, "\\ '{$signature['name']}(': '".trim(build_menu_info_string($signature))."'");
        } else if ($signature['type'] == 'alias') {
            fwrite($fd, "\\ '{$signature['name']}(': '{$signature['full_signature']}'");
        } else {
            fwrite(STDERR, 'unknown signature type '.var_export($signature, true));
            exit;
        }
        fwrite($fd, ",\n");
    }
    fwrite($fd, "\\ }\n");
    fclose($fd);
}

function build_menu_info_string($signature) {
    $optional_depth = 0;
    $istr = '';
    if (empty($signature['params'])) {
        // "__construct"s have no return type, they dont need the " |" at the end
        return 'void'.($signature['return_type'] ? ' | '.$signature['return_type'] : '');
    }
    foreach ($signature['params'] as $i => $param) {
        if ($param['optional'] || isset($param['default']) || $optional_depth != 0) {
            ++$optional_depth;
            if ($i != 0) {
                $istr .= ' [, ';
            } else {
                $istr .= '[ ';
            }
        } elseif ($i != 0) {
            $istr .= ', ';
        }
        $istr .= $param['type'];
        $istr .= ' ';
        $istr .= $param['name'];
        if (isset($param['default'])) {
            $istr .= ' = '.str_replace("'", "''", $param['default']);
        }
    }
    $istr .= str_repeat(']', $optional_depth);
    if ($signature['return_type']) {
        $istr .= ' | '.$signature['return_type'];
    }
    return $istr;
}

function handle_func_alias($xpath, $nodes, $file) {
    $methodname = $xpath->query('//h1[@class="refname"]');
    $refname = $xpath->query('//*[contains(@class, "description")]/p[@class="simpara"]/*[@class="methodname" or @class="function"]');
    $name = trim(str_replace("\n", '', $methodname->item(0)->textContent));
    $aliased_name = trim(str_replace("\n", '', $refname->item(0)->textContent));
    $full_signature = "$name — Alias of $aliased_name";
    return array(
        'type' => 'alias',
        'full_signature' => $full_signature,
        'name' => $name,
        'aliased_name' => $aliased_name,
    );
}

function handle_func_def($xpath, $nodes, $file) {
    $type = $xpath->query('span[@class="type"]', $nodes);
    $methodname = $xpath->query('*[@class="methodname"]/*', $nodes);
    $methodparams = $xpath->query('*[@class="methodparam"]', $nodes);

    if ($type->length === 0) {
        fwrite(STDERR, 'extraction error, cant find return type in '.$file);
        exit;
    }
    if ($methodname->length === 0) {
        fwrite(STDERR, 'extraction error, cant find method name in '.$file);
        exit;
    }

    $params = array();
    $optional = false;
    foreach ($methodparams as $param) {
        if (!$optional
            && $param->previousSibling->nodeType == XML_TEXT_NODE
            && strpos($param->previousSibling->textContent, '[') !== false) {

            $optional = true;
        }
        $paramtype = $xpath->query('*[@class="type"]', $param);
        $paramname = $xpath->query('*[contains(@class, "parameter")]', $param);
        $paramdefault = $xpath->query('*[@class="initializer"]', $param);
        if ($paramname->length) {
            // regular parameter
            $p = array(
                'type' => $paramtype->item(0)->textContent,
                'name' => $paramname->item(0)->textContent,
                'optional' => $optional,
            );
            if ($paramdefault->length) {
                $p['default'] = trim($paramdefault->item(0)->textContent, "=\r\n ");
                $p['optional'] = true;
            }
            $params[] = $p;
        }
    }
    $full_signature = preg_replace('/\s+/', ' ', trim(str_replace(array("\n", "\t", "\r"), "", $nodes->textContent)));
    return array(
        'type' => 'function',
        'full_signature' => $full_signature,
        'return_type' => trim($type->item(0)->textContent),
        'name' => trim($methodname->item(0)->textContent),
        'params' => $params
    );
}

function extract_method_signatures($files) {
    $signatures = array();
    foreach ($files as $file) {
        $doc = new DOMDocument;
        $doc->loadHTMLFile($file);
        $xpath = new DOMXpath($doc);
        $nodes = $xpath->query('//div[@class="classsynopsis"]//div[contains(@class, "constructorsynopsis") or contains(@class, "methodsynopsis")]');
        foreach ($nodes as $node) {
            $signatures[] = handle_method_def($xpath, $node, $file);
        }
    }

    return $signatures;
}

function write_method_signatures_to_vim_hash($signatures, $outpath) {
    $fd = fopen($outpath, 'w');
    // weed out duplicates, only keep the first occurance
    $signatures = array_index_by_col($signatures, 'name', false);

    fwrite($fd, "let g:php_builtin_object_functions = {\n");
    foreach ($signatures as $signature) {
        if ($signature['type'] == 'method') {
            fwrite($fd, "\\ '{$signature['name']}(': '".trim(build_menu_info_string($signature))."'");
        } else {
            fwrite(STDERR, 'unknown signature type '.var_export($signature, true));
            exit;
        }
        fwrite($fd, ",\n");
    }
    fwrite($fd, "\\ }\n");
    fclose($fd);
}

function handle_method_def($xpath, $node, $file) {
    $class = $xpath->query('//div[@class="classsynopsis"]/div[@class="classsynopsisinfo"]/*[@class="ooclass"]/*[@class="classname"]')->item(0);
    if (!$class) {
        var_dump($node->textContent);
        fwrite(STDERR, 'extraction error, cant find class name name in '.$file);
        exit;
    }
    $classname = trim($class->textContent);
    $type = $xpath->query('span[@class="type"]', $node);
    $methodparams = $xpath->query('*[@class="methodparam"]', $node);
    $methodname = $xpath->query('*[@class="methodname"]/*[@class="methodname"]', $node);

    if ($methodname->length === 0) {
        var_dump($node->textContent);
        fwrite(STDERR, 'extraction error, cant find method name in '.$file);
        exit;
    }
    // chop of class name from the inherited method names
    $methodname = preg_replace('/^\w+::/', '', trim($methodname->item(0)->textContent));

    // constructors and destructors dont have return types
    if ($type->length === 0 && !($methodname == '__construct' || $methodname == '__destruct' || $methodname == $classname)) {
        var_dump($xpath->document->saveHTML($node));
        fwrite(STDERR, 'extraction error, cant find return type in '.$file);
        exit;
    }


    $params = array();
    $optional = false;
    foreach ($methodparams as $i => $param) {
        if (!$optional
            && $param->previousSibling->nodeType == XML_TEXT_NODE
            && strpos($param->previousSibling->textContent, '[') !== false) {

            $optional = true;
        }
        $paramtype = $xpath->query('*[@class="type"]', $param);
        $paramname = $xpath->query('*[contains(@class, "parameter")]', $param);
        $paramdefault = $xpath->query('*[@class="initializer"]', $param);
        if ($paramname->length) {
            // regular parameter
            $p = array(
                'type' => trim($paramtype->item(0)->textContent),
                'name' => trim($paramname->item(0)->textContent),
                'optional' => $optional,
            );
            if ($paramdefault->length) {
                $p['default'] = trim($paramdefault->item(0)->textContent, "=\n\r ");
                $p['optional'] = $optional;
            }
            $params[] = $p;
        }
    }
    $re = array(
        'type' => 'method',
        'class' => $classname,
        'return_type' => $type->length ? trim($type->item(0)->textContent) : null,
        'name' => "$classname::$methodname",
        'params' => $params
    );
    return $re;
}

function array_index_by_col($arr, $col, $overwrite_duplicate = true) {
	$tmp = array();
	foreach ($arr as $i) {
        if (!isset($tmp[$i[$col]]) || $overwrite_duplicate) {
            $tmp[$i[$col]] = $i;
        }
	}
	return $tmp;
}

function usage($argv) {
    fprintf(STDERR,
        "USAGE:\n".
        "\tphp {$argv[0]} <php_doc_path> <plugin_path>\n".
        "\n".
        "php_doc_path:\n".
        "\tPath to a directory containing the\n".
        "\textracted Many HTML files version of the documentation.\n".
        "\tDownload from here: http://www.php.net/download-docs.php\n".
        "\n".
        "plugin_path:\n".
        "\tPath to the plugins root, example: ~/.vim/bundle/phpcomplete.vim/\n"
    );
}

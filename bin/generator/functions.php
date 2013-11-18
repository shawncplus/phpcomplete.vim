<?php

function extract_function_signatures($files, $extensions) {
    $signatures = array();
    foreach ($files as $file) {
        $extension_name = get_extension_name($file, $extensions);
        if (!isset($signatures[$extension_name])) {
            $signatures[$extension_name] = array();
        }

        $doc = new DOMDocument;
        $doc->loadHTMLFile($file);
        $xpath = new DOMXpath($doc);
        $nodes = $xpath->query('//div[contains(@class, "methodsynopsis")]');
        if ($nodes->length == 0) {
            // no signature found, maybe its an alias?
            $nodes = $xpath->query('//div[contains(@class, "description")]/p[@class="simpara"][contains(text(), "This function is an alias of:")]');
            if ($nodes->length) {
                $signatures[$extension_name][] = handle_func_alias($xpath, $nodes, $file);
            }
        } else if ($nodes->length == 1) {
            $signatures[$extension_name][] = handle_func_def($xpath, $nodes->item(0), $file);
        } else if ($nodes->length > 1) {
            // more than one signature for a single function name
            // maybe its a procedural style of a method like  xmlwriter_text -> XMLWriter::text
            // search for the first non object style synopsis and extract from that
            foreach ($nodes as $node) {
                if (!preg_match('/\w+::\w+/', $node->textContent)) {
                    $signatures[$extension_name][] = handle_func_def($xpath, $node, $file);
                    break;
                }
            }
        }
    }
    return $signatures;
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

function write_function_signatures_to_vim_hash($signatures, $outdir) {
    if (!is_dir($outdir)) {
        mkdir($outdir);
    }
    $old_files = glob($outdir.'/*.vim');
    array_map('unlink', $old_files);

    foreach ($signatures as $extension_name => $functions) {
        if (empty($functions)) {
            continue;
        }

        $outpath = $outdir.'/'.filenameize($extension_name).'.vim';
        $fd = fopen($outpath, 'w');

        // weed out duplicates, (like nthmac) only keep the first occurance
        $functions = array_index_by_col($functions, 'name', false);

        fwrite($fd, "call extend(g:php_builtin_functions, {\n");
        foreach ($functions as $function) {
            if ($function['type'] == 'function') {
                fwrite($fd, "\\ '{$function['name']}(': '".format_method_signature($function)."',\n");
            } else if ($function['type'] == 'alias') {
                fwrite($fd, "\\ '{$function['name']}(': '".vimstring_escape($function['full_signature'])."',\n");
            } else {
                fwrite(STDERR, 'unknown signature type '.var_export($function, true));
                exit;
            }
        }
        fwrite($fd, "\\ })\n");
        fclose($fd);
    }
}

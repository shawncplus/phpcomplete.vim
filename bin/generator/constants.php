<?php

function extract_constant_names($files) {
    $constants = array();
    $class_constants = array();

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
                $constant = trim($node->textContent);
                if (strpos($constant, "::") !== false) {
                    $class_constants[$constant] = true;
                } else {
                    $constants[$constant] = true;
                }
            }
        }
    }
    ksort($constants);
    ksort($class_constants);
    return array(array_keys($constants), array_keys($class_constants));
}

function inject_class_constants(&$classes, $class_constants) {
    // a lowercaseclassname => LowerCaseClassName map
    $classnames = array_combine(array_map('strtolower', array_keys($classes)), array_keys($classes));

    foreach ($class_constants as $constant) {
        list($classname, $constantname) = explode('::', $constant);
        $classname = $classnames[strtolower($classname)];
        if (!isset($classes[$classname])) {
            fwrite(STDERR, "\ncan't place class constant: '{$constant}', no such class found: '{$classname}'\n");
        } else {
            $classes[$classname]['constants'][$constantname] = array('initializer' => '');
        }
    }
}

function write_constant_names_to_vim_hash($constants, $outpath) {
    $fd = fopen($outpath, 'w');

    fwrite($fd, "let g:php_constants = {\n");
    foreach ($constants as $constant) {
        fwrite($fd, "\\ '{$constant}': '',\n");
    }
    fwrite($fd, "\\ }\n");
    fclose($fd);
}

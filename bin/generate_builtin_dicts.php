<?php

/**
 * Create dictionaries for phpcomlete.vim to use in autocompletion
 *
 * Uses the offical PHP documentation html files to extract function
 * and method names with parameter signatures. The extracted info
 * dumped into vim dictionaries that phpcomlete.vim plugin loads in
 * for omnicomplete.
 */

require_once __DIR__.'/'.'generator/tools.php';
require_once __DIR__.'/'.'generator/constants.php';
require_once __DIR__.'/'.'generator/functions.php';
require_once __DIR__.'/'.'generator/classes.php';

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
    $functions = extract_function_signatures($function_files);

    $class_files = glob("{$argv[1]}/class.*.html", GLOB_BRACE);
    $classes = extract_class_signatures($class_files);

    // unfortunately constants are really everywhere, the *constants.html almost there ok but leaves out
    // pages like filter.filters.sanitize.html
    $function_files = glob("{$argv[1]}/*.html");
    list($constants, $class_constants) = extract_constant_names($function_files);
    // some class constants like PDO::* are not defined in the class synopsis
    // but they show up with the other constatns so we add them to the extracted classes
    inject_class_constants($classes, $class_constants);

    write_function_signatures_to_vim_hash($functions, $argv[2].'/misc/php_builtin_functions.vim');
    print "extracted ".count($functions)." built-in function\n";

    write_class_signatures_to_vim_hash($classes, $argv[2].'/misc/php_builtin_classes.vim');
    print "extracted ".count($classes)." built-in class\n";

    write_constant_names_to_vim_hash($constants, $argv[2].'/misc/php_constants.vim');
    print "extracted ".count($constants)." built-in constants\n";

    return 0;
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

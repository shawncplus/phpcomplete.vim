call extend(g:php_builtin_functions, {
\ 'simplexml_import_dom(': 'DOMNode $node [, string $class_name = "SimpleXMLElement"] | SimpleXMLElement',
\ 'simplexml_load_file(': 'string $filename [, string $class_name = "SimpleXMLElement" [, int $options = 0 [, string $ns = "" [, bool $is_prefix = false]]]] | SimpleXMLElement',
\ 'simplexml_load_string(': 'string $data [, string $class_name = "SimpleXMLElement" [, int $options = 0 [, string $ns = "" [, bool $is_prefix = false]]]] | SimpleXMLElement',
\ })

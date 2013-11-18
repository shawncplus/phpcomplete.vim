call extend(g:php_builtin_functions, {
\ 'yaml_emit_file(': 'string $filename, mixed $data [, int $encoding = YAML_ANY_ENCODING [, int $linebreak = YAML_ANY_BREAK [, array $callbacks]]] | bool',
\ 'yaml_emit(': 'mixed $data [, int $encoding = YAML_ANY_ENCODING [, int $linebreak = YAML_ANY_BREAK [, array $callbacks]]] | string',
\ 'yaml_parse_file(': 'string $filename [, int $pos = 0 [, int &$ndocs [, array $callbacks]]] | mixed',
\ 'yaml_parse_url(': 'string $url [, int $pos = 0 [, int &$ndocs [, array $callbacks]]] | mixed',
\ 'yaml_parse(': 'string $input [, int $pos = 0 [, int &$ndocs [, array $callbacks]]] | mixed',
\ })

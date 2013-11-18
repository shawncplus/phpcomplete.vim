call extend(g:php_builtin_functions, {
\ 'json_decode(': 'string $json [, bool $assoc = false [, int $depth = 512 [, int $options = 0]]] | mixed',
\ 'json_encode(': 'mixed $value [, int $options = 0 [, int $depth = 512]] | string',
\ 'json_last_error_msg(': 'void | string',
\ 'json_last_error(': 'void | int',
\ })

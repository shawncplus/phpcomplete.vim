call extend(g:php_builtin_functions, {
\ 'wddx_add_vars(': 'resource $packet_id, mixed $var_name [, mixed $...] | bool',
\ 'wddx_deserialize(': 'string $packet | mixed',
\ 'wddx_packet_end(': 'resource $packet_id | string',
\ 'wddx_packet_start(': '[ string $comment] | resource',
\ 'wddx_serialize_value(': 'mixed $var [, string $comment] | string',
\ 'wddx_serialize_vars(': 'mixed $var_name [, mixed $...] | string',
\ })

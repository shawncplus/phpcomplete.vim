call extend(g:php_builtin_functions, {
\ 'w32api_deftype(': 'string $typename, string $member1_type, string $member1_name [, string $... [, string $...]] | bool',
\ 'w32api_init_dtype(': 'string $typename, mixed $value [, mixed $...] | resource',
\ 'w32api_invoke_function(': 'string $funcname, mixed $argument [, mixed $...] | mixed',
\ 'w32api_register_function(': 'string $library, string $function_name, string $return_type | bool',
\ 'w32api_set_call_method(': 'int $method | void',
\ })

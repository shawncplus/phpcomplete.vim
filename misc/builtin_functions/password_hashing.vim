call extend(g:php_builtin_functions, {
\ 'password_get_info(': 'string $hash | array',
\ 'password_hash(': 'string $password, integer $algo [, array $options] | string',
\ 'password_needs_rehash(': 'string $hash, string $algo [, string $options] | boolean',
\ 'password_verify(': 'string $password, string $hash | boolean',
\ })

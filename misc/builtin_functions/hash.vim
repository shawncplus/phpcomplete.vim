call extend(g:php_builtin_functions, {
\ 'hash_algos(': 'void | array',
\ 'hash_copy(': 'resource $context | resource',
\ 'hash_file(': 'string $algo, string $filename [, bool $raw_output = false] | string',
\ 'hash_final(': 'resource $context [, bool $raw_output = false] | string',
\ 'hash_hmac_file(': 'string $algo, string $filename, string $key [, bool $raw_output = false] | string',
\ 'hash_hmac(': 'string $algo, string $data, string $key [, bool $raw_output = false] | string',
\ 'hash_init(': 'string $algo [, int $options = 0 [, string $key = NULL]] | resource',
\ 'hash_pbkdf2(': 'string $algo, string $password, string $salt, int $iterations [, int $length = 0 [, bool $raw_output = false]] | string',
\ 'hash_update_file(': 'resource $hcontext, string $filename [, resource $scontext = NULL] | bool',
\ 'hash_update_stream(': 'resource $context, resource $handle [, int $length = -1] | int',
\ 'hash_update(': 'resource $context, string $data | bool',
\ 'hash(': 'string $algo, string $data [, bool $raw_output = false] | string',
\ })

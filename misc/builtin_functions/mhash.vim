call extend(g:php_builtin_functions, {
\ 'mhash_count(': 'void | int',
\ 'mhash_get_block_size(': 'int $hash | int',
\ 'mhash_get_hash_name(': 'int $hash | string',
\ 'mhash_keygen_s2k(': 'int $hash, string $password, string $salt, int $bytes | string',
\ 'mhash(': 'int $hash, string $data [, string $key] | string',
\ })

call extend(g:php_builtin_functions, {
\ 'xattr_get(': 'string $filename, string $name [, int $flags = 0] | string',
\ 'xattr_list(': 'string $filename [, int $flags = 0] | array',
\ 'xattr_remove(': 'string $filename, string $name [, int $flags = 0] | bool',
\ 'xattr_set(': 'string $filename, string $name, string $value [, int $flags = 0] | bool',
\ 'xattr_supported(': 'string $filename [, int $flags = 0] | bool',
\ })

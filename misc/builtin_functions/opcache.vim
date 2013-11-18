call extend(g:php_builtin_functions, {
\ 'opcache_compile_file(': 'string $file | boolean',
\ 'opcache_invalidate(': 'string $script [, boolean $force = FALSE] | boolean',
\ 'opcache_reset(': 'void | boolean',
\ })

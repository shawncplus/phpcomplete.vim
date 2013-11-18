call extend(g:php_builtin_functions, {
\ 'parsekit_compile_file(': 'string $filename [, array &$errors [, int $options = PARSEKIT_QUIET]] | array',
\ 'parsekit_compile_string(': 'string $phpcode [, array &$errors [, int $options = PARSEKIT_QUIET]] | array',
\ 'parsekit_func_arginfo(': 'mixed $function | array',
\ })

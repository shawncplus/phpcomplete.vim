call extend(g:php_builtin_functions, {
\ 'recode_file(': 'string $request, resource $input, resource $output | bool',
\ 'recode_string(': 'string $request, string $string | string',
\ 'recode(': 'recode — Alias of recode_string()',
\ })

call extend(g:php_builtin_functions, {
\ 'is_tainted(': 'string $string | bool',
\ 'taint(': 'string &$string [, string $...] | bool',
\ 'untaint(': 'string &$string [, string $...] | bool',
\ })

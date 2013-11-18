call extend(g:php_builtin_functions, {
\ 'crack_check(': 'resource $dictionary, string $password | bool',
\ 'crack_closedict(': '[ resource $dictionary] | bool',
\ 'crack_getlastmessage(': 'void | string',
\ 'crack_opendict(': 'string $dictionary | resource',
\ })

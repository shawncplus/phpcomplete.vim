call extend(g:php_builtin_functions, {
\ 'yp_all(': 'string $domain, string $map, string $callback | void',
\ 'yp_cat(': 'string $domain, string $map | array',
\ 'yp_err_string(': 'int $errorcode | string',
\ 'yp_errno(': 'void | int',
\ 'yp_first(': 'string $domain, string $map | array',
\ 'yp_get_default_domain(': 'void | string',
\ 'yp_master(': 'string $domain, string $map | string',
\ 'yp_match(': 'string $domain, string $map, string $key | string',
\ 'yp_next(': 'string $domain, string $map, string $key | array',
\ 'yp_order(': 'string $domain, string $map | int',
\ })

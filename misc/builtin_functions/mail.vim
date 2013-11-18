call extend(g:php_builtin_functions, {
\ 'ezmlm_hash(': 'string $addr | int',
\ 'mail(': 'string $to, string $subject, string $message [, string $additional_headers [, string $additional_parameters]] | bool',
\ })

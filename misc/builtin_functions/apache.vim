call extend(g:php_builtin_functions, {
\ 'apache_child_terminate(': 'void | bool',
\ 'apache_get_modules(': 'void | array',
\ 'apache_get_version(': 'void | string',
\ 'apache_getenv(': 'string $variable [, bool $walk_to_top = false] | string',
\ 'apache_lookup_uri(': 'string $filename | object',
\ 'apache_note(': 'string $note_name [, string $note_value = ""] | string',
\ 'apache_request_headers(': 'void | array',
\ 'apache_reset_timeout(': 'void | bool',
\ 'apache_response_headers(': 'void | array',
\ 'apache_setenv(': 'string $variable, string $value [, bool $walk_to_top = false] | bool',
\ 'getallheaders(': 'void | array',
\ 'virtual(': 'string $filename | bool',
\ })

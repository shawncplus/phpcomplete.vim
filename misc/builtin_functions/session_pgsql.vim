call extend(g:php_builtin_functions, {
\ 'session_pgsql_add_error(': 'int $error_level [, string $error_message] | bool',
\ 'session_pgsql_get_error(': '[ bool $with_error_message = false] | array',
\ 'session_pgsql_get_field(': 'void | string',
\ 'session_pgsql_reset(': 'void | bool',
\ 'session_pgsql_set_field(': 'string $value | bool',
\ 'session_pgsql_status(': 'void | array',
\ })

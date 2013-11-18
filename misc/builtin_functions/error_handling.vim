call extend(g:php_builtin_functions, {
\ 'debug_backtrace(': '[ int $options = DEBUG_BACKTRACE_PROVIDE_OBJECT [, int $limit = 0]] | array',
\ 'debug_print_backtrace(': '[ int $options = 0 [, int $limit = 0]] | void',
\ 'error_get_last(': 'void | array',
\ 'error_log(': 'string $message [, int $message_type = 0 [, string $destination [, string $extra_headers]]] | bool',
\ 'error_reporting(': '[ int $level] | int',
\ 'restore_error_handler(': 'void | bool',
\ 'restore_exception_handler(': 'void | bool',
\ 'set_error_handler(': 'callable $error_handler [, int $error_types = E_ALL | E_STRICT] | mixed',
\ 'set_exception_handler(': 'callable $exception_handler | callable',
\ 'trigger_error(': 'string $error_msg [, int $error_type = E_USER_NOTICE] | bool',
\ })

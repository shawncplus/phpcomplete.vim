call extend(g:php_builtin_functions, {
\ 'win32_continue_service(': 'string $servicename [, string $machine] | int',
\ 'win32_create_service(': 'array $details [, string $machine] | mixed',
\ 'win32_delete_service(': 'string $servicename [, string $machine] | mixed',
\ 'win32_get_last_control_message(': 'void | int',
\ 'win32_pause_service(': 'string $servicename [, string $machine] | int',
\ 'win32_query_service_status(': 'string $servicename [, string $machine] | mixed',
\ 'win32_set_service_status(': 'int $status [, int $checkpoint = 0] | bool',
\ 'win32_start_service_ctrl_dispatcher(': 'string $name | mixed',
\ 'win32_start_service(': 'string $servicename [, string $machine] | int',
\ 'win32_stop_service(': 'string $servicename [, string $machine] | int',
\ })

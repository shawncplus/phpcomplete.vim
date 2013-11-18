call extend(g:php_builtin_functions, {
\ 'mysqlnd_ms_get_last_gtid(': 'mixed $connection | string',
\ 'mysqlnd_ms_get_last_used_connection(': 'mixed $connection | array',
\ 'mysqlnd_ms_get_stats(': 'void | array',
\ 'mysqlnd_ms_match_wild(': 'string $table_name, string $wildcard | bool',
\ 'mysqlnd_ms_query_is_select(': 'string $query | int',
\ 'mysqlnd_ms_set_qos(': 'mixed $connection, int $service_level [, int $service_level_option [, mixed $option_value]] | bool',
\ 'mysqlnd_ms_set_user_pick_server(': 'string $function | bool',
\ })

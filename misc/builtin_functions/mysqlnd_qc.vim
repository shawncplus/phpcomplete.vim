call extend(g:php_builtin_functions, {
\ 'mysqlnd_qc_clear_cache(': 'void | bool',
\ 'mysqlnd_qc_get_available_handlers(': 'void | array',
\ 'mysqlnd_qc_get_cache_info(': 'void | array',
\ 'mysqlnd_qc_get_core_stats(': 'void | array',
\ 'mysqlnd_qc_get_normalized_query_trace_log(': 'void | array',
\ 'mysqlnd_qc_get_query_trace_log(': 'void | array',
\ 'mysqlnd_qc_set_cache_condition(': 'int $condition_type, mixed $condition, mixed $condition_option | bool',
\ 'mysqlnd_qc_set_is_select(': 'string $callback | mixed',
\ 'mysqlnd_qc_set_storage_handler(': 'string $handler | bool',
\ 'mysqlnd_qc_set_user_handlers(': 'string $get_hash, string $find_query_in_cache, string $return_to_cache, string $add_query_to_cache_if_not_exists, string $query_is_select, string $update_query_run_time_stats, string $get_stats, string $clear_cache | bool',
\ })

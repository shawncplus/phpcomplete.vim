call extend(g:php_builtin_functions, {
\ 'udm_add_search_limit(': 'resource $agent, int $var, string $val | bool',
\ 'udm_alloc_agent_array(': 'array $databases | resource',
\ 'udm_alloc_agent(': 'string $dbaddr [, string $dbmode] | resource',
\ 'udm_api_version(': 'void | int',
\ 'udm_cat_list(': 'resource $agent, string $category | array',
\ 'udm_cat_path(': 'resource $agent, string $category | array',
\ 'udm_check_charset(': 'resource $agent, string $charset | bool',
\ 'udm_check_stored(': 'resource $agent, int $link, string $doc_id | int',
\ 'udm_clear_search_limits(': 'resource $agent | bool',
\ 'udm_close_stored(': 'resource $agent, int $link | int',
\ 'udm_crc32(': 'resource $agent, string $str | int',
\ 'udm_errno(': 'resource $agent | int',
\ 'udm_error(': 'resource $agent | string',
\ 'udm_find(': 'resource $agent, string $query | resource',
\ 'udm_free_agent(': 'resource $agent | int',
\ 'udm_free_ispell_data(': 'int $agent | bool',
\ 'udm_free_res(': 'resource $res | bool',
\ 'udm_get_doc_count(': 'resource $agent | int',
\ 'udm_get_res_field(': 'resource $res, int $row, int $field | string',
\ 'udm_get_res_param(': 'resource $res, int $param | string',
\ 'udm_hash32(': 'resource $agent, string $str | int',
\ 'udm_load_ispell_data(': 'resource $agent, int $var, string $val1, string $val2, int $flag | bool',
\ 'udm_open_stored(': 'resource $agent, string $storedaddr | int',
\ 'udm_set_agent_param(': 'resource $agent, int $var, string $val | bool',
\ })
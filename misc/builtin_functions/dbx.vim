call extend(g:php_builtin_functions, {
\ 'dbx_close(': 'object $link_identifier | int',
\ 'dbx_compare(': 'array $row_a, array $row_b, string $column_key [, int $flags = DBX_CMP_ASC | DBX_CMP_NATIVE] | int',
\ 'dbx_connect(': 'mixed $module, string $host, string $database, string $username, string $password [, int $persistent] | object',
\ 'dbx_error(': 'object $link_identifier | string',
\ 'dbx_escape_string(': 'object $link_identifier, string $text | string',
\ 'dbx_fetch_row(': 'object $result_identifier | mixed',
\ 'dbx_query(': 'object $link_identifier, string $sql_statement [, int $flags] | mixed',
\ 'dbx_sort(': 'object $result, string $user_compare_function | bool',
\ })

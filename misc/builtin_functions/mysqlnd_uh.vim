call extend(g:php_builtin_functions, {
\ 'mysqlnd_uh_convert_to_mysqlnd(': 'mysqli &$mysql_connection | resource',
\ 'mysqlnd_uh_set_connection_proxy(': 'MysqlndUhConnection &$connection_proxy [, mysqli &$mysqli_connection] | bool',
\ 'mysqlnd_uh_set_statement_proxy(': 'MysqlndUhStatement &$statement_proxy | bool',
\ })

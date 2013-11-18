call extend(g:php_builtin_functions, {
\ 'mysqli_disable_reads_from_master(': 'mysqli $link | bool',
\ 'mysqli_disable_rpl_parse(': 'mysqli $link | bool',
\ 'mysqli_enable_reads_from_master(': 'mysqli $link | bool',
\ 'mysqli_enable_rpl_parse(': 'mysqli $link | bool',
\ 'mysqli_get_cache_stats(': 'void | array',
\ 'mysqli_master_query(': 'mysqli $link, string $query | bool',
\ 'mysqli_rpl_parse_enabled(': 'mysqli $link | int',
\ 'mysqli_rpl_probe(': 'mysqli $link | bool',
\ 'mysqli_slave_query(': 'mysqli $link, string $query | bool',
\ })

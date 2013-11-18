call extend(g:php_builtin_functions, {
\ 'dbase_add_record(': 'int $dbase_identifier, array $record | bool',
\ 'dbase_close(': 'int $dbase_identifier | bool',
\ 'dbase_create(': 'string $filename, array $fields | int',
\ 'dbase_delete_record(': 'int $dbase_identifier, int $record_number | bool',
\ 'dbase_get_header_info(': 'int $dbase_identifier | array',
\ 'dbase_get_record_with_names(': 'int $dbase_identifier, int $record_number | array',
\ 'dbase_get_record(': 'int $dbase_identifier, int $record_number | array',
\ 'dbase_numfields(': 'int $dbase_identifier | int',
\ 'dbase_numrecords(': 'int $dbase_identifier | int',
\ 'dbase_open(': 'string $filename, int $mode | int',
\ 'dbase_pack(': 'int $dbase_identifier | bool',
\ 'dbase_replace_record(': 'int $dbase_identifier, array $record, int $record_number | bool',
\ })

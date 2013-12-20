call extend(g:php_builtin_classes, {
\'mysqli_driver': {
\   'name': 'mysqli_driver',
\   'constants': {
\   },
\   'properties': {
\     'client_info': { 'initializer': '', 'type': 'string'},
\     'client_version': { 'initializer': '', 'type': 'string'},
\     'driver_version': { 'initializer': '', 'type': 'string'},
\     'embedded': { 'initializer': '', 'type': 'string'},
\     'reconnect': { 'initializer': '', 'type': 'bool'},
\     'report_mode': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'embedded_server_end': { 'signature': 'void | void', 'return_type': 'void'},
\     'embedded_server_start': { 'signature': 'bool $start, array $arguments, array $groups | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'mysqli_result': {
\   'name': 'mysqli_result',
\   'constants': {
\   },
\   'properties': {
\     'current_field': { 'initializer': '', 'type': 'int'},
\     'field_count': { 'initializer': '', 'type': 'int'},
\     'lengths': { 'initializer': '', 'type': 'array'},
\     'num_rows': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'data_seek': { 'signature': 'int $offset | bool', 'return_type': 'bool'},
\     'fetch_all': { 'signature': '[ int $resulttype = MYSQLI_NUM] | mixed', 'return_type': 'mixed'},
\     'fetch_array': { 'signature': '[ int $resulttype = MYSQLI_BOTH] | mixed', 'return_type': 'mixed'},
\     'fetch_assoc': { 'signature': 'void | array', 'return_type': 'array'},
\     'fetch_field_direct': { 'signature': 'int $fieldnr | object', 'return_type': 'object'},
\     'fetch_field': { 'signature': 'void | object', 'return_type': 'object'},
\     'fetch_fields': { 'signature': 'void | array', 'return_type': 'array'},
\     'fetch_object': { 'signature': '[ string $class_name [, array $params]] | object', 'return_type': 'object'},
\     'fetch_row': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'field_seek': { 'signature': 'int $fieldnr | bool', 'return_type': 'bool'},
\     'free': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'mysqli_sql_exception': {
\   'name': 'mysqli_sql_exception',
\   'constants': {
\   },
\   'properties': {
\     'sqlstate': { 'initializer': '', 'type': 'string'},
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'mysqli_stmt': {
\   'name': 'mysqli_stmt',
\   'constants': {
\   },
\   'properties': {
\     'affected_rows': { 'initializer': '', 'type': 'int'},
\     'errno': { 'initializer': '', 'type': 'int'},
\     'error_list': { 'initializer': '', 'type': 'array'},
\     'error': { 'initializer': '', 'type': 'string'},
\     'field_count': { 'initializer': '', 'type': 'int'},
\     'insert_id': { 'initializer': '', 'type': 'int'},
\     'num_rows': { 'initializer': '', 'type': 'int'},
\     'param_count': { 'initializer': '', 'type': 'int'},
\     'sqlstate': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'attr_get': { 'signature': 'int $attr | int', 'return_type': 'int'},
\     'attr_set': { 'signature': 'int $attr, int $mode | bool', 'return_type': 'bool'},
\     'bind_param': { 'signature': 'string $types, mixed &$var1 [, mixed &$...] | bool', 'return_type': 'bool'},
\     'bind_result': { 'signature': 'mixed &$var1 [, mixed &$...] | bool', 'return_type': 'bool'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'data_seek': { 'signature': 'int $offset | void', 'return_type': 'void'},
\     'execute': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'fetch': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'free_result': { 'signature': 'void | void', 'return_type': 'void'},
\     'get_result': { 'signature': 'void | mysqli_result', 'return_type': 'mysqli_result'},
\     'get_warnings': { 'signature': 'mysqli_stmt $stmt | object', 'return_type': 'object'},
\     'prepare': { 'signature': 'string $query | mixed', 'return_type': 'mixed'},
\     'reset': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'result_metadata': { 'signature': 'void | mysqli_result', 'return_type': 'mysqli_result'},
\     'send_long_data': { 'signature': 'int $param_nr, string $data | bool', 'return_type': 'bool'},
\     'store_result': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'mysqli_warning': {
\   'name': 'mysqli_warning',
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': ''},
\     'sqlstate': { 'initializer': '', 'type': ''},
\     'errno': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'mysqli': {
\   'name': 'mysqli',
\   'constants': {
\   },
\   'properties': {
\     'affected_rows': { 'initializer': '', 'type': 'int'},
\     'client_info': { 'initializer': '', 'type': 'string'},
\     'client_version': { 'initializer': '', 'type': 'int'},
\     'connect_errno': { 'initializer': '', 'type': 'string'},
\     'connect_error': { 'initializer': '', 'type': 'string'},
\     'errno': { 'initializer': '', 'type': 'int'},
\     'error_list': { 'initializer': '', 'type': 'array'},
\     'error': { 'initializer': '', 'type': 'string'},
\     'field_count': { 'initializer': '', 'type': 'int'},
\     'host_info': { 'initializer': '', 'type': 'string'},
\     'protocol_version': { 'initializer': '', 'type': 'string'},
\     'server_info': { 'initializer': '', 'type': 'string'},
\     'server_version': { 'initializer': '', 'type': 'int'},
\     'info': { 'initializer': '', 'type': 'string'},
\     'insert_id': { 'initializer': '', 'type': 'mixed'},
\     'sqlstate': { 'initializer': '', 'type': 'string'},
\     'thread_id': { 'initializer': '', 'type': 'int'},
\     'warning_count': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $host = ini_get("mysqli.default_host") [, string $username = ini_get("mysqli.default_user") [, string $passwd = ini_get("mysqli.default_pw") [, string $dbname = "" [, int $port = ini_get("mysqli.default_port") [, string $socket = ini_get("mysqli.default_socket")]]]]]]', 'return_type': ''},
\     'autocommit': { 'signature': 'bool $mode | bool', 'return_type': 'bool'},
\     'change_user': { 'signature': 'string $user, string $password, string $database | bool', 'return_type': 'bool'},
\     'character_set_name': { 'signature': 'void | string', 'return_type': 'string'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'commit': { 'signature': '[ int $flags [, string $name]] | bool', 'return_type': 'bool'},
\     'debug': { 'signature': 'string $message | bool', 'return_type': 'bool'},
\     'dump_debug_info': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get_charset': { 'signature': 'void | object', 'return_type': 'object'},
\     'get_client_info': { 'signature': 'void | string', 'return_type': 'string'},
\     'get_connection_stats': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get_warnings': { 'signature': 'void | mysqli_warning', 'return_type': 'mysqli_warning'},
\     'init': { 'signature': 'void | mysqli', 'return_type': 'mysqli'},
\     'kill': { 'signature': 'int $processid | bool', 'return_type': 'bool'},
\     'more_results': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'multi_query': { 'signature': 'string $query | bool', 'return_type': 'bool'},
\     'next_result': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'options': { 'signature': 'int $option, mixed $value | bool', 'return_type': 'bool'},
\     'ping': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'prepare': { 'signature': 'string $query | mysqli_stmt', 'return_type': 'mysqli_stmt'},
\     'query': { 'signature': 'string $query [, int $resultmode = MYSQLI_STORE_RESULT] | mixed', 'return_type': 'mixed'},
\     'real_connect': { 'signature': '[ string $host [, string $username [, string $passwd [, string $dbname [, int $port [, string $socket [, int $flags]]]]]]] | bool', 'return_type': 'bool'},
\     'escape_string': { 'signature': 'string $escapestr | string', 'return_type': 'string'},
\     'real_query': { 'signature': 'string $query | bool', 'return_type': 'bool'},
\     'reap_async_query': { 'signature': 'void | mysqli_result', 'return_type': 'mysqli_result'},
\     'refresh': { 'signature': 'int $options | bool', 'return_type': 'bool'},
\     'rollback': { 'signature': '[ int $flags [, string $name]] | bool', 'return_type': 'bool'},
\     'rpl_query_type': { 'signature': 'string $query | int', 'return_type': 'int'},
\     'select_db': { 'signature': 'string $dbname | bool', 'return_type': 'bool'},
\     'send_query': { 'signature': 'string $query | bool', 'return_type': 'bool'},
\     'set_charset': { 'signature': 'string $charset | bool', 'return_type': 'bool'},
\     'set_local_infile_handler': { 'signature': 'mysqli $link, callable $read_func | bool', 'return_type': 'bool'},
\     'ssl_set': { 'signature': 'string $key, string $cert, string $ca, string $capath, string $cipher | bool', 'return_type': 'bool'},
\     'stat': { 'signature': 'void | string', 'return_type': 'string'},
\     'stmt_init': { 'signature': 'void | mysqli_stmt', 'return_type': 'mysqli_stmt'},
\     'store_result': { 'signature': 'void | mysqli_result', 'return_type': 'mysqli_result'},
\     'use_result': { 'signature': 'void | mysqli_result', 'return_type': 'mysqli_result'},
\   },
\   'static_methods': {
\     'poll': { 'signature': 'array &$read, array &$error, array &$reject, int $sec [, int $usec] | int', 'return_type': 'int'},
\   },
\},
\})

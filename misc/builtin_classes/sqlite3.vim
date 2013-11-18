call extend(g:php_builtin_classes, {
\'SQLite3': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'busyTimeout': { 'signature': 'int $msecs | bool', 'return_type': 'bool'},
\     'changes': { 'signature': 'void | int', 'return_type': 'int'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'string $filename [, int $flags [, string $encryption_key]]', 'return_type': ''},
\     'createAggregate': { 'signature': 'string $name, mixed $step_callback, mixed $final_callback [, int $argument_count = -1] | bool', 'return_type': 'bool'},
\     'createCollation': { 'signature': 'string $name, callable $callback | bool', 'return_type': 'bool'},
\     'createFunction': { 'signature': 'string $name, mixed $callback [, int $argument_count = -1] | bool', 'return_type': 'bool'},
\     'exec': { 'signature': 'string $query | bool', 'return_type': 'bool'},
\     'lastErrorCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'lastErrorMsg': { 'signature': 'void | string', 'return_type': 'string'},
\     'lastInsertRowID': { 'signature': 'void | int', 'return_type': 'int'},
\     'loadExtension': { 'signature': 'string $shared_library | bool', 'return_type': 'bool'},
\     'open': { 'signature': 'string $filename [, int $flags = SQLITE3_OPEN_READWRITE | SQLITE3_OPEN_CREATE [, string $encryption_key]] | void', 'return_type': 'void'},
\     'prepare': { 'signature': 'string $query | SQLite3Stmt', 'return_type': 'SQLite3Stmt'},
\     'query': { 'signature': 'string $query | SQLite3Result', 'return_type': 'SQLite3Result'},
\     'querySingle': { 'signature': 'string $query [, bool $entire_row = false] | mixed', 'return_type': 'mixed'},
\   },
\   'static_methods': {
\     'escapeString': { 'signature': 'string $value | string', 'return_type': 'string'},
\     'version': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\},
\'SQLite3Result': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'columnName': { 'signature': 'int $column_number | string', 'return_type': 'string'},
\     'columnType': { 'signature': 'int $column_number | int', 'return_type': 'int'},
\     'fetchArray': { 'signature': '[ int $mode = SQLITE3_BOTH] | array', 'return_type': 'array'},
\     'finalize': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'numColumns': { 'signature': 'void | int', 'return_type': 'int'},
\     'reset': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SQLite3Stmt': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'bindParam': { 'signature': 'string $sql_param, mixed &$param [, int $type] | bool', 'return_type': 'bool'},
\     'bindValue': { 'signature': 'string $sql_param, mixed $value [, int $type] | bool', 'return_type': 'bool'},
\     'clear': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'execute': { 'signature': 'void | SQLite3Result', 'return_type': 'SQLite3Result'},
\     'paramCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'reset': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})

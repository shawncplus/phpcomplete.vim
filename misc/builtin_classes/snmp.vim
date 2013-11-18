call extend(g:php_builtin_classes, {
\'SNMP': {
\   'constants': {
\     'ERRNO_NOERROR': '',
\     'ERRNO_GENERIC': '',
\     'ERRNO_TIMEOUT': '',
\     'ERRNO_ERROR_IN_REPLY': '',
\     'ERRNO_OID_NOT_INCREASING': '',
\     'ERRNO_OID_PARSING_ERROR': '',
\     'ERRNO_MULTIPLE_SET_QUERIES': '',
\     'ERRNO_ANY': '',
\     'VERSION_1': '',
\     'VERSION_2C': '',
\     'VERSION_2c': '1',
\     'VERSION_3': '',
\   },
\   'properties': {
\     'max_oids': { 'initializer': '', 'type': 'int'},
\     'valueretrieval': { 'initializer': '', 'type': 'int'},
\     'quick_print': { 'initializer': '', 'type': 'bool'},
\     'enum_print': { 'initializer': '', 'type': 'bool'},
\     'oid_output_format': { 'initializer': '', 'type': 'int'},
\     'oid_increasing_check': { 'initializer': '', 'type': 'bool'},
\     'exceptions_enabled': { 'initializer': '', 'type': 'int'},
\     'info': { 'initializer': '', 'type': 'array'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'int $version, string $hostname, string $community [, int $timeout = 1000000 [, int $retries = 5]]', 'return_type': ''},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'mixed $object_id [, bool $preserve_keys = false] | mixed', 'return_type': 'mixed'},
\     'getErrno': { 'signature': 'void | int', 'return_type': 'int'},
\     'getError': { 'signature': 'void | string', 'return_type': 'string'},
\     'getnext': { 'signature': 'mixed $object_id | mixed', 'return_type': 'mixed'},
\     'set': { 'signature': 'mixed $object_id, mixed $type, mixed $value | bool', 'return_type': 'bool'},
\     'setSecurity': { 'signature': 'string $sec_level [, string $auth_protocol = ] | bool', 'return_type': 'bool'},
\     'walk': { 'signature': 'string $object_id [, bool $suffix_as_key = FALSE [, int $max_repetitions [, int $non_repeaters]]] | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SNMPException': {
\   'constants': {
\   },
\   'properties': {
\     'code': { 'initializer': '', 'type': 'int'},
\     'message': { 'initializer': '', 'type': 'string'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPrevious': { 'signature': 'void | Exception', 'return_type': 'Exception'},
\     'getCode': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getFile': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTrace': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTraceAsString': { 'signature': 'void | string', 'return_type': 'string'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\})

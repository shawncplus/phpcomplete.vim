call extend(g:php_builtin_classes, {
\'memcache': {
\   'name': 'Memcache',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'string $key, mixed $var [, int $flag [, int $expire]] | bool', 'return_type': 'bool'},
\     'addServer': { 'signature': 'string $host [, int $port = 11211 [, bool $persistent [, int $weight [, int $timeout [, int $retry_interval [, bool $status [, callable $failure_callback [, int $timeoutms]]]]]]]] | bool', 'return_type': 'bool'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'connect': { 'signature': 'string $host [, int $port [, int $timeout]] | bool', 'return_type': 'bool'},
\     'decrement': { 'signature': 'string $key [, int $value = 1] | int', 'return_type': 'int'},
\     'delete': { 'signature': 'string $key [, int $timeout = 0] | bool', 'return_type': 'bool'},
\     'flush': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'string $key [, int &$flags] | string', 'return_type': 'string'},
\     'getExtendedStats': { 'signature': '[ string $type [, int $slabid [, int $limit = 100]]] | array', 'return_type': 'array'},
\     'getServerStatus': { 'signature': 'string $host [, int $port = 11211] | int', 'return_type': 'int'},
\     'getStats': { 'signature': '[ string $type [, int $slabid [, int $limit = 100]]] | array', 'return_type': 'array'},
\     'getVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'increment': { 'signature': 'string $key [, int $value = 1] | int', 'return_type': 'int'},
\     'pconnect': { 'signature': 'string $host [, int $port [, int $timeout]] | mixed', 'return_type': 'mixed'},
\     'replace': { 'signature': 'string $key, mixed $var [, int $flag [, int $expire]] | bool', 'return_type': 'bool'},
\     'set': { 'signature': 'string $key, mixed $var [, int $flag [, int $expire]] | bool', 'return_type': 'bool'},
\     'setCompressThreshold': { 'signature': 'int $threshold [, float $min_savings] | bool', 'return_type': 'bool'},
\     'setServerParams': { 'signature': 'string $host [, int $port = 11211 [, int $timeout [, int $retry_interval = false [, bool $status [, callable $failure_callback]]]]] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})

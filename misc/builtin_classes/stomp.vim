call extend(g:php_builtin_classes, {
\'Stomp': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'abort': { 'signature': 'string $transaction_id [, array $headers] | bool', 'return_type': 'bool'},
\     'ack': { 'signature': 'mixed $msg [, array $headers] | bool', 'return_type': 'bool'},
\     'begin': { 'signature': 'string $transaction_id [, array $headers] | bool', 'return_type': 'bool'},
\     'commit': { 'signature': 'string $transaction_id [, array $headers] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': '[ string $broker = ini_get("stomp.default_broker_uri") [, string $username [, string $password [, array $headers]]]]', 'return_type': ''},
\     '__destruct': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'error': { 'signature': 'void | string', 'return_type': 'string'},
\     'getReadTimeout': { 'signature': 'void | array', 'return_type': 'array'},
\     'getSessionId': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasFrame': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'readFrame': { 'signature': '[ string $class_name = "stompFrame"] | stompframe', 'return_type': 'stompframe'},
\     'send': { 'signature': 'string $destination, mixed $msg [, array $headers] | bool', 'return_type': 'bool'},
\     'setReadTimeout': { 'signature': 'int $seconds [, int $microseconds] | void', 'return_type': 'void'},
\     'subscribe': { 'signature': 'string $destination [, array $headers] | bool', 'return_type': 'bool'},
\     'unsubscribe': { 'signature': 'string $destination [, array $headers] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'StompException': {
\   'constants': {
\   },
\   'properties': {
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
\     'getDetails': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'StompFrame': {
\   'constants': {
\   },
\   'properties': {
\     'command': { 'initializer': '', 'type': ''},
\     'headers': { 'initializer': '', 'type': ''},
\     'body': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $command [, array $headers [, string $body]]]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\})

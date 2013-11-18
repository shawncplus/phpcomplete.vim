call extend(g:php_builtin_classes, {
\'SessionHandler': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'destroy': { 'signature': 'string $session_id | bool', 'return_type': 'bool'},
\     'gc': { 'signature': 'int $maxlifetime | bool', 'return_type': 'bool'},
\     'open': { 'signature': 'string $save_path, string $session_id | bool', 'return_type': 'bool'},
\     'read': { 'signature': 'string $session_id | string', 'return_type': 'string'},
\     'write': { 'signature': 'string $session_id, string $session_data | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SessionHandlerInterface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'destroy': { 'signature': 'string $session_id | bool', 'return_type': 'bool'},
\     'gc': { 'signature': 'string $maxlifetime | bool', 'return_type': 'bool'},
\     'open': { 'signature': 'string $save_path, string $name | bool', 'return_type': 'bool'},
\     'read': { 'signature': 'string $session_id | string', 'return_type': 'string'},
\     'write': { 'signature': 'string $session_id, string $session_data | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})

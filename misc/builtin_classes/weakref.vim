call extend(g:php_builtin_classes, {
\'WeakMap': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'key': { 'signature': 'void | object', 'return_type': 'object'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'object $object | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'object $object | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'object $object, mixed $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'object $object | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'WeakRef': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ object $object]', 'return_type': ''},
\     'acquire': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'void | object', 'return_type': 'object'},
\     'release': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})

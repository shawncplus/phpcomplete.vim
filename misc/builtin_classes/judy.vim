call extend(g:php_builtin_classes, {
\'Judy': {
\   'constants': {
\     'BITSET': '1',
\     'INT_TO_INT': '2',
\     'INT_TO_MIXED': '3',
\     'STRING_TO_INT': '4',
\     'STRING_TO_MIXED': '5',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'byCount': { 'signature': 'int $nth_index | int', 'return_type': 'int'},
\     '__construct': { 'signature': 'int $judy_type', 'return_type': ''},
\     'count': { 'signature': '[ int $index_start = 0 [, int $index_end = -1]] | int', 'return_type': 'int'},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'first': { 'signature': '[ mixed $index] | mixed', 'return_type': 'mixed'},
\     'firstEmpty': { 'signature': '[ mixed $index = 0] | int', 'return_type': 'int'},
\     'free': { 'signature': 'void | int', 'return_type': 'int'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'last': { 'signature': '[ string $index] | void', 'return_type': 'void'},
\     'lastEmpty': { 'signature': '[ int $index = -1] | int', 'return_type': 'int'},
\     'memoryUsage': { 'signature': 'void | int', 'return_type': 'int'},
\     'next': { 'signature': 'mixed $index | mixed', 'return_type': 'mixed'},
\     'nextEmpty': { 'signature': 'int $index | int', 'return_type': 'int'},
\     'offsetExists': { 'signature': 'mixed $offset | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'mixed $offset | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'mixed $offset, mixed $value | bool', 'return_type': 'bool'},
\     'offsetUnset': { 'signature': 'mixed $offset | bool', 'return_type': 'bool'},
\     'prev': { 'signature': 'mixed $index | mixed', 'return_type': 'mixed'},
\     'prevEmpty': { 'signature': 'mixed $index | int', 'return_type': 'int'},
\     'size': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\})

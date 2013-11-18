call extend(g:php_builtin_classes, {
\'QuickHashIntHash': {
\   'constants': {
\     'CHECK_FOR_DUPES': '1',
\     'DO_NOT_USE_ZEND_ALLOC': '2',
\     'HASHER_NO_HASH': '256',
\     'HASHER_JENKINS1': '512',
\     'HASHER_JENKINS2': '1024',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'int $key [, int $value] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'int $size [, int $options]', 'return_type': ''},
\     'delete': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'exists': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'int $key | int', 'return_type': 'int'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'saveToFile': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'saveToString': { 'signature': 'void | string', 'return_type': 'string'},
\     'set': { 'signature': 'int $key, int $value | bool', 'return_type': 'bool'},
\     'update': { 'signature': 'int $key, int $value | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'loadFromFile': { 'signature': 'string $filename [, int $options] | QuickHashIntHash', 'return_type': 'QuickHashIntHash'},
\     'loadFromString': { 'signature': 'string $contents [, int $options] | QuickHashIntHash', 'return_type': 'QuickHashIntHash'},
\   },
\},
\'QuickHashIntSet': {
\   'constants': {
\     'CHECK_FOR_DUPES': '1',
\     'DO_NOT_USE_ZEND_ALLOC': '2',
\     'HASHER_NO_HASH': '256',
\     'HASHER_JENKINS1': '512',
\     'HASHER_JENKINS2': '1024',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'int $size [, int $options]', 'return_type': ''},
\     'delete': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'exists': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'saveToFile': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'saveToString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'loadFromFile': { 'signature': 'string $filename [, int $size [, int $options]] | QuickHashIntSet', 'return_type': 'QuickHashIntSet'},
\     'loadFromString': { 'signature': 'string $contents [, int $size [, int $options]] | QuickHashIntSet', 'return_type': 'QuickHashIntSet'},
\   },
\},
\'QuickHashIntStringHash': {
\   'constants': {
\     'CHECK_FOR_DUPES': '1',
\     'DO_NOT_USE_ZEND_ALLOC': '2',
\     'HASHER_NO_HASH': '256',
\     'HASHER_JENKINS1': '512',
\     'HASHER_JENKINS2': '1024',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'int $key, string $value | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'int $size [, int $options = 0]', 'return_type': ''},
\     'delete': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'exists': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'int $key | mixed', 'return_type': 'mixed'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'saveToFile': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'saveToString': { 'signature': 'void | string', 'return_type': 'string'},
\     'set': { 'signature': 'int $key, string $value | int', 'return_type': 'int'},
\     'update': { 'signature': 'int $key, string $value | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'loadFromFile': { 'signature': 'string $filename [, int $size = 0 [, int $options = 0]] | QuickHashIntStringHash', 'return_type': 'QuickHashIntStringHash'},
\     'loadFromString': { 'signature': 'string $contents [, int $size = 0 [, int $options = 0]] | QuickHashIntStringHash', 'return_type': 'QuickHashIntStringHash'},
\   },
\},
\'QuickHashStringIntHash': {
\   'constants': {
\     'CHECK_FOR_DUPES': '1',
\     'DO_NOT_USE_ZEND_ALLOC': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'string $key, int $value | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'int $size [, int $options = 0]', 'return_type': ''},
\     'delete': { 'signature': 'string $key | bool', 'return_type': 'bool'},
\     'exists': { 'signature': 'string $key | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'string $key | mixed', 'return_type': 'mixed'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'saveToFile': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'saveToString': { 'signature': 'void | string', 'return_type': 'string'},
\     'set': { 'signature': 'string $key, int $value | int', 'return_type': 'int'},
\     'update': { 'signature': 'string $key, int $value | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'loadFromFile': { 'signature': 'string $filename [, int $size = 0 [, int $options = 0]] | QuickHashStringIntHash', 'return_type': 'QuickHashStringIntHash'},
\     'loadFromString': { 'signature': 'string $contents [, int $size = 0 [, int $options = 0]] | QuickHashStringIntHash', 'return_type': 'QuickHashStringIntHash'},
\   },
\},
\})

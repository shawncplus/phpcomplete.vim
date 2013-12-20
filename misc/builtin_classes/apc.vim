call extend(g:php_builtin_classes, {
\'apciterator': {
\   'name': 'APCIterator',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $cache [, mixed $search = null [, int $format = APC_ITER_ALL [, int $chunk_size = 100 [, int $list = APC_LIST_ACTIVE]]]]', 'return_type': ''},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getTotalCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTotalHits': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTotalSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'key': { 'signature': 'void | string', 'return_type': 'string'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\})

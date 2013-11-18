call extend(g:php_builtin_classes, {
\'Directory': {
\   'constants': {
\   },
\   'properties': {
\     'path': { 'initializer': '', 'type': 'string'},
\     'handle': { 'initializer': '', 'type': 'resource'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'close': { 'signature': '[ resource $dir_handle] | void', 'return_type': 'void'},
\     'read': { 'signature': '[ resource $dir_handle] | string', 'return_type': 'string'},
\     'rewind': { 'signature': '[ resource $dir_handle] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\})

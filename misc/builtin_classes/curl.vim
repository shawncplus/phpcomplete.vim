call extend(g:php_builtin_classes, {
\'CURLFile': {
\   'constants': {
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': ''},
\     'mime': { 'initializer': '', 'type': ''},
\     'postname': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $filename [, string $mimetype [, string $postname]]', 'return_type': ''},
\     'getFilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getMimeType': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPostFilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'setMimeType': { 'signature': 'string $mime | void', 'return_type': 'void'},
\     'setPostFilename': { 'signature': 'string $postname | void', 'return_type': 'void'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\})

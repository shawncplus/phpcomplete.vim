call extend(g:php_builtin_classes, {
\'closure': {
\   'name': 'Closure',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'bindTo': { 'signature': 'object $newthis [, mixed $newscope = ''static''] | Closure', 'return_type': 'Closure'},
\   },
\   'static_methods': {
\     'bind': { 'signature': 'Closure $closure, object $newthis [, mixed $newscope = ''static''] | Closure', 'return_type': 'Closure'},
\   },
\},
\'generator': {
\   'name': 'Generator',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'send': { 'signature': 'mixed $value | mixed', 'return_type': 'mixed'},
\     'throw': { 'signature': 'Exception $exception | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\})

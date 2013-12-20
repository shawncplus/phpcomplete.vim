call extend(g:php_builtin_classes, {
\'php_user_filter': {
\   'name': 'php_user_filter',
\   'constants': {
\   },
\   'properties': {
\     'filtername': { 'initializer': '', 'type': ''},
\     'params': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'filter': { 'signature': 'resource $in, resource $out, int &$consumed, bool $closing | int', 'return_type': 'int'},
\     'onClose': { 'signature': 'void | void', 'return_type': 'void'},
\     'onCreate': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})

call extend(g:php_builtin_interfaces, {
\'jsonserializable': {
\   'name': 'JsonSerializable',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'jsonSerialize': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\   },
\   'static_methods': {
\   },
\},
\})

call extend(g:php_builtin_classes, {
\'SplBool': {
\   'constants': {
\     '__default': 'false',
\     'false': 'false',
\     'true': 'true',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getConstList': { 'signature': '[ bool $include_default = false] | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SplEnum': {
\   'constants': {
\     '__default': 'null',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getConstList': { 'signature': '[ bool $include_default = false] | array', 'return_type': 'array'},
\     '__construct': { 'signature': '[ mixed $initial_value [, bool $strict]]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'SplFloat': {
\   'constants': {
\     '__default': '0',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ mixed $initial_value [, bool $strict]]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'SplInt': {
\   'constants': {
\     '__default': '0',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ mixed $initial_value [, bool $strict]]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'SplString': {
\   'constants': {
\     '__default': '0',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ mixed $initial_value [, bool $strict]]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'SplType': {
\   'constants': {
\     '__default': 'null',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ mixed $initial_value [, bool $strict]]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\})

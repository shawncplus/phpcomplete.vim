call extend(g:php_builtin_classes, {
\'splbool': {
\   'name': 'SplBool',
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
\'splenum': {
\   'name': 'SplEnum',
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
\'splfloat': {
\   'name': 'SplFloat',
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
\'splint': {
\   'name': 'SplInt',
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
\'splstring': {
\   'name': 'SplString',
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
\'spltype': {
\   'name': 'SplType',
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

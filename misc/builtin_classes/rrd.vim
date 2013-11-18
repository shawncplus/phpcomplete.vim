call extend(g:php_builtin_classes, {
\'RRDCreator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addArchive': { 'signature': 'string $description | void', 'return_type': 'void'},
\     'addDataSource': { 'signature': 'string $description | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'string $path [, string $startTime [, int $step = 0]]', 'return_type': ''},
\     'save': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'RRDGraph': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $path', 'return_type': ''},
\     'save': { 'signature': 'void | array', 'return_type': 'array'},
\     'saveVerbose': { 'signature': 'void | array', 'return_type': 'array'},
\     'setOptions': { 'signature': 'array $options | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'RRDUpdater': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $path', 'return_type': ''},
\     'update': { 'signature': 'array $values [, string $time = time()] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})

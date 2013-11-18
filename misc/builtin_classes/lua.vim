call extend(g:php_builtin_classes, {
\'Lua': {
\   'constants': {
\     'LUA_VERSION': 'Lua 5.1.4',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'assign': { 'signature': 'string $name, string $value | mixed', 'return_type': 'mixed'},
\     'call': { 'signature': 'callable $lua_func [, array $args [, int $use_self = 0]] | mixed', 'return_type': 'mixed'},
\     '__call': { 'signature': 'callable $lua_func [, array $args [, int $use_self = 0]] | mixed', 'return_type': 'mixed'},
\     '__construct': { 'signature': '[ string $lua_script_file = NULL]', 'return_type': ''},
\     'eval': { 'signature': 'string $statements | mixed', 'return_type': 'mixed'},
\     'getVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'include': { 'signature': 'string $file | mixed', 'return_type': 'mixed'},
\     'registerCallback': { 'signature': 'string $name, callable $function | mixed', 'return_type': 'mixed'},
\   },
\   'static_methods': {
\   },
\},
\'LuaClosure': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__invoke': { 'signature': 'mixed $arg [, mixed $...] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\})

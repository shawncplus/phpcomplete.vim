call extend(g:php_builtin_classes, {
\'V8Js': {
\   'constants': {
\     'V8_VERSION': '',
\     'FLAG_NONE': '1',
\     'FLAG_FORCE_ARRAY': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $object_name = "PHP" [, array $variables = array() [, array $extensions = array() [, bool $report_uncaught_exceptions = TRUE]]]]', 'return_type': ''},
\     'executeString': { 'signature': 'string $script [, string $identifier = "V8Js::executeString()" [, int $flags = V8Js::FLAG_NONE]] | mixed', 'return_type': 'mixed'},
\     'getPendingException': { 'signature': 'void | V8JsException', 'return_type': 'V8JsException'},
\   },
\   'static_methods': {
\     'getExtensions': { 'signature': 'void | array', 'return_type': 'array'},
\     'registerExtension': { 'signature': 'string $extension_name, string $script [, array $dependencies = array() [, bool $auto_enable = FALSE]] | bool', 'return_type': 'bool'},
\   },
\},
\'V8JsException': {
\   'constants': {
\   },
\   'properties': {
\     'JsFileName': { 'initializer': '', 'type': ''},
\     'JsLineNumber': { 'initializer': '', 'type': ''},
\     'JsSourceLine': { 'initializer': '', 'type': ''},
\     'JsTrace': { 'initializer': '', 'type': ''},
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getJsFileName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getJsLineNumber': { 'signature': 'void | int', 'return_type': 'int'},
\     'getJsSourceLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getJsTrace': { 'signature': 'void | string', 'return_type': 'string'},
\     'getMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPrevious': { 'signature': 'void | Exception', 'return_type': 'Exception'},
\     'getCode': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getFile': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTrace': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTraceAsString': { 'signature': 'void | string', 'return_type': 'string'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\})

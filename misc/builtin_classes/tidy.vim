call extend(g:php_builtin_classes, {
\'tidy': {
\   'constants': {
\   },
\   'properties': {
\     'errorBuffer': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'body': { 'signature': 'void | tidyNode', 'return_type': 'tidyNode'},
\     'cleanRepair': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': '[ string $filename [, mixed $config [, string $encoding [, bool $use_include_path]]]]', 'return_type': ''},
\     'diagnose': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getConfig': { 'signature': 'void | array', 'return_type': 'array'},
\     'getHtmlVer': { 'signature': 'void | int', 'return_type': 'int'},
\     'getOpt': { 'signature': 'string $option | mixed', 'return_type': 'mixed'},
\     'getOptDoc': { 'signature': 'string $optname | string', 'return_type': 'string'},
\     'getRelease': { 'signature': 'void | string', 'return_type': 'string'},
\     'getStatus': { 'signature': 'void | int', 'return_type': 'int'},
\     'head': { 'signature': 'void | tidyNode', 'return_type': 'tidyNode'},
\     'html': { 'signature': 'void | tidyNode', 'return_type': 'tidyNode'},
\     'isXhtml': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isXml': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'parseFile': { 'signature': 'string $filename [, mixed $config [, string $encoding [, bool $use_include_path = false]]] | bool', 'return_type': 'bool'},
\     'parseString': { 'signature': 'string $input [, mixed $config [, string $encoding]] | bool', 'return_type': 'bool'},
\     'repairFile': { 'signature': 'string $filename [, mixed $config [, string $encoding [, bool $use_include_path = false]]] | string', 'return_type': 'string'},
\     'repairString': { 'signature': 'string $data [, mixed $config [, string $encoding]] | string', 'return_type': 'string'},
\     'root': { 'signature': 'void | tidyNode', 'return_type': 'tidyNode'},
\   },
\   'static_methods': {
\   },
\},
\'tidyNode': {
\   'constants': {
\   },
\   'properties': {
\     'value': { 'initializer': '', 'type': 'string'},
\     'name': { 'initializer': '', 'type': 'string'},
\     'type': { 'initializer': '', 'type': 'int'},
\     'line': { 'initializer': '', 'type': 'int'},
\     'column': { 'initializer': '', 'type': 'int'},
\     'proprietary': { 'initializer': '', 'type': 'bool'},
\     'id': { 'initializer': '', 'type': 'int'},
\     'attribute': { 'initializer': '', 'type': 'array'},
\     'child': { 'initializer': '', 'type': 'array'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getParent': { 'signature': 'void | tidyNode', 'return_type': 'tidyNode'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasSiblings': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isAsp': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isComment': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isHtml': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isJste': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isPhp': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isText': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})

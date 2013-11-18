call extend(g:php_builtin_classes, {
\'SimpleXMLElement': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $data [, int $options = 0 [, bool $data_is_url = false [, string $ns = "" [, bool $is_prefix = false]]]]', 'return_type': ''},
\     'addAttribute': { 'signature': 'string $name [, string $value [, string $namespace]] | void', 'return_type': 'void'},
\     'addChild': { 'signature': 'string $name [, string $value [, string $namespace]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'asXML': { 'signature': '[ string $filename] | mixed', 'return_type': 'mixed'},
\     'attributes': { 'signature': '[ string $ns = NULL [, bool $is_prefix = false]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'children': { 'signature': '[ string $ns [, bool $is_prefix = false]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDocNamespaces': { 'signature': '[ bool $recursive = false [, bool $from_root = true]] | array', 'return_type': 'array'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNamespaces': { 'signature': '[ bool $recursive = false] | array', 'return_type': 'array'},
\     'registerXPathNamespace': { 'signature': 'string $prefix, string $ns | bool', 'return_type': 'bool'},
\     'xpath': { 'signature': 'string $path | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SimpleXMLIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getChildren': { 'signature': 'void | SimpleXMLIterator', 'return_type': 'SimpleXMLIterator'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'string $data [, int $options = 0 [, bool $data_is_url = false [, string $ns = "" [, bool $is_prefix = false]]]]', 'return_type': ''},
\     'addAttribute': { 'signature': 'string $name [, string $value [, string $namespace]] | void', 'return_type': 'void'},
\     'addChild': { 'signature': 'string $name [, string $value [, string $namespace]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'asXML': { 'signature': '[ string $filename] | mixed', 'return_type': 'mixed'},
\     'attributes': { 'signature': '[ string $ns = NULL [, bool $is_prefix = false]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'children': { 'signature': '[ string $ns [, bool $is_prefix = false]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDocNamespaces': { 'signature': '[ bool $recursive = false [, bool $from_root = true]] | array', 'return_type': 'array'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNamespaces': { 'signature': '[ bool $recursive = false] | array', 'return_type': 'array'},
\     'registerXPathNamespace': { 'signature': 'string $prefix, string $ns | bool', 'return_type': 'bool'},
\     'xpath': { 'signature': 'string $path | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\})

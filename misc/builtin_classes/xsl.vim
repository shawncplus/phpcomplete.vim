call extend(g:php_builtin_classes, {
\'XSLTProcessor': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getParameter': { 'signature': 'string $namespaceURI, string $localName | string', 'return_type': 'string'},
\     'getSecurityPrefs': { 'signature': 'void | int', 'return_type': 'int'},
\     'hasExsltSupport': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'importStylesheet': { 'signature': 'object $stylesheet | void', 'return_type': 'void'},
\     'registerPHPFunctions': { 'signature': '[ mixed $restrict] | void', 'return_type': 'void'},
\     'removeParameter': { 'signature': 'string $namespaceURI, string $localName | bool', 'return_type': 'bool'},
\     'setParameter': { 'signature': 'string $namespace, string $name, string $value | bool', 'return_type': 'bool'},
\     'setProfiling': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'setSecurityPrefs': { 'signature': 'int $securityPrefs | int', 'return_type': 'int'},
\     'transformToDoc': { 'signature': 'DOMNode $doc | DOMDocument', 'return_type': 'DOMDocument'},
\     'transformToURI': { 'signature': 'DOMDocument $doc, string $uri | int', 'return_type': 'int'},
\     'transformToXML': { 'signature': 'DOMDocument $doc | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\})

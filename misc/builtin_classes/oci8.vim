call extend(g:php_builtin_classes, {
\'oci-collection': {
\   'name': 'OCI-Collection',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'append': { 'signature': 'mixed $value | bool', 'return_type': 'bool'},
\     'assign': { 'signature': 'OCI-Collection $from | bool', 'return_type': 'bool'},
\     'assignElem': { 'signature': 'int $index, mixed $value | bool', 'return_type': 'bool'},
\     'free': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getElem': { 'signature': 'int $index | mixed', 'return_type': 'mixed'},
\     'max': { 'signature': 'void | int', 'return_type': 'int'},
\     'size': { 'signature': 'void | int', 'return_type': 'int'},
\     'trim': { 'signature': 'int $num | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'oci-lob': {
\   'name': 'OCI-Lob',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'append': { 'signature': 'OCI-Lob $lob_from | bool', 'return_type': 'bool'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'eof': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'erase': { 'signature': '[ int $offset [, int $length]] | int', 'return_type': 'int'},
\     'export': { 'signature': 'string $filename [, int $start [, int $length]] | bool', 'return_type': 'bool'},
\     'flush': { 'signature': '[ int $flag] | bool', 'return_type': 'bool'},
\     'free': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getBuffering': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'import': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'load': { 'signature': 'void | string', 'return_type': 'string'},
\     'read': { 'signature': 'int $length | string', 'return_type': 'string'},
\     'rewind': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'save': { 'signature': 'string $data [, int $offset] | bool', 'return_type': 'bool'},
\     'seek': { 'signature': 'int $offset [, int $whence = OCI_SEEK_SET] | bool', 'return_type': 'bool'},
\     'setBuffering': { 'signature': 'bool $on_off | bool', 'return_type': 'bool'},
\     'size': { 'signature': 'void | int', 'return_type': 'int'},
\     'tell': { 'signature': 'void | int', 'return_type': 'int'},
\     'truncate': { 'signature': '[ int $length = 0] | bool', 'return_type': 'bool'},
\     'write': { 'signature': 'string $data [, int $length] | int', 'return_type': 'int'},
\     'writeTemporary': { 'signature': 'string $data [, int $lob_type = OCI_TEMP_CLOB] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})

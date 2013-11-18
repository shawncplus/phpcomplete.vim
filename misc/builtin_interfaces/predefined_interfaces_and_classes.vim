call extend(g:php_builtin_interfaces, {
\'ArrayAccess': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'offsetExists': { 'signature': 'mixed $offset | boolean', 'return_type': 'boolean'},
\     'offsetGet': { 'signature': 'mixed $offset | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'mixed $offset, mixed $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'mixed $offset | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Iterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'key': { 'signature': 'void | scalar', 'return_type': 'scalar'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\   },
\   'static_methods': {
\   },
\},
\'IteratorAggregate': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getIterator': { 'signature': 'void | Traversable', 'return_type': 'Traversable'},
\   },
\   'static_methods': {
\   },
\},
\'Serializable': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'serialize': { 'signature': 'void | string', 'return_type': 'string'},
\     'unserialize': { 'signature': 'string $serialized | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Traversable': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\})

let g:php_builtin_interfaces = {
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
\'Countable': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
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
\'JsonSerializable': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'jsonSerialize': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\   },
\   'static_methods': {
\   },
\},
\'OuterIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getInnerIterator': { 'signature': 'void | Iterator', 'return_type': 'Iterator'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'key': { 'signature': 'void | scalar', 'return_type': 'scalar'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\   },
\   'static_methods': {
\   },
\},
\'RecursiveIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getChildren': { 'signature': 'void | RecursiveIterator', 'return_type': 'RecursiveIterator'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'key': { 'signature': 'void | scalar', 'return_type': 'scalar'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\   },
\   'static_methods': {
\   },
\},
\'SeekableIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'seek': { 'signature': 'int $position | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'key': { 'signature': 'void | scalar', 'return_type': 'scalar'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | boolean', 'return_type': 'boolean'},
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
\'SplObserver': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'update': { 'signature': 'SplSubject $subject | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SplSubject': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'attach': { 'signature': 'SplObserver $observer | void', 'return_type': 'void'},
\     'detach': { 'signature': 'SplObserver $observer | void', 'return_type': 'void'},
\     'notify': { 'signature': 'void | void', 'return_type': 'void'},
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
\}

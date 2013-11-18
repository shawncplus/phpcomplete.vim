call extend(g:php_builtin_classes, {
\'AppendIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'Traversable $iterator', 'return_type': ''},
\     'append': { 'signature': 'Iterator $iterator | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getArrayIterator': { 'signature': 'void | void', 'return_type': 'void'},
\     'getInnerIterator': { 'signature': 'void | Traversable', 'return_type': 'Traversable'},
\     'getIteratorIndex': { 'signature': 'void | int', 'return_type': 'int'},
\     'key': { 'signature': 'void | scalar', 'return_type': 'scalar'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'ArrayIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'append': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'asort': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': '[ mixed $array = array() [, int $flags = 0]]', 'return_type': ''},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getArrayCopy': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFlags': { 'signature': 'void | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'ksort': { 'signature': 'void | void', 'return_type': 'void'},
\     'natcasesort': { 'signature': 'void | void', 'return_type': 'void'},
\     'natsort': { 'signature': 'void | void', 'return_type': 'void'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $index | void', 'return_type': 'void'},
\     'offsetGet': { 'signature': 'string $index | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'string $index, string $newval | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $index | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'seek': { 'signature': 'int $position | void', 'return_type': 'void'},
\     'serialize': { 'signature': 'void | string', 'return_type': 'string'},
\     'setFlags': { 'signature': 'string $flags | void', 'return_type': 'void'},
\     'uasort': { 'signature': 'string $cmp_function | void', 'return_type': 'void'},
\     'uksort': { 'signature': 'string $cmp_function | void', 'return_type': 'void'},
\     'unserialize': { 'signature': 'string $serialized | string', 'return_type': 'string'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'ArrayObject': {
\   'constants': {
\     'STD_PROP_LIST': '1',
\     'ARRAY_AS_PROPS': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ mixed $input = [] [, int $flags = 0 [, string $iterator_class = "ArrayIterator"]]]', 'return_type': ''},
\     'append': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'asort': { 'signature': 'void | void', 'return_type': 'void'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'exchangeArray': { 'signature': 'mixed $input | array', 'return_type': 'array'},
\     'getArrayCopy': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'getIterator': { 'signature': 'void | ArrayIterator', 'return_type': 'ArrayIterator'},
\     'getIteratorClass': { 'signature': 'void | string', 'return_type': 'string'},
\     'ksort': { 'signature': 'void | void', 'return_type': 'void'},
\     'natcasesort': { 'signature': 'void | void', 'return_type': 'void'},
\     'natsort': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'mixed $index | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'mixed $index | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'mixed $index, mixed $newval | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'mixed $index | void', 'return_type': 'void'},
\     'serialize': { 'signature': 'void | void', 'return_type': 'void'},
\     'setFlags': { 'signature': 'int $flags | void', 'return_type': 'void'},
\     'setIteratorClass': { 'signature': 'string $iterator_class | void', 'return_type': 'void'},
\     'uasort': { 'signature': 'callable $cmp_function | void', 'return_type': 'void'},
\     'uksort': { 'signature': 'callable $cmp_function | void', 'return_type': 'void'},
\     'unserialize': { 'signature': 'string $serialized | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'BadFunctionCallException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'BadMethodCallException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'CachingIterator': {
\   'constants': {
\     'CALL_TOSTRING': '1',
\     'CATCH_GET_CHILD': '16',
\     'TOSTRING_USE_KEY': '2',
\     'TOSTRING_USE_CURRENT': '4',
\     'TOSTRING_USE_INNER': '8',
\     'FULL_CACHE': '256',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'Iterator $iterator [, string $flags = self::CALL_TOSTRING]', 'return_type': ''},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | void', 'return_type': 'void'},
\     'getCache': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFlags': { 'signature': 'void | void', 'return_type': 'void'},
\     'getInnerIterator': { 'signature': 'void | Iterator', 'return_type': 'Iterator'},
\     'hasNext': { 'signature': 'void | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | scalar', 'return_type': 'scalar'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $index | void', 'return_type': 'void'},
\     'offsetGet': { 'signature': 'string $index | void', 'return_type': 'void'},
\     'offsetSet': { 'signature': 'string $index, string $newval | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $index | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setFlags': { 'signature': 'bitmask $flags | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'CallbackFilterIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'Iterator $iterator', 'return_type': ''},
\     'accept': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getInnerIterator': { 'signature': 'void | Iterator', 'return_type': 'Iterator'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'DirectoryIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $path', 'return_type': ''},
\     'current': { 'signature': 'void | DirectoryIterator', 'return_type': 'DirectoryIterator'},
\     'getATime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getBasename': { 'signature': '[ string $suffix] | string', 'return_type': 'string'},
\     'getCTime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getExtension': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getGroup': { 'signature': 'void | int', 'return_type': 'int'},
\     'getInode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMTime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getOwner': { 'signature': 'void | int', 'return_type': 'int'},
\     'getPath': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPathname': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPerms': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'getType': { 'signature': 'void | string', 'return_type': 'string'},
\     'isDir': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isDot': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isExecutable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isFile': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isLink': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isReadable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isWritable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | string', 'return_type': 'string'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'seek': { 'signature': 'int $position | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'DomainException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'EmptyIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'current': { 'signature': 'void | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | void', 'return_type': 'void'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'FilesystemIterator': {
\   'constants': {
\     'CURRENT_AS_PATHNAME': '32',
\     'CURRENT_AS_FILEINFO': '0',
\     'CURRENT_AS_SELF': '16',
\     'CURRENT_MODE_MASK': '240',
\     'KEY_AS_PATHNAME': '0',
\     'KEY_AS_FILENAME': '256',
\     'FOLLOW_SYMLINKS': '512',
\     'KEY_MODE_MASK': '3840',
\     'NEW_CURRENT_AND_KEY': '256',
\     'SKIP_DOTS': '4096',
\     'UNIX_PATHS': '8192',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $path [, int $flags = FilesystemIterator::KEY_AS_PATHNAME | FilesystemIterator::CURRENT_AS_FILEINFO | FilesystemIterator::SKIP_DOTS]', 'return_type': ''},
\     'current': { 'signature': 'void | DirectoryIterator', 'return_type': 'DirectoryIterator'},
\     'getFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'key': { 'signature': 'void | string', 'return_type': 'string'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setFlags': { 'signature': '[ int $flags] | void', 'return_type': 'void'},
\     'getATime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getBasename': { 'signature': '[ string $suffix] | string', 'return_type': 'string'},
\     'getCTime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getExtension': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getGroup': { 'signature': 'void | int', 'return_type': 'int'},
\     'getInode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMTime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getOwner': { 'signature': 'void | int', 'return_type': 'int'},
\     'getPath': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPathname': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPerms': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'getType': { 'signature': 'void | string', 'return_type': 'string'},
\     'isDir': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isDot': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isExecutable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isFile': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isLink': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isReadable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isWritable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'seek': { 'signature': 'int $position | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'FilterIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'accept': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'Iterator $iterator', 'return_type': ''},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getInnerIterator': { 'signature': 'void | Iterator', 'return_type': 'Iterator'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'GlobIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $path [, int $flags = FilesystemIterator::KEY_AS_PATHNAME | FilesystemIterator::CURRENT_AS_FILEINFO | FilesystemIterator::SKIP_DOTS]', 'return_type': ''},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'key': { 'signature': 'void | string', 'return_type': 'string'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setFlags': { 'signature': '[ int $flags] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'InfiniteIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'Traversable $iterator', 'return_type': ''},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getInnerIterator': { 'signature': 'void | Traversable', 'return_type': 'Traversable'},
\     'key': { 'signature': 'void | scalar', 'return_type': 'scalar'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'InvalidArgumentException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'IteratorIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'Traversable $iterator', 'return_type': ''},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getInnerIterator': { 'signature': 'void | Traversable', 'return_type': 'Traversable'},
\     'key': { 'signature': 'void | scalar', 'return_type': 'scalar'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'LengthException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'LimitIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'Iterator $iterator [, int $offset = 0 [, int $count = -1]]', 'return_type': ''},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getInnerIterator': { 'signature': 'void | Iterator', 'return_type': 'Iterator'},
\     'getPosition': { 'signature': 'void | int', 'return_type': 'int'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'seek': { 'signature': 'int $position | int', 'return_type': 'int'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'LogicException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'MultipleIterator': {
\   'constants': {
\     'MIT_NEED_ANY': '0',
\     'MIT_NEED_ALL': '1',
\     'MIT_KEYS_NUMERIC': '0',
\     'MIT_KEYS_ASSOC': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ int $flags = MultipleIterator::MIT_NEED_ALL|MultipleIterator::MIT_KEYS_NUMERIC]', 'return_type': ''},
\     'attachIterator': { 'signature': 'Iterator $iterator [, string $infos] | void', 'return_type': 'void'},
\     'containsIterator': { 'signature': 'Iterator $iterator | void', 'return_type': 'void'},
\     'countIterators': { 'signature': 'void | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | array', 'return_type': 'array'},
\     'detachIterator': { 'signature': 'Iterator $iterator | void', 'return_type': 'void'},
\     'getFlags': { 'signature': 'void | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | array', 'return_type': 'array'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setFlags': { 'signature': 'int $flags | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'NoRewindIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'Traversable $iterator', 'return_type': ''},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getInnerIterator': { 'signature': 'void | Traversable', 'return_type': 'Traversable'},
\     'key': { 'signature': 'void | scalar', 'return_type': 'scalar'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'OutOfBoundsException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'OutOfRangeException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'OverflowException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'ParentIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'accept': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'RecursiveIterator $iterator', 'return_type': ''},
\     'getChildren': { 'signature': 'void | ParentIterator', 'return_type': 'ParentIterator'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'RangeException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'RecursiveArrayIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getChildren': { 'signature': 'void | RecursiveArrayIterator', 'return_type': 'RecursiveArrayIterator'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'append': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'asort': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': '[ mixed $array = array() [, int $flags = 0]]', 'return_type': ''},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getArrayCopy': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFlags': { 'signature': 'void | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'ksort': { 'signature': 'void | void', 'return_type': 'void'},
\     'natcasesort': { 'signature': 'void | void', 'return_type': 'void'},
\     'natsort': { 'signature': 'void | void', 'return_type': 'void'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $index | void', 'return_type': 'void'},
\     'offsetGet': { 'signature': 'string $index | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'string $index, string $newval | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $index | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'seek': { 'signature': 'int $position | void', 'return_type': 'void'},
\     'serialize': { 'signature': 'void | string', 'return_type': 'string'},
\     'setFlags': { 'signature': 'string $flags | void', 'return_type': 'void'},
\     'uasort': { 'signature': 'string $cmp_function | void', 'return_type': 'void'},
\     'uksort': { 'signature': 'string $cmp_function | void', 'return_type': 'void'},
\     'unserialize': { 'signature': 'string $serialized | string', 'return_type': 'string'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'RecursiveCachingIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'Iterator $iterator [, string $flags = self::CALL_TOSTRING]', 'return_type': ''},
\     'getChildren': { 'signature': 'void | RecursiveCachingIterator', 'return_type': 'RecursiveCachingIterator'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | void', 'return_type': 'void'},
\     'getCache': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFlags': { 'signature': 'void | void', 'return_type': 'void'},
\     'getInnerIterator': { 'signature': 'void | Iterator', 'return_type': 'Iterator'},
\     'hasNext': { 'signature': 'void | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | scalar', 'return_type': 'scalar'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $index | void', 'return_type': 'void'},
\     'offsetGet': { 'signature': 'string $index | void', 'return_type': 'void'},
\     'offsetSet': { 'signature': 'string $index, string $newval | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $index | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setFlags': { 'signature': 'bitmask $flags | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'RecursiveCallbackFilterIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'RecursiveIterator $iterator, string $callback', 'return_type': ''},
\     'getChildren': { 'signature': 'void | RecursiveCallbackFilterIterator', 'return_type': 'RecursiveCallbackFilterIterator'},
\     'hasChildren': { 'signature': 'void | void', 'return_type': 'void'},
\     'accept': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'RecursiveDirectoryIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $path [, int $flags = FilesystemIterator::KEY_AS_PATHNAME | FilesystemIterator::CURRENT_AS_FILEINFO | FilesystemIterator::SKIP_DOTS]', 'return_type': ''},
\     'getChildren': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getSubPath': { 'signature': 'void | string', 'return_type': 'string'},
\     'getSubPathname': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasChildren': { 'signature': '[ bool $allow_links = false] | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | string', 'return_type': 'string'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'setFlags': { 'signature': '[ int $flags] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'RecursiveFilterIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'Iterator $iterator', 'return_type': ''},
\     'getChildren': { 'signature': 'void | void', 'return_type': 'void'},
\     'hasChildren': { 'signature': 'void | void', 'return_type': 'void'},
\     'accept': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getInnerIterator': { 'signature': 'void | Iterator', 'return_type': 'Iterator'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'RecursiveIteratorIterator': {
\   'constants': {
\     'LEAVES_ONLY': '0',
\     'SELF_FIRST': '1',
\     'CHILD_FIRST': '2',
\     'CATCH_GET_CHILD': '16',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'beginChildren': { 'signature': 'void | void', 'return_type': 'void'},
\     'beginIteration': { 'signature': 'void | void', 'return_type': 'void'},
\     'callGetChildren': { 'signature': 'void | RecursiveIterator', 'return_type': 'RecursiveIterator'},
\     'callHasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'Traversable $iterator [, int $mode = RecursiveIteratorIterator::LEAVES_ONLY [, int $flags = 0]]', 'return_type': ''},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'endChildren': { 'signature': 'void | void', 'return_type': 'void'},
\     'endIteration': { 'signature': 'void | void', 'return_type': 'void'},
\     'getDepth': { 'signature': 'void | int', 'return_type': 'int'},
\     'getInnerIterator': { 'signature': 'void | Iterator', 'return_type': 'Iterator'},
\     'getMaxDepth': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getSubIterator': { 'signature': '[ int $level] | RecursiveIterator', 'return_type': 'RecursiveIterator'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'nextElement': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setMaxDepth': { 'signature': '[ string $max_depth = -1] | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'RecursiveRegexIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'RecursiveIterator $iterator, string $regex [, int $mode = self::MATCH [, int $flags = 0 [, int $preg_flags = 0]]]', 'return_type': ''},
\     'getChildren': { 'signature': 'void | RecursiveIterator', 'return_type': 'RecursiveIterator'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'accept': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getPregFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'getRegex': { 'signature': 'void | string', 'return_type': 'string'},
\     'setFlags': { 'signature': 'int $flags | void', 'return_type': 'void'},
\     'setMode': { 'signature': 'int $mode | void', 'return_type': 'void'},
\     'setPregFlags': { 'signature': 'int $preg_flags | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'RecursiveTreeIterator': {
\   'constants': {
\     'BYPASS_CURRENT': '4',
\     'BYPASS_KEY': '8',
\     'PREFIX_LEFT': '0',
\     'PREFIX_MID_HAS_NEXT': '1',
\     'PREFIX_MID_LAST': '2',
\     'PREFIX_END_HAS_NEXT': '3',
\     'PREFIX_END_LAST': '4',
\     'PREFIX_RIGHT': '5',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'beginChildren': { 'signature': 'void | void', 'return_type': 'void'},
\     'beginIteration': { 'signature': 'void | void', 'return_type': 'void'},
\     'callGetChildren': { 'signature': 'void | RecursiveIterator', 'return_type': 'RecursiveIterator'},
\     'callHasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'Traversable $iterator [, int $mode = RecursiveIteratorIterator::LEAVES_ONLY [, int $flags = 0]]', 'return_type': ''},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'endChildren': { 'signature': 'void | void', 'return_type': 'void'},
\     'endIteration': { 'signature': 'void | void', 'return_type': 'void'},
\     'getEntry': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPostfix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getPrefix': { 'signature': 'void | string', 'return_type': 'string'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'nextElement': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setPrefixPart': { 'signature': 'int $part, string $value | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getDepth': { 'signature': 'void | int', 'return_type': 'int'},
\     'getInnerIterator': { 'signature': 'void | iterator', 'return_type': 'iterator'},
\     'getMaxDepth': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getSubIterator': { 'signature': '[ int $level] | RecursiveIterator', 'return_type': 'RecursiveIterator'},
\     'setMaxDepth': { 'signature': '[ string $max_depth = -1] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'RegexIterator': {
\   'constants': {
\     'MATCH': '0',
\     'GET_MATCH': '1',
\     'ALL_MATCHES': '2',
\     'SPLIT': '3',
\     'REPLACE': '4',
\     'USE_KEY': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'Iterator $iterator', 'return_type': ''},
\     'accept': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getPregFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'getRegex': { 'signature': 'void | string', 'return_type': 'string'},
\     'setFlags': { 'signature': 'int $flags | void', 'return_type': 'void'},
\     'setMode': { 'signature': 'int $mode | void', 'return_type': 'void'},
\     'setPregFlags': { 'signature': 'int $preg_flags | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getInnerIterator': { 'signature': 'void | Iterator', 'return_type': 'Iterator'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'RuntimeException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'SplDoublyLinkedList': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'bottom': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getIteratorMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'mixed $index | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'mixed $index | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'mixed $index, mixed $newval | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'mixed $index | void', 'return_type': 'void'},
\     'pop': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'prev': { 'signature': 'void | void', 'return_type': 'void'},
\     'push': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'serialize': { 'signature': 'void | string', 'return_type': 'string'},
\     'setIteratorMode': { 'signature': 'int $mode | void', 'return_type': 'void'},
\     'shift': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'top': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'unserialize': { 'signature': 'string $serialized | void', 'return_type': 'void'},
\     'unshift': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SplFileInfo': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $file_name', 'return_type': ''},
\     'getATime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getBasename': { 'signature': '[ string $suffix] | string', 'return_type': 'string'},
\     'getCTime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getExtension': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFileInfo': { 'signature': '[ string $class_name] | SplFileInfo', 'return_type': 'SplFileInfo'},
\     'getFilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getGroup': { 'signature': 'void | int', 'return_type': 'int'},
\     'getInode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLinkTarget': { 'signature': 'void | string', 'return_type': 'string'},
\     'getMTime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getOwner': { 'signature': 'void | int', 'return_type': 'int'},
\     'getPath': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPathInfo': { 'signature': '[ string $class_name] | SplFileInfo', 'return_type': 'SplFileInfo'},
\     'getPathname': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPerms': { 'signature': 'void | int', 'return_type': 'int'},
\     'getRealPath': { 'signature': 'void | string', 'return_type': 'string'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'getType': { 'signature': 'void | string', 'return_type': 'string'},
\     'isDir': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isExecutable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isFile': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isLink': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isReadable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isWritable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'openFile': { 'signature': '[ string $open_mode = r [, bool $use_include_path = false [, resource $context = NULL]]] | SplFileObject', 'return_type': 'SplFileObject'},
\     'setFileClass': { 'signature': '[ string $class_name] | void', 'return_type': 'void'},
\     'setInfoClass': { 'signature': '[ string $class_name] | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SplFileObject': {
\   'constants': {
\     'DROP_NEW_LINE': '1',
\     'READ_AHEAD': '2',
\     'SKIP_EMPTY': '4',
\     'READ_CSV': '8',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $file_name', 'return_type': ''},
\     'current': { 'signature': 'void | string|array', 'return_type': 'string|array'},
\     'eof': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'fflush': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'fgetc': { 'signature': 'void | string', 'return_type': 'string'},
\     'fgetcsv': { 'signature': '[ string $delimiter = "," [, string $enclosure = "\"" [, string $escape = "\\"]]] | array', 'return_type': 'array'},
\     'fgets': { 'signature': 'void | string', 'return_type': 'string'},
\     'fgetss': { 'signature': '[ string $allowable_tags] | string', 'return_type': 'string'},
\     'flock': { 'signature': 'int $operation [, int &$wouldblock] | bool', 'return_type': 'bool'},
\     'fpassthru': { 'signature': 'void | int', 'return_type': 'int'},
\     'fputcsv': { 'signature': 'array $fields [, string $delimiter = '','' [, string $enclosure = ''"'']] | int', 'return_type': 'int'},
\     'fscanf': { 'signature': 'string $format [, mixed &$...] | mixed', 'return_type': 'mixed'},
\     'fseek': { 'signature': 'int $offset [, int $whence = SEEK_SET] | int', 'return_type': 'int'},
\     'fstat': { 'signature': 'void | array', 'return_type': 'array'},
\     'ftell': { 'signature': 'void | int', 'return_type': 'int'},
\     'ftruncate': { 'signature': 'int $size | bool', 'return_type': 'bool'},
\     'fwrite': { 'signature': 'string $str [, int $length] | int', 'return_type': 'int'},
\     'getChildren': { 'signature': 'void | void', 'return_type': 'void'},
\     'getCsvControl': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMaxLineLen': { 'signature': 'void | int', 'return_type': 'int'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | int', 'return_type': 'int'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'seek': { 'signature': 'int $line_pos | void', 'return_type': 'void'},
\     'setCsvControl': { 'signature': '[ string $delimiter = "," [, string $enclosure = "\"" [, string $escape = "\\"]]] | void', 'return_type': 'void'},
\     'setFlags': { 'signature': 'int $flags | void', 'return_type': 'void'},
\     'setMaxLineLen': { 'signature': 'int $max_len | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getATime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getBasename': { 'signature': '[ string $suffix] | string', 'return_type': 'string'},
\     'getCTime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getExtension': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFileInfo': { 'signature': '[ string $class_name] | SplFileInfo', 'return_type': 'SplFileInfo'},
\     'getFilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getGroup': { 'signature': 'void | int', 'return_type': 'int'},
\     'getInode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLinkTarget': { 'signature': 'void | string', 'return_type': 'string'},
\     'getMTime': { 'signature': 'void | int', 'return_type': 'int'},
\     'getOwner': { 'signature': 'void | int', 'return_type': 'int'},
\     'getPath': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPathInfo': { 'signature': '[ string $class_name] | SplFileInfo', 'return_type': 'SplFileInfo'},
\     'getPathname': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPerms': { 'signature': 'void | int', 'return_type': 'int'},
\     'getRealPath': { 'signature': 'void | string', 'return_type': 'string'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'getType': { 'signature': 'void | string', 'return_type': 'string'},
\     'isDir': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isExecutable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isFile': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isLink': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isReadable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isWritable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'openFile': { 'signature': '[ string $open_mode = r [, bool $use_include_path = false [, resource $context = NULL]]] | SplFileObject', 'return_type': 'SplFileObject'},
\     'setFileClass': { 'signature': '[ string $class_name] | void', 'return_type': 'void'},
\     'setInfoClass': { 'signature': '[ string $class_name] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SplFixedArray': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ int $size = 0]', 'return_type': ''},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'key': { 'signature': 'void | int', 'return_type': 'int'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'int $index | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'int $index | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'int $index, mixed $newval | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'int $index | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setSize': { 'signature': 'int $size | int', 'return_type': 'int'},
\     'toArray': { 'signature': 'void | array', 'return_type': 'array'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'fromArray': { 'signature': 'array $array [, bool $save_indexes = true] | SplFixedArray', 'return_type': 'SplFixedArray'},
\   },
\},
\'SplHeap': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'compare': { 'signature': 'mixed $value1, mixed $value2 | int', 'return_type': 'int'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'extract': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'insert': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'recoverFromCorruption': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'top': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SplMaxHeap': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'compare': { 'signature': 'mixed $value1, mixed $value2 | int', 'return_type': 'int'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'extract': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'insert': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'recoverFromCorruption': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'top': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SplMinHeap': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'compare': { 'signature': 'mixed $value1, mixed $value2 | int', 'return_type': 'int'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'extract': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'insert': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'recoverFromCorruption': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'top': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SplObjectStorage': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addAll': { 'signature': 'SplObjectStorage $storage | void', 'return_type': 'void'},
\     'attach': { 'signature': 'object $object [, mixed $data = NULL] | void', 'return_type': 'void'},
\     'contains': { 'signature': 'object $object | bool', 'return_type': 'bool'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | object', 'return_type': 'object'},
\     'detach': { 'signature': 'object $object | void', 'return_type': 'void'},
\     'getHash': { 'signature': 'object $object | string', 'return_type': 'string'},
\     'getInfo': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'key': { 'signature': 'void | int', 'return_type': 'int'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'object $object | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'object $object | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'object $object [, mixed $data = NULL] | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'object $object | void', 'return_type': 'void'},
\     'removeAll': { 'signature': 'SplObjectStorage $storage | void', 'return_type': 'void'},
\     'removeAllExcept': { 'signature': 'SplObjectStorage $storage | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'serialize': { 'signature': 'void | string', 'return_type': 'string'},
\     'setInfo': { 'signature': 'mixed $data | void', 'return_type': 'void'},
\     'unserialize': { 'signature': 'string $serialized | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SplPriorityQueue': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'compare': { 'signature': 'mixed $priority1, mixed $priority2 | int', 'return_type': 'int'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'extract': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'insert': { 'signature': 'mixed $value, mixed $priority | void', 'return_type': 'void'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'recoverFromCorruption': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setExtractFlags': { 'signature': 'int $flags | void', 'return_type': 'void'},
\     'top': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SplQueue': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'dequeue': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'enqueue': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'setIteratorMode': { 'signature': 'int $mode | void', 'return_type': 'void'},
\     'bottom': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getIteratorMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'mixed $index | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'mixed $index | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'mixed $index, mixed $newval | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'mixed $index | void', 'return_type': 'void'},
\     'pop': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'prev': { 'signature': 'void | void', 'return_type': 'void'},
\     'push': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'serialize': { 'signature': 'void | string', 'return_type': 'string'},
\     'shift': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'top': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'unserialize': { 'signature': 'string $serialized | void', 'return_type': 'void'},
\     'unshift': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SplStack': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'setIteratorMode': { 'signature': 'int $mode | void', 'return_type': 'void'},
\     'bottom': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getIteratorMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'mixed $index | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'mixed $index | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'mixed $index, mixed $newval | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'mixed $index | void', 'return_type': 'void'},
\     'pop': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'prev': { 'signature': 'void | void', 'return_type': 'void'},
\     'push': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'serialize': { 'signature': 'void | string', 'return_type': 'string'},
\     'shift': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'top': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'unserialize': { 'signature': 'string $serialized | void', 'return_type': 'void'},
\     'unshift': { 'signature': 'mixed $value | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SplTempFileObject': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $filename [, string $open_mode = "r" [, bool $use_include_path = false [, resource $context]]]', 'return_type': ''},
\     'current': { 'signature': 'void | string|array', 'return_type': 'string|array'},
\     'eof': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'fflush': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'fgetc': { 'signature': 'void | string', 'return_type': 'string'},
\     'fgetcsv': { 'signature': '[ string $delimiter = "," [, string $enclosure = "\"" [, string $escape = "\\"]]] | array', 'return_type': 'array'},
\     'fgets': { 'signature': 'void | string', 'return_type': 'string'},
\     'fgetss': { 'signature': '[ string $allowable_tags] | string', 'return_type': 'string'},
\     'flock': { 'signature': 'int $operation [, int &$wouldblock] | bool', 'return_type': 'bool'},
\     'fpassthru': { 'signature': 'void | int', 'return_type': 'int'},
\     'fputcsv': { 'signature': 'array $fields [, string $delimiter = '','' [, string $enclosure = ''"'']] | int', 'return_type': 'int'},
\     'fscanf': { 'signature': 'string $format [, mixed &$...] | mixed', 'return_type': 'mixed'},
\     'fseek': { 'signature': 'int $offset [, int $whence = SEEK_SET] | int', 'return_type': 'int'},
\     'fstat': { 'signature': 'void | array', 'return_type': 'array'},
\     'ftell': { 'signature': 'void | int', 'return_type': 'int'},
\     'ftruncate': { 'signature': 'int $size | bool', 'return_type': 'bool'},
\     'fwrite': { 'signature': 'string $str [, int $length] | int', 'return_type': 'int'},
\     'getChildren': { 'signature': 'void | void', 'return_type': 'void'},
\     'getCsvControl': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMaxLineLen': { 'signature': 'void | int', 'return_type': 'int'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | int', 'return_type': 'int'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'seek': { 'signature': 'int $line_pos | void', 'return_type': 'void'},
\     'setCsvControl': { 'signature': '[ string $delimiter = "," [, string $enclosure = "\"" [, string $escape = "\\"]]] | void', 'return_type': 'void'},
\     'setFlags': { 'signature': 'int $flags | void', 'return_type': 'void'},
\     'setMaxLineLen': { 'signature': 'int $max_len | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'UnderflowException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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
\'UnexpectedValueException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
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

call extend(g:php_builtin_classes, {
\'Lapack': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'eigenValues': { 'signature': 'array $a [, array $left [, array $right]] | array', 'return_type': 'array'},
\     'identity': { 'signature': 'int $n | array', 'return_type': 'array'},
\     'leastSquaresByFactorisation': { 'signature': 'array $a, array $b | array', 'return_type': 'array'},
\     'leastSquaresBySVD': { 'signature': 'array $a, array $b | array', 'return_type': 'array'},
\     'pseudoInverse': { 'signature': 'array $a | array', 'return_type': 'array'},
\     'singularValues': { 'signature': 'array $a | array', 'return_type': 'array'},
\     'solveLinearEquation': { 'signature': 'array $a, array $b | array', 'return_type': 'array'},
\   },
\},
\'lapackexception': {
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

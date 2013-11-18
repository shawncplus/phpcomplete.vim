call extend(g:php_builtin_classes, {
\'Cond': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'broadcast': { 'signature': 'long $condition | boolean', 'return_type': 'boolean'},
\     'create': { 'signature': 'void | long', 'return_type': 'long'},
\     'destroy': { 'signature': 'long $condition | boolean', 'return_type': 'boolean'},
\     'signal': { 'signature': 'long $condition | boolean', 'return_type': 'boolean'},
\     'wait': { 'signature': 'long $condition, long $mutex [, long $timeout] | boolean', 'return_type': 'boolean'},
\   },
\},
\'Mutex': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'create': { 'signature': '[ boolean $lock] | long', 'return_type': 'long'},
\     'destroy': { 'signature': 'long $mutex | boolean', 'return_type': 'boolean'},
\     'lock': { 'signature': 'long $mutex | boolean', 'return_type': 'boolean'},
\     'trylock': { 'signature': 'long $mutex | boolean', 'return_type': 'boolean'},
\     'unlock': { 'signature': 'long $mutex [, boolean $destroy] | boolean', 'return_type': 'boolean'},
\   },
\},
\'Stackable': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'chunk': { 'signature': 'long $size, boolean $preserve | boolean', 'return_type': 'boolean'},
\     'isRunning': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isTerminated': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isWaiting': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'lock': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'merge': { 'signature': 'mixed $from [, mixed $overwrite] | boolean', 'return_type': 'boolean'},
\     'notify': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'pop': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'run': { 'signature': 'void | void', 'return_type': 'void'},
\     'shift': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'synchronized': { 'signature': 'Closure $block [, mixed $...] | mixed', 'return_type': 'mixed'},
\     'unlock': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'wait': { 'signature': '[ string $timeout] | boolean', 'return_type': 'boolean'},
\   },
\   'static_methods': {
\   },
\},
\'Thread': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'chunk': { 'signature': 'long $size, boolean $preserve | boolean', 'return_type': 'boolean'},
\     'getCreatorId': { 'signature': 'void | long', 'return_type': 'long'},
\     'getThreadId': { 'signature': 'void | long', 'return_type': 'long'},
\     'isJoined': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isRunning': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isStarted': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isTerminated': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isWaiting': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'join': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'lock': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'merge': { 'signature': 'mixed $from [, mixed $overwrite] | boolean', 'return_type': 'boolean'},
\     'notify': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'pop': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'run': { 'signature': 'void | void', 'return_type': 'void'},
\     'shift': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'start': { 'signature': '[ long $options] | boolean', 'return_type': 'boolean'},
\     'synchronized': { 'signature': 'Closure $block [, mixed $...] | mixed', 'return_type': 'mixed'},
\     'unlock': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'wait': { 'signature': '[ long $timeout] | boolean', 'return_type': 'boolean'},
\   },
\   'static_methods': {
\   },
\},
\'Worker': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'chunk': { 'signature': 'long $size, boolean $preserve | boolean', 'return_type': 'boolean'},
\     'getCreatorId': { 'signature': 'void | long', 'return_type': 'long'},
\     'getStacked': { 'signature': 'void | int', 'return_type': 'int'},
\     'getThreadId': { 'signature': 'void | long', 'return_type': 'long'},
\     'isShutdown': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isWorking': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'merge': { 'signature': 'mixed $from [, mixed $overwrite] | boolean', 'return_type': 'boolean'},
\     'pop': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'run': { 'signature': 'void | void', 'return_type': 'void'},
\     'shift': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'shutdown': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'stack': { 'signature': 'Stackable $work | int', 'return_type': 'int'},
\     'start': { 'signature': '[ long $options] | boolean', 'return_type': 'boolean'},
\     'unstack': { 'signature': '[ Stackable $work] | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\})

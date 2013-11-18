call extend(g:php_builtin_classes, {
\'FANNConnection': {
\   'constants': {
\   },
\   'properties': {
\     'from_neuron': { 'initializer': '', 'type': ''},
\     'to_neuron': { 'initializer': '', 'type': ''},
\     'weight': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'int $from_neuron, int $to_neuron, float $weight', 'return_type': ''},
\     'getFromNeuron': { 'signature': 'void | int', 'return_type': 'int'},
\     'getToNeuron': { 'signature': 'void | int', 'return_type': 'int'},
\     'getWeight': { 'signature': 'void | void', 'return_type': 'void'},
\     'setWeight': { 'signature': 'float $weight | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})

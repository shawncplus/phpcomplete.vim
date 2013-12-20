call extend(g:php_builtin_classes, {
\'svm': {
\   'name': 'SVM',
\   'constants': {
\     'C_SVC': '',
\     'NU_SVC': '',
\     'ONE_CLASS': '',
\     'EPSILON_SVR': '',
\     'NU_SVR': '',
\     'KERNEL_LINEAR': '',
\     'KERNEL_POLY': '',
\     'KERNEL_RBF': '',
\     'KERNEL_SIGMOID': '',
\     'KERNEL_PRECOMPUTED': '',
\     'OPT_TYPE': '',
\     'OPT_KERNEL_TYPE': '',
\     'OPT_DEGREE': '',
\     'OPT_SHRINKING': '',
\     'OPT_PROPABILITY': '105',
\     'OPT_GAMMA': '',
\     'OPT_NU': '',
\     'OPT_EPS': '',
\     'OPT_P': '',
\     'OPT_COEF_ZERO': '',
\     'OPT_C': '',
\     'OPT_CACHE_SIZE': '',
\     'OPT_PROBABILITY': '',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'crossvalidate': { 'signature': 'array $problem, int $number_of_folds | float', 'return_type': 'float'},
\     'getOptions': { 'signature': 'void | array', 'return_type': 'array'},
\     'setOptions': { 'signature': 'array $params | bool', 'return_type': 'bool'},
\     'train': { 'signature': 'array $problem [, array $weights] | SVMModel', 'return_type': 'SVMModel'},
\   },
\   'static_methods': {
\   },
\},
\'svmmodel': {
\   'name': 'SVMModel',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'checkProbabilityModel': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': '[ string $filename]', 'return_type': ''},
\     'getLabels': { 'signature': 'void | array', 'return_type': 'array'},
\     'getNrClass': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSvmType': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSvrProbability': { 'signature': 'void | float', 'return_type': 'float'},
\     'load': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'predict_probability': { 'signature': 'array $data | float', 'return_type': 'float'},
\     'predict': { 'signature': 'array $data | float', 'return_type': 'float'},
\     'save': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})

call extend(g:php_builtin_classes, {
\'soapclient': {
\   'name': 'SoapClient',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__call': { 'signature': 'string $function_name, string $arguments | mixed', 'return_type': 'mixed'},
\     'SoapClient': { 'signature': 'mixed $wsdl [, array $options]', 'return_type': ''},
\     '__doRequest': { 'signature': 'string $request, string $location, string $action, int $version [, int $one_way = 0] | string', 'return_type': 'string'},
\     '__getFunctions': { 'signature': 'void | array', 'return_type': 'array'},
\     '__getLastRequest': { 'signature': 'void | string', 'return_type': 'string'},
\     '__getLastRequestHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     '__getLastResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     '__getLastResponseHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     '__getTypes': { 'signature': 'void | array', 'return_type': 'array'},
\     '__setCookie': { 'signature': 'string $name [, string $value] | void', 'return_type': 'void'},
\     '__setLocation': { 'signature': '[ string $new_location] | string', 'return_type': 'string'},
\     '__setSoapHeaders': { 'signature': '[ mixed $soapheaders] | bool', 'return_type': 'bool'},
\     '__soapCall': { 'signature': 'string $function_name, array $arguments [, array $options [, mixed $input_headers [, array &$output_headers]]] | mixed', 'return_type': 'mixed'},
\   },
\   'static_methods': {
\   },
\},
\'soapfault': {
\   'name': 'SoapFault',
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
\     '__construct': { 'signature': 'string $faultcode, string $faultstring [, string $faultactor [, string $detail [, string $faultname [, string $headerfault]]]]', 'return_type': ''},
\     'SoapFault': { 'signature': 'string $faultcode, string $faultstring [, string $faultactor [, string $detail [, string $faultname [, string $headerfault]]]]', 'return_type': ''},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     'getMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPrevious': { 'signature': 'void | Exception', 'return_type': 'Exception'},
\     'getCode': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getFile': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTrace': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTraceAsString': { 'signature': 'void | string', 'return_type': 'string'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'soapheader': {
\   'name': 'SoapHeader',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $namespace, string $name [, mixed $data [, bool $mustunderstand [, string $actor]]]', 'return_type': ''},
\     'SoapHeader': { 'signature': 'string $namespace, string $name [, mixed $data [, bool $mustunderstand = false [, string $actor]]]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'soapparam': {
\   'name': 'SoapParam',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'mixed $data, string $name', 'return_type': ''},
\     'SoapParam': { 'signature': 'mixed $data, string $name', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'soapserver': {
\   'name': 'SoapServer',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addFunction': { 'signature': 'mixed $functions | void', 'return_type': 'void'},
\     'addSoapHeader': { 'signature': 'SoapHeader $object | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'mixed $wsdl [, array $options]', 'return_type': ''},
\     'fault': { 'signature': 'string $code, string $string [, string $actor [, string $details [, string $name]]] | void', 'return_type': 'void'},
\     'getFunctions': { 'signature': 'void | array', 'return_type': 'array'},
\     'handle': { 'signature': '[ string $soap_request] | void', 'return_type': 'void'},
\     'setClass': { 'signature': 'string $class_name [, mixed $args [, mixed $...]] | void', 'return_type': 'void'},
\     'setObject': { 'signature': 'object $object | void', 'return_type': 'void'},
\     'setPersistence': { 'signature': 'int $mode | void', 'return_type': 'void'},
\     'SoapServer': { 'signature': 'mixed $wsdl [, array $options]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'soapvar': {
\   'name': 'SoapVar',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $data, string $encoding [, string $type_name [, string $type_namespace [, string $node_name [, string $node_namespace]]]]', 'return_type': ''},
\     'SoapVar': { 'signature': 'mixed $data, string $encoding [, string $type_name [, string $type_namespace [, string $node_name [, string $node_namespace]]]]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\})

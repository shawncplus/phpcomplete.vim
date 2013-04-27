let g:php_builtin_classes = {
\'AMQPChannel': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'commitTransaction': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'AMQPConnection $amqp_connection', 'return_type': ''},
\     'isConnected': { 'signature': 'void | void', 'return_type': 'void'},
\     'qos': { 'signature': 'int $size, int $count | void', 'return_type': 'void'},
\     'rollbackTransaction': { 'signature': 'void | void', 'return_type': 'void'},
\     'setPrefetchCount': { 'signature': 'int $count | void', 'return_type': 'void'},
\     'setPrefetchSize': { 'signature': 'int $size | void', 'return_type': 'void'},
\     'startTransaction': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'AMQPConnection': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'connect': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': '[ array $credentials = array()]', 'return_type': ''},
\     'disconnect': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getHost': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLogin': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPassword': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPort': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimeout': { 'signature': 'void | int', 'return_type': 'int'},
\     'getVhost': { 'signature': 'void | string', 'return_type': 'string'},
\     'isConnected': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'reconnect': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setHost': { 'signature': 'string $host | bool', 'return_type': 'bool'},
\     'setLogin': { 'signature': 'string $login | bool', 'return_type': 'bool'},
\     'setPassword': { 'signature': 'string $password | bool', 'return_type': 'bool'},
\     'setPort': { 'signature': 'int $port | bool', 'return_type': 'bool'},
\     'setTimeout': { 'signature': 'float $timeout | bool', 'return_type': 'bool'},
\     'setVhost': { 'signature': 'string $vhost | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'AMQPEnvelope': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getAppId': { 'signature': 'void | string', 'return_type': 'string'},
\     'getBody': { 'signature': 'void | string', 'return_type': 'string'},
\     'getContentEncoding': { 'signature': 'void | string', 'return_type': 'string'},
\     'getContentType': { 'signature': 'void | string', 'return_type': 'string'},
\     'getCorrelationId': { 'signature': 'void | string', 'return_type': 'string'},
\     'getDeliveryTag': { 'signature': 'void | string', 'return_type': 'string'},
\     'getExchange': { 'signature': 'void | string', 'return_type': 'string'},
\     'getExpiration': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHeader': { 'signature': 'string $header_key | string', 'return_type': 'string'},
\     'getHeaders': { 'signature': 'void | array', 'return_type': 'array'},
\     'getMessageId': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPriority': { 'signature': 'void | string', 'return_type': 'string'},
\     'getReplyTo': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRoutingKey': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTimeStamp': { 'signature': 'void | string', 'return_type': 'string'},
\     'getType': { 'signature': 'void | string', 'return_type': 'string'},
\     'getUserId': { 'signature': 'void | string', 'return_type': 'string'},
\     'isRedelivery': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'AMQPExchange': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'bind': { 'signature': 'string $destination_exchange_name, string $source_exchange_name, string $routing_key | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'AMQPChannel $amqp_channel', 'return_type': ''},
\     'declare': { 'signature': 'void | int', 'return_type': 'int'},
\     'delete': { 'signature': '[ int $flags = AMQP_NOPARAM] | bool', 'return_type': 'bool'},
\     'getArgument': { 'signature': 'string $key | mixed', 'return_type': 'mixed'},
\     'getArguments': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getType': { 'signature': 'void | string', 'return_type': 'string'},
\     'publish': { 'signature': 'string $message, string $routing_key [, int $flags = AMQP_NOPARAM [, array $attributes = array()]] | bool', 'return_type': 'bool'},
\     'setArgument': { 'signature': 'string $key, mixed $value | void', 'return_type': 'void'},
\     'setArguments': { 'signature': 'array $arguments | void', 'return_type': 'void'},
\     'setFlags': { 'signature': 'int $flags | void', 'return_type': 'void'},
\     'setName': { 'signature': 'string $exchange_name | void', 'return_type': 'void'},
\     'setType': { 'signature': 'string $exchange_type | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'AMQPQueue': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'ack': { 'signature': 'int $delivery_tag [, int $flags = AMQP_NOPARAM] | bool', 'return_type': 'bool'},
\     'bind': { 'signature': 'string $exchange_name, string $routing_key | bool', 'return_type': 'bool'},
\     'cancel': { 'signature': '[ string $consumer_tag = ""] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'AMQPChannel $amqp_channel', 'return_type': ''},
\     'consume': { 'signature': 'callable $callback [, int $flags = AMQP_NOPARAM] | void', 'return_type': 'void'},
\     'declare': { 'signature': 'void | int', 'return_type': 'int'},
\     'delete': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get': { 'signature': '[ int $flags] | mixed', 'return_type': 'mixed'},
\     'getArgument': { 'signature': 'string $key | mixed', 'return_type': 'mixed'},
\     'getArguments': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'nack': { 'signature': 'string $delivery_tag [, string $flags = AMQP_NOPARAM] | void', 'return_type': 'void'},
\     'purge': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setArgument': { 'signature': 'string $key, mixed $value | void', 'return_type': 'void'},
\     'setArguments': { 'signature': 'array $arguments | void', 'return_type': 'void'},
\     'setFlags': { 'signature': 'int $flags | void', 'return_type': 'void'},
\     'setName': { 'signature': 'string $queue_name | void', 'return_type': 'void'},
\     'unbind': { 'signature': 'string $exchange_name, string $routing_key | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'APCIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $cache [, mixed $search = null [, int $format [, int $chunk_size = 100 [, int $list]]]]', 'return_type': ''},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getTotalCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTotalHits': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTotalSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'key': { 'signature': 'void | string', 'return_type': 'string'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
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
\     '__construct': { 'signature': '[ mixed $input [, int $flags = 0 [, string $iterator_class = "ArrayIterator"]]]', 'return_type': ''},
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
\'Cairo': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'availableFonts': { 'signature': 'void | array', 'return_type': 'array'},
\     'availableSurfaces': { 'signature': 'void | array', 'return_type': 'array'},
\     'statusToString': { 'signature': 'int $status | string', 'return_type': 'string'},
\     'version': { 'signature': 'void | int', 'return_type': 'int'},
\     'versionString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\},
\'CairoAntialias': {
\   'constants': {
\     'MODE_DEFAULT': '0',
\     'MODE_NONE': '1',
\     'MODE_GRAY': '2',
\     'MODE_SUBPIXEL': '3',
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
\'CairoContent': {
\   'constants': {
\     'COLOR': '4096',
\     'ALPHA': '8192',
\     'COLOR_ALPHA': '12288',
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
\'CairoContext': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'appendPath': { 'signature': 'CairoPath $path | void', 'return_type': 'void'},
\     'arc': { 'signature': 'float $x, float $y, float $radius, float $angle1, float $angle2 | void', 'return_type': 'void'},
\     'arcNegative': { 'signature': 'float $x, float $y, float $radius, float $angle1, float $angle2 | void', 'return_type': 'void'},
\     'clip': { 'signature': 'void | void', 'return_type': 'void'},
\     'clipExtents': { 'signature': 'void | array', 'return_type': 'array'},
\     'clipPreserve': { 'signature': 'void | void', 'return_type': 'void'},
\     'clipRectangleList': { 'signature': 'void | array', 'return_type': 'array'},
\     'closePath': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'CairoSurface $surface', 'return_type': ''},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'copyPath': { 'signature': 'void | CairoPath', 'return_type': 'CairoPath'},
\     'copyPathFlat': { 'signature': 'void | CairoPath', 'return_type': 'CairoPath'},
\     'curveTo': { 'signature': 'float $x1, float $y1, float $x2, float $y2, float $x3, float $y3 | void', 'return_type': 'void'},
\     'deviceToUser': { 'signature': 'float $x, float $y | array', 'return_type': 'array'},
\     'deviceToUserDistance': { 'signature': 'float $x, float $y | array', 'return_type': 'array'},
\     'fill': { 'signature': 'void | void', 'return_type': 'void'},
\     'fillExtents': { 'signature': 'void | array', 'return_type': 'array'},
\     'fillPreserve': { 'signature': 'void | void', 'return_type': 'void'},
\     'fontExtents': { 'signature': 'void | array', 'return_type': 'array'},
\     'getAntialias': { 'signature': 'void | int', 'return_type': 'int'},
\     'getCurrentPoint': { 'signature': 'void | array', 'return_type': 'array'},
\     'getDash': { 'signature': 'void | array', 'return_type': 'array'},
\     'getDashCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFillRule': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFontFace': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFontMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getGroupTarget': { 'signature': 'void | void', 'return_type': 'void'},
\     'getLineCap': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLineJoin': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLineWidth': { 'signature': 'void | float', 'return_type': 'float'},
\     'getMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getMiterLimit': { 'signature': 'void | float', 'return_type': 'float'},
\     'getOperator': { 'signature': 'void | int', 'return_type': 'int'},
\     'getScaledFont': { 'signature': 'void | void', 'return_type': 'void'},
\     'getSource': { 'signature': 'void | void', 'return_type': 'void'},
\     'getTarget': { 'signature': 'void | void', 'return_type': 'void'},
\     'getTolerance': { 'signature': 'void | float', 'return_type': 'float'},
\     'glyphPath': { 'signature': 'array $glyphs | void', 'return_type': 'void'},
\     'hasCurrentPoint': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'identityMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'inFill': { 'signature': 'string $x, string $y | bool', 'return_type': 'bool'},
\     'inStroke': { 'signature': 'string $x, string $y | bool', 'return_type': 'bool'},
\     'lineTo': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'mask': { 'signature': 'string $pattern | void', 'return_type': 'void'},
\     'maskSurface': { 'signature': 'string $surface [, string $x [, string $y]] | void', 'return_type': 'void'},
\     'moveTo': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'newPath': { 'signature': 'void | void', 'return_type': 'void'},
\     'newSubPath': { 'signature': 'void | void', 'return_type': 'void'},
\     'paint': { 'signature': 'void | void', 'return_type': 'void'},
\     'paintWithAlpha': { 'signature': 'string $alpha | void', 'return_type': 'void'},
\     'pathExtents': { 'signature': 'void | array', 'return_type': 'array'},
\     'popGroup': { 'signature': 'void | void', 'return_type': 'void'},
\     'popGroupToSource': { 'signature': 'void | void', 'return_type': 'void'},
\     'pushGroup': { 'signature': 'void | void', 'return_type': 'void'},
\     'pushGroupWithContent': { 'signature': 'string $content | void', 'return_type': 'void'},
\     'rectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'relCurveTo': { 'signature': 'string $x1, string $y1, string $x2, string $y2, string $x3, string $y3 | void', 'return_type': 'void'},
\     'relLineTo': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'relMoveTo': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'resetClip': { 'signature': 'void | void', 'return_type': 'void'},
\     'restore': { 'signature': 'void | void', 'return_type': 'void'},
\     'rotate': { 'signature': 'string $angle | void', 'return_type': 'void'},
\     'save': { 'signature': 'void | void', 'return_type': 'void'},
\     'scale': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'selectFontFace': { 'signature': 'string $family [, string $slant [, string $weight]] | void', 'return_type': 'void'},
\     'setAntialias': { 'signature': '[ string $antialias] | void', 'return_type': 'void'},
\     'setDash': { 'signature': 'string $dashes [, string $offset] | void', 'return_type': 'void'},
\     'setFillRule': { 'signature': 'string $setting | void', 'return_type': 'void'},
\     'setFontFace': { 'signature': 'CairoFontFace $fontface | void', 'return_type': 'void'},
\     'setFontMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'setFontOptions': { 'signature': 'string $fontoptions | void', 'return_type': 'void'},
\     'setFontSize': { 'signature': 'string $size | void', 'return_type': 'void'},
\     'setLineCap': { 'signature': 'string $setting | void', 'return_type': 'void'},
\     'setLineJoin': { 'signature': 'string $setting | void', 'return_type': 'void'},
\     'setLineWidth': { 'signature': 'string $width | void', 'return_type': 'void'},
\     'setMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'setMiterLimit': { 'signature': 'string $limit | void', 'return_type': 'void'},
\     'setOperator': { 'signature': 'string $setting | void', 'return_type': 'void'},
\     'setScaledFont': { 'signature': 'string $scaledfont | void', 'return_type': 'void'},
\     'setSource': { 'signature': 'string $pattern | void', 'return_type': 'void'},
\     'setSourceRGB': { 'signature': 'string $red, string $green, string $blue | void', 'return_type': 'void'},
\     'setSourceRGBA': { 'signature': 'string $red, string $green, string $blue, string $alpha | void', 'return_type': 'void'},
\     'setSourceSurface': { 'signature': 'string $surface [, string $x [, string $y]] | void', 'return_type': 'void'},
\     'setTolerance': { 'signature': 'string $tolerance | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'showText': { 'signature': 'string $text | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'stroke': { 'signature': 'void | void', 'return_type': 'void'},
\     'strokeExtents': { 'signature': 'void | array', 'return_type': 'array'},
\     'strokePreserve': { 'signature': 'void | void', 'return_type': 'void'},
\     'textExtents': { 'signature': 'string $text | array', 'return_type': 'array'},
\     'textPath': { 'signature': 'string $string | void', 'return_type': 'void'},
\     'transform': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'translate': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'userToDevice': { 'signature': 'string $x, string $y | array', 'return_type': 'array'},
\     'userToDeviceDistance': { 'signature': 'string $x, string $y | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'CairoException': {
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
\'CairoExtend': {
\   'constants': {
\     'NONE': '0',
\     'REPEAT': '1',
\     'REFLECT': '2',
\     'PAD': '3',
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
\'CairoFillRule': {
\   'constants': {
\     'WINDING': '0',
\     'EVEN_ODD': '1',
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
\'CairoFilter': {
\   'constants': {
\     'FAST': '0',
\     'GOOD': '1',
\     'BEST': '2',
\     'NEAREST': '3',
\     'BILINEAR': '4',
\     'GAUSSIAN': '5',
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
\'CairoFontFace': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoFontOptions': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'equal': { 'signature': 'string $other | bool', 'return_type': 'bool'},
\     'getAntialias': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHintMetrics': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHintStyle': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSubpixelOrder': { 'signature': 'void | int', 'return_type': 'int'},
\     'hash': { 'signature': 'void | int', 'return_type': 'int'},
\     'merge': { 'signature': 'string $other | void', 'return_type': 'void'},
\     'setAntialias': { 'signature': 'string $antialias | void', 'return_type': 'void'},
\     'setHintMetrics': { 'signature': 'string $hint_metrics | void', 'return_type': 'void'},
\     'setHintStyle': { 'signature': 'string $hint_style | void', 'return_type': 'void'},
\     'setSubpixelOrder': { 'signature': 'string $subpixel_order | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoFontSlant': {
\   'constants': {
\     'NORMAL': '0',
\     'ITALIC': '1',
\     'OBLIQUE': '2',
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
\'CairoFontType': {
\   'constants': {
\     'TOY': '0',
\     'FT': '1',
\     'WIN32': '2',
\     'QUARTZ': '3',
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
\'CairoFontWeight': {
\   'constants': {
\     'NORMAL': '0',
\     'BOLD': '1',
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
\'CairoFormat': {
\   'constants': {
\     'ARGB32': '0',
\     'RGB24': '1',
\     'A8': '2',
\     'A1': '3',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'strideForWidth': { 'signature': 'int $format, int $width | int', 'return_type': 'int'},
\   },
\},
\'CairoGradientPattern': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addColorStopRgb': { 'signature': 'string $offset, string $red, string $green, string $blue | void', 'return_type': 'void'},
\     'addColorStopRgba': { 'signature': 'string $offset, string $red, string $green, string $blue, string $alpha | void', 'return_type': 'void'},
\     'getColorStopCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getColorStopRgba': { 'signature': 'string $index | array', 'return_type': 'array'},
\     'getExtend': { 'signature': 'void | int', 'return_type': 'int'},
\     'setExtend': { 'signature': 'int $extend | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'setMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoHintMetrics': {
\   'constants': {
\     'METRICS_DEFAULT': '0',
\     'METRICS_OFF': '1',
\     'METRICS_ON': '2',
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
\'CairoHintStyle': {
\   'constants': {
\     'STYLE_DEFAULT': '0',
\     'STYLE_NONE': '1',
\     'STYLE_SLIGHT': '2',
\     'STYLE_MEDIUM': '3',
\     'STYLE_FULL': '4',
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
\'CairoImageSurface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getData': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFormat': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHeight': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStride': { 'signature': 'void | int', 'return_type': 'int'},
\     'getWidth': { 'signature': 'void | int', 'return_type': 'int'},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'createSimilar': { 'signature': 'CairoSurface $other, int $content, string $width, string $height | void', 'return_type': 'void'},
\     'finish': { 'signature': 'void | void', 'return_type': 'void'},
\     'flush': { 'signature': 'void | void', 'return_type': 'void'},
\     'getContent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDeviceOffset': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'markDirty': { 'signature': 'void | void', 'return_type': 'void'},
\     'markDirtyRectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'setDeviceOffset': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'setFallbackResolution': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'writeToPng': { 'signature': 'string $file | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createForData': { 'signature': 'string $data, int $format, int $width, int $height [, int $stride = -1] | void', 'return_type': 'void'},
\     'createFromPng': { 'signature': 'string $file | CairoImageSurface', 'return_type': 'CairoImageSurface'},
\   },
\},
\'CairoLineCap': {
\   'constants': {
\     'BUTT': '0',
\     'ROUND': '1',
\     'SQUARE': '2',
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
\'CairoLineJoin': {
\   'constants': {
\     'MITER': '0',
\     'ROUND': '1',
\     'BEVEL': '2',
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
\'CairoLinearGradient': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'float $x0, float $y0, float $x1, float $y1', 'return_type': ''},
\     'getPoints': { 'signature': 'void | array', 'return_type': 'array'},
\     'addColorStopRgb': { 'signature': 'string $offset, string $red, string $green, string $blue | void', 'return_type': 'void'},
\     'addColorStopRgba': { 'signature': 'string $offset, string $red, string $green, string $blue, string $alpha | void', 'return_type': 'void'},
\     'getColorStopCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getColorStopRgba': { 'signature': 'string $index | array', 'return_type': 'array'},
\     'getExtend': { 'signature': 'void | int', 'return_type': 'int'},
\     'setExtend': { 'signature': 'int $extend | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'CairoMatrix': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ float $xx = 1.0 [, float $yx = 0.0 [, float $xy = 0.0 [, float $yy = 1.0 [, float $x0 = 0.0 [, float $y0 = 0.0]]]]]]', 'return_type': ''},
\     'invert': { 'signature': 'void | void', 'return_type': 'void'},
\     'rotate': { 'signature': 'string $sx, string $sy | void', 'return_type': 'void'},
\     'scale': { 'signature': 'float $sx, float $sy | void', 'return_type': 'void'},
\     'transformDistance': { 'signature': 'string $dx, string $dy | array', 'return_type': 'array'},
\     'transformPoint': { 'signature': 'string $dx, string $dy | array', 'return_type': 'array'},
\     'translate': { 'signature': 'string $tx, string $ty | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'initIdentity': { 'signature': 'void | void', 'return_type': 'void'},
\     'initRotate': { 'signature': 'float $radians | void', 'return_type': 'void'},
\     'initScale': { 'signature': 'float $sx, float $sy | void', 'return_type': 'void'},
\     'initTranslate': { 'signature': 'float $tx, float $ty | void', 'return_type': 'void'},
\     'multiply': { 'signature': 'CairoMatrix $matrix1, CairoMatrix $matrix2 | CairoMatrix', 'return_type': 'CairoMatrix'},
\   },
\},
\'CairoOperator': {
\   'constants': {
\     'CLEAR': '0',
\     'SOURCE': '1',
\     'OVER': '2',
\     'IN': '3',
\     'OUT': '4',
\     'ATOP': '5',
\     'DEST': '6',
\     'DEST_OVER': '7',
\     'DEST_IN': '8',
\     'DEST_OUT': '9',
\     'DEST_ATOP': '10',
\     'XOR': '11',
\     'ADD': '12',
\     'SATURATE': '13',
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
\'CairoPath': {
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
\'CairoPattern': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'setMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoPatternType': {
\   'constants': {
\     'SOLID': '0',
\     'SURFACE': '1',
\     'LINEAR': '2',
\     'RADIAL': '3',
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
\'CairoPdfSurface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'setSize': { 'signature': 'string $width, string $height | void', 'return_type': 'void'},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'createSimilar': { 'signature': 'CairoSurface $other, int $content, string $width, string $height | void', 'return_type': 'void'},
\     'finish': { 'signature': 'void | void', 'return_type': 'void'},
\     'flush': { 'signature': 'void | void', 'return_type': 'void'},
\     'getContent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDeviceOffset': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'markDirty': { 'signature': 'void | void', 'return_type': 'void'},
\     'markDirtyRectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'setDeviceOffset': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'setFallbackResolution': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'writeToPng': { 'signature': 'string $file | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'CairoPsLevel': {
\   'constants': {
\     'LEVEL_2': '0',
\     'LEVEL_3': '1',
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
\'CairoPsSurface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'dscBeginPageSetup': { 'signature': 'void | void', 'return_type': 'void'},
\     'dscBeginSetup': { 'signature': 'void | void', 'return_type': 'void'},
\     'dscComment': { 'signature': 'string $comment | void', 'return_type': 'void'},
\     'getEps': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'restrictToLevel': { 'signature': 'string $level | void', 'return_type': 'void'},
\     'setEps': { 'signature': 'string $level | void', 'return_type': 'void'},
\     'setSize': { 'signature': 'string $width, string $height | void', 'return_type': 'void'},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'createSimilar': { 'signature': 'CairoSurface $other, int $content, string $width, string $height | void', 'return_type': 'void'},
\     'finish': { 'signature': 'void | void', 'return_type': 'void'},
\     'flush': { 'signature': 'void | void', 'return_type': 'void'},
\     'getContent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDeviceOffset': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'markDirty': { 'signature': 'void | void', 'return_type': 'void'},
\     'markDirtyRectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'setDeviceOffset': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'setFallbackResolution': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'writeToPng': { 'signature': 'string $file | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getLevels': { 'signature': 'void | array', 'return_type': 'array'},
\     'levelToString': { 'signature': 'int $level | string', 'return_type': 'string'},
\   },
\},
\'CairoRadialGradient': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'float $x0, float $y0, float $r0, float $x1, float $y1, float $r1', 'return_type': ''},
\     'getCircles': { 'signature': 'void | array', 'return_type': 'array'},
\     'addColorStopRgb': { 'signature': 'string $offset, string $red, string $green, string $blue | void', 'return_type': 'void'},
\     'addColorStopRgba': { 'signature': 'string $offset, string $red, string $green, string $blue, string $alpha | void', 'return_type': 'void'},
\     'getColorStopCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getColorStopRgba': { 'signature': 'string $index | array', 'return_type': 'array'},
\     'getExtend': { 'signature': 'void | int', 'return_type': 'int'},
\     'setExtend': { 'signature': 'int $extend | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'CairoScaledFont': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'CairoFontFace $font_face, CairoMatrix $matrix, CairoMatrix $ctm, CairoFontOptions $options', 'return_type': ''},
\     'extents': { 'signature': 'void | array', 'return_type': 'array'},
\     'getCtm': { 'signature': 'void | CairoMatrix', 'return_type': 'CairoMatrix'},
\     'getFontFace': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFontMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getScaleMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'glyphExtents': { 'signature': 'string $glyphs | array', 'return_type': 'array'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'textExtents': { 'signature': 'string $text | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'CairoSolidPattern': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getRgba': { 'signature': 'void | array', 'return_type': 'array'},
\     'getMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'setMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoStatus': {
\   'constants': {
\     'SUCCESS': '0',
\     'NO_MEMORY': '1',
\     'INVALID_RESTORE': '2',
\     'INVALID_POP_GROUP': '3',
\     'NO_CURRENT_POINT': '4',
\     'INVALID_MATRIX': '5',
\     'INVALID_STATUS': '6',
\     'NULL_POINTER': '7',
\     'INVALID_STRING': '8',
\     'INVALID_PATH_DATA': '9',
\     'READ_ERROR': '10',
\     'WRITE_ERROR': '11',
\     'SURFACE_FINISHED': '12',
\     'SURFACE_TYPE_MISMATCH': '13',
\     'PATTERN_TYPE_MISMATCH': '14',
\     'INVALID_CONTENT': '15',
\     'INVALID_FORMAT': '16',
\     'INVALID_VISUAL': '17',
\     'FILE_NOT_FOUND': '18',
\     'INVALID_DASH': '19',
\     'INVALID_DSC_COMMENT': '20',
\     'INVALID_INDEX': '21',
\     'CLIP_NOT_REPRESENTABLE': '22',
\     'TEMP_FILE_ERROR': '23',
\     'INVALID_STRIDE': '24',
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
\'CairoSubpixelOrder': {
\   'constants': {
\     'ORDER_DEFAULT': '0',
\     'ORDER_RGB': '1',
\     'ORDER_BGR': '2',
\     'ORDER_VRGB': '3',
\     'ORDER_VBGR': '4',
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
\'CairoSurface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'createSimilar': { 'signature': 'CairoSurface $other, int $content, string $width, string $height | void', 'return_type': 'void'},
\     'finish': { 'signature': 'void | void', 'return_type': 'void'},
\     'flush': { 'signature': 'void | void', 'return_type': 'void'},
\     'getContent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDeviceOffset': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'markDirty': { 'signature': 'void | void', 'return_type': 'void'},
\     'markDirtyRectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'setDeviceOffset': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'setFallbackResolution': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'writeToPng': { 'signature': 'string $file | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'CairoSurfacePattern': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getExtend': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFilter': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSurface': { 'signature': 'void | void', 'return_type': 'void'},
\     'setExtend': { 'signature': 'int $extend | void', 'return_type': 'void'},
\     'setFilter': { 'signature': 'string $filter | void', 'return_type': 'void'},
\     'getMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'setMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoSurfaceType': {
\   'constants': {
\     'IMAGE': '0',
\     'PDF': '1',
\     'PS': '2',
\     'XLIB': '3',
\     'XCB': '4',
\     'GLITZ': '5',
\     'QUARTZ': '6',
\     'WIN32': '7',
\     'BEOS': '8',
\     'DIRECTFB': '9',
\     'SVG': '10',
\     'OS2': '11',
\     'WIN32_PRINTING': '12',
\     'QUARTZ_IMAGE': '13',
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
\'CairoSvgSurface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'restrictToVersion': { 'signature': 'string $version | void', 'return_type': 'void'},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'createSimilar': { 'signature': 'CairoSurface $other, int $content, string $width, string $height | void', 'return_type': 'void'},
\     'finish': { 'signature': 'void | void', 'return_type': 'void'},
\     'flush': { 'signature': 'void | void', 'return_type': 'void'},
\     'getContent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDeviceOffset': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'markDirty': { 'signature': 'void | void', 'return_type': 'void'},
\     'markDirtyRectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'setDeviceOffset': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'setFallbackResolution': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'writeToPng': { 'signature': 'string $file | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getVersions': { 'signature': 'void | array', 'return_type': 'array'},
\     'versionToString': { 'signature': 'int $version | string', 'return_type': 'string'},
\   },
\},
\'CairoSvgVersion': {
\   'constants': {
\     'VERSION_1_1': '0',
\     'VERSION_1_2': '1',
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
\'CairoToyFontFace': {
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
\'Closure': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'bindTo': { 'signature': 'object $newthis [, mixed $newscope = ''static''] | Closure', 'return_type': 'Closure'},
\   },
\   'static_methods': {
\     'bind': { 'signature': 'Closure $closure, object $newthis [, mixed $newscope = ''static''] | Closure', 'return_type': 'Closure'},
\   },
\},
\'Collator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $locale', 'return_type': ''},
\     'asort': { 'signature': 'array &$arr [, int $sort_flag] | bool', 'return_type': 'bool'},
\     'compare': { 'signature': 'string $str1, string $str2 | int', 'return_type': 'int'},
\     'getAttribute': { 'signature': 'int $attr | int', 'return_type': 'int'},
\     'getErrorCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getErrorMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLocale': { 'signature': '[ int $type] | string', 'return_type': 'string'},
\     'getSortKey': { 'signature': 'string $str | string', 'return_type': 'string'},
\     'getStrength': { 'signature': 'void | int', 'return_type': 'int'},
\     'setAttribute': { 'signature': 'int $attr, int $val | bool', 'return_type': 'bool'},
\     'setStrength': { 'signature': 'int $strength | bool', 'return_type': 'bool'},
\     'sortWithSortKeys': { 'signature': 'array &$arr | bool', 'return_type': 'bool'},
\     'sort': { 'signature': 'array &$arr [, int $sort_flag] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'create': { 'signature': 'string $locale | Collator', 'return_type': 'Collator'},
\   },
\},
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
\'DOMAttr': {
\   'constants': {
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': 'string'},
\     'ownerElement': { 'initializer': '', 'type': 'DOMElement'},
\     'schemaTypeInfo': { 'initializer': '', 'type': 'bool'},
\     'specified': { 'initializer': '', 'type': 'bool'},
\     'value': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $name [, string $value]', 'return_type': ''},
\     'isId': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMCdataSection': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $value', 'return_type': ''},
\     'isWhitespaceInElementContent': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'splitText': { 'signature': 'int $offset | DOMText', 'return_type': 'DOMText'},
\   },
\   'static_methods': {
\   },
\},
\'DOMCharacterData': {
\   'constants': {
\   },
\   'properties': {
\     'data': { 'initializer': '', 'type': 'string'},
\     'length': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'appendData': { 'signature': 'string $data | void', 'return_type': 'void'},
\     'deleteData': { 'signature': 'int $offset, int $count | void', 'return_type': 'void'},
\     'insertData': { 'signature': 'int $offset, string $data | void', 'return_type': 'void'},
\     'replaceData': { 'signature': 'int $offset, int $count, string $data | void', 'return_type': 'void'},
\     'substringData': { 'signature': 'int $offset, int $count | string', 'return_type': 'string'},
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMComment': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $value]', 'return_type': ''},
\     'appendData': { 'signature': 'string $data | void', 'return_type': 'void'},
\     'deleteData': { 'signature': 'int $offset, int $count | void', 'return_type': 'void'},
\     'insertData': { 'signature': 'int $offset, string $data | void', 'return_type': 'void'},
\     'replaceData': { 'signature': 'int $offset, int $count, string $data | void', 'return_type': 'void'},
\     'substringData': { 'signature': 'int $offset, int $count | string', 'return_type': 'string'},
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMDocument': {
\   'constants': {
\   },
\   'properties': {
\     'actualEncoding': { 'initializer': '', 'type': 'string'},
\     'config': { 'initializer': '', 'type': 'DOMConfiguration'},
\     'doctype': { 'initializer': '', 'type': 'DOMDocumentType'},
\     'documentElement': { 'initializer': '', 'type': 'DOMElement'},
\     'documentURI': { 'initializer': '', 'type': 'string'},
\     'encoding': { 'initializer': '', 'type': 'string'},
\     'formatOutput': { 'initializer': '', 'type': 'bool'},
\     'implementation': { 'initializer': '', 'type': 'DOMImplementation'},
\     'preserveWhiteSpace': { 'initializer': 'true', 'type': 'bool'},
\     'recover': { 'initializer': '', 'type': 'bool'},
\     'resolveExternals': { 'initializer': '', 'type': 'bool'},
\     'standalone': { 'initializer': '', 'type': 'bool'},
\     'strictErrorChecking': { 'initializer': 'true', 'type': 'bool'},
\     'substituteEntities': { 'initializer': '', 'type': 'bool'},
\     'validateOnParse': { 'initializer': 'false', 'type': 'bool'},
\     'version': { 'initializer': '', 'type': 'string'},
\     'xmlEncoding': { 'initializer': '', 'type': 'string'},
\     'xmlStandalone': { 'initializer': '', 'type': 'bool'},
\     'xmlVersion': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $version [, string $encoding]]', 'return_type': ''},
\     'createAttribute': { 'signature': 'string $name | DOMAttr', 'return_type': 'DOMAttr'},
\     'createAttributeNS': { 'signature': 'string $namespaceURI, string $qualifiedName | DOMAttr', 'return_type': 'DOMAttr'},
\     'createCDATASection': { 'signature': 'string $data | DOMCDATASection', 'return_type': 'DOMCDATASection'},
\     'createComment': { 'signature': 'string $data | DOMComment', 'return_type': 'DOMComment'},
\     'createDocumentFragment': { 'signature': 'void | DOMDocumentFragment', 'return_type': 'DOMDocumentFragment'},
\     'createElement': { 'signature': 'string $name [, string $value] | DOMElement', 'return_type': 'DOMElement'},
\     'createElementNS': { 'signature': 'string $namespaceURI, string $qualifiedName [, string $value] | DOMElement', 'return_type': 'DOMElement'},
\     'createEntityReference': { 'signature': 'string $name | DOMEntityReference', 'return_type': 'DOMEntityReference'},
\     'createProcessingInstruction': { 'signature': 'string $target [, string $data] | DOMProcessingInstruction', 'return_type': 'DOMProcessingInstruction'},
\     'createTextNode': { 'signature': 'string $content | DOMText', 'return_type': 'DOMText'},
\     'getElementById': { 'signature': 'string $elementId | DOMElement', 'return_type': 'DOMElement'},
\     'getElementsByTagName': { 'signature': 'string $name | DOMNodeList', 'return_type': 'DOMNodeList'},
\     'getElementsByTagNameNS': { 'signature': 'string $namespaceURI, string $localName | DOMNodeList', 'return_type': 'DOMNodeList'},
\     'importNode': { 'signature': 'DOMNode $importedNode [, bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'load': { 'signature': 'string $filename [, int $options = 0] | mixed', 'return_type': 'mixed'},
\     'loadHTML': { 'signature': 'string $source | bool', 'return_type': 'bool'},
\     'loadHTMLFile': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'loadXML': { 'signature': 'string $source [, int $options = 0] | mixed', 'return_type': 'mixed'},
\     'normalizeDocument': { 'signature': 'void | void', 'return_type': 'void'},
\     'registerNodeClass': { 'signature': 'string $baseclass, string $extendedclass | bool', 'return_type': 'bool'},
\     'relaxNGValidate': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'relaxNGValidateSource': { 'signature': 'string $source | bool', 'return_type': 'bool'},
\     'save': { 'signature': 'string $filename [, int $options] | int', 'return_type': 'int'},
\     'saveHTML': { 'signature': '[ DOMNode $node = NULL] | string', 'return_type': 'string'},
\     'saveHTMLFile': { 'signature': 'string $filename | int', 'return_type': 'int'},
\     'saveXML': { 'signature': '[ DOMNode $node [, int $options]] | string', 'return_type': 'string'},
\     'schemaValidate': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'schemaValidateSource': { 'signature': 'string $source | bool', 'return_type': 'bool'},
\     'validate': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'xinclude': { 'signature': '[ int $options] | int', 'return_type': 'int'},
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMDocumentFragment': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'appendXML': { 'signature': 'string $data | bool', 'return_type': 'bool'},
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMDocumentType': {
\   'constants': {
\   },
\   'properties': {
\     'publicId': { 'initializer': '', 'type': 'string'},
\     'systemId': { 'initializer': '', 'type': 'string'},
\     'name': { 'initializer': '', 'type': 'string'},
\     'entities': { 'initializer': '', 'type': 'DOMNamedNodeMap'},
\     'notations': { 'initializer': '', 'type': 'DOMNamedNodeMap'},
\     'internalSubset': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMElement': {
\   'constants': {
\   },
\   'properties': {
\     'schemaTypeInfo': { 'initializer': '', 'type': 'bool'},
\     'tagName': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $name [, string $value [, string $namespaceURI]]', 'return_type': ''},
\     'getAttribute': { 'signature': 'string $name | string', 'return_type': 'string'},
\     'getAttributeNode': { 'signature': 'string $name | DOMAttr', 'return_type': 'DOMAttr'},
\     'getAttributeNodeNS': { 'signature': 'string $namespaceURI, string $localName | DOMAttr', 'return_type': 'DOMAttr'},
\     'getAttributeNS': { 'signature': 'string $namespaceURI, string $localName | string', 'return_type': 'string'},
\     'getElementsByTagName': { 'signature': 'string $name | DOMNodeList', 'return_type': 'DOMNodeList'},
\     'getElementsByTagNameNS': { 'signature': 'string $namespaceURI, string $localName | DOMNodeList', 'return_type': 'DOMNodeList'},
\     'hasAttribute': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'hasAttributeNS': { 'signature': 'string $namespaceURI, string $localName | bool', 'return_type': 'bool'},
\     'removeAttribute': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'removeAttributeNode': { 'signature': 'DOMAttr $oldnode | bool', 'return_type': 'bool'},
\     'removeAttributeNS': { 'signature': 'string $namespaceURI, string $localName | bool', 'return_type': 'bool'},
\     'setAttribute': { 'signature': 'string $name, string $value | DOMAttr', 'return_type': 'DOMAttr'},
\     'setAttributeNode': { 'signature': 'DOMAttr $attr | DOMAttr', 'return_type': 'DOMAttr'},
\     'setAttributeNodeNS': { 'signature': 'DOMAttr $attr | DOMAttr', 'return_type': 'DOMAttr'},
\     'setAttributeNS': { 'signature': 'string $namespaceURI, string $qualifiedName, string $value | void', 'return_type': 'void'},
\     'setIdAttribute': { 'signature': 'string $name, bool $isId | void', 'return_type': 'void'},
\     'setIdAttributeNode': { 'signature': 'DOMAttr $attr, bool $isId | void', 'return_type': 'void'},
\     'setIdAttributeNS': { 'signature': 'string $namespaceURI, string $localName, bool $isId | void', 'return_type': 'void'},
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMEntity': {
\   'constants': {
\   },
\   'properties': {
\     'publicId': { 'initializer': '', 'type': 'string'},
\     'systemId': { 'initializer': '', 'type': 'string'},
\     'notationName': { 'initializer': '', 'type': 'string'},
\     'actualEncoding': { 'initializer': '', 'type': 'string'},
\     'encoding': { 'initializer': '', 'type': 'string'},
\     'version': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMEntityReference': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $name', 'return_type': ''},
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMException': {
\   'constants': {
\   },
\   'properties': {
\     'code': { 'initializer': '', 'type': 'int'},
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
\'DOMImplementation': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'createDocument': { 'signature': '[ string $namespaceURI = NULL [, string $qualifiedName = NULL [, DOMDocumentType $doctype = NULL]]] | DOMDocument', 'return_type': 'DOMDocument'},
\     'createDocumentType': { 'signature': '[ string $qualifiedName = NULL [, string $publicId = NULL [, string $systemId = NULL]]] | DOMDocumentType', 'return_type': 'DOMDocumentType'},
\     'hasFeature': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'DOMNamedNodeMap': {
\   'constants': {
\   },
\   'properties': {
\     'length': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getNamedItem': { 'signature': 'string $name | DOMNode', 'return_type': 'DOMNode'},
\     'getNamedItemNS': { 'signature': 'string $namespaceURI, string $localName | DOMNode', 'return_type': 'DOMNode'},
\     'item': { 'signature': 'int $index | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMNode': {
\   'constants': {
\   },
\   'properties': {
\     'nodeName': { 'initializer': '', 'type': 'string'},
\     'nodeValue': { 'initializer': '', 'type': 'string'},
\     'nodeType': { 'initializer': '', 'type': 'int'},
\     'parentNode': { 'initializer': '', 'type': 'DOMNode'},
\     'childNodes': { 'initializer': '', 'type': 'DOMNodeList'},
\     'firstChild': { 'initializer': '', 'type': 'DOMNode'},
\     'lastChild': { 'initializer': '', 'type': 'DOMNode'},
\     'previousSibling': { 'initializer': '', 'type': 'DOMNode'},
\     'nextSibling': { 'initializer': '', 'type': 'DOMNode'},
\     'attributes': { 'initializer': '', 'type': 'DOMNamedNodeMap'},
\     'ownerDocument': { 'initializer': '', 'type': 'DOMDocument'},
\     'namespaceURI': { 'initializer': '', 'type': 'string'},
\     'prefix': { 'initializer': '', 'type': 'string'},
\     'localName': { 'initializer': '', 'type': 'string'},
\     'baseURI': { 'initializer': '', 'type': 'string'},
\     'textContent': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMNodeList': {
\   'constants': {
\   },
\   'properties': {
\     'length': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'item': { 'signature': 'int $index | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMNotation': {
\   'constants': {
\   },
\   'properties': {
\     'publicId': { 'initializer': '', 'type': 'string'},
\     'systemId': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMProcessingInstruction': {
\   'constants': {
\   },
\   'properties': {
\     'target': { 'initializer': '', 'type': 'string'},
\     'data': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $name [, string $value]', 'return_type': ''},
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMText': {
\   'constants': {
\   },
\   'properties': {
\     'wholeText': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $value]', 'return_type': ''},
\     'isWhitespaceInElementContent': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'splitText': { 'signature': 'int $offset | DOMText', 'return_type': 'DOMText'},
\     'appendChild': { 'signature': 'DOMNode $newnode | DOMNode', 'return_type': 'DOMNode'},
\     'C14N': { 'signature': '[ bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | string', 'return_type': 'string'},
\     'C14NFile': { 'signature': 'string $uri [, bool $exclusive [, bool $with_comments [, array $xpath [, array $ns_prefixes]]]] | int', 'return_type': 'int'},
\     'cloneNode': { 'signature': '[ bool $deep] | DOMNode', 'return_type': 'DOMNode'},
\     'getLineNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNodePath': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasAttributes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasChildNodes': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'insertBefore': { 'signature': 'DOMNode $newnode [, DOMNode $refnode] | DOMNode', 'return_type': 'DOMNode'},
\     'isDefaultNamespace': { 'signature': 'string $namespaceURI | bool', 'return_type': 'bool'},
\     'isSameNode': { 'signature': 'DOMNode $node | bool', 'return_type': 'bool'},
\     'isSupported': { 'signature': 'string $feature, string $version | bool', 'return_type': 'bool'},
\     'lookupNamespaceURI': { 'signature': 'string $prefix | string', 'return_type': 'string'},
\     'lookupPrefix': { 'signature': 'string $namespaceURI | string', 'return_type': 'string'},
\     'normalize': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeChild': { 'signature': 'DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\     'replaceChild': { 'signature': 'DOMNode $newnode, DOMNode $oldnode | DOMNode', 'return_type': 'DOMNode'},
\   },
\   'static_methods': {
\   },
\},
\'DOMXPath': {
\   'constants': {
\   },
\   'properties': {
\     'document': { 'initializer': '', 'type': 'DOMDocument'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'DOMDocument $doc', 'return_type': ''},
\     'evaluate': { 'signature': 'string $expression [, DOMNode $contextnode [, bool $registerNodeNS = true]] | mixed', 'return_type': 'mixed'},
\     'query': { 'signature': 'string $expression [, DOMNode $contextnode [, bool $registerNodeNS = true]] | DOMNodeList', 'return_type': 'DOMNodeList'},
\     'registerNamespace': { 'signature': 'string $prefix, string $namespaceURI | bool', 'return_type': 'bool'},
\     'registerPhpFunctions': { 'signature': '[ mixed $restrict] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'DateInterval': {
\   'constants': {
\   },
\   'properties': {
\     'y': { 'initializer': '', 'type': 'integer'},
\     'm': { 'initializer': '', 'type': 'integer'},
\     'd': { 'initializer': '', 'type': 'integer'},
\     'h': { 'initializer': '', 'type': 'integer'},
\     'i': { 'initializer': '', 'type': 'integer'},
\     's': { 'initializer': '', 'type': 'integer'},
\     'invert': { 'initializer': '', 'type': 'integer'},
\     'days': { 'initializer': '', 'type': 'mixed'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $interval_spec', 'return_type': ''},
\     'format': { 'signature': 'string $format | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'createFromDateString': { 'signature': 'string $time | DateInterval', 'return_type': 'DateInterval'},
\   },
\},
\'DatePeriod': {
\   'constants': {
\     'EXCLUDE_START_DATE': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $isostr [, int $options]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'DateTime': {
\   'constants': {
\     'ATOM': '"Y-m-d\TH:i:sP"',
\     'COOKIE': '"l, d-M-y H:i:s T"',
\     'ISO8601': '"Y-m-d\TH:i:sO"',
\     'RFC822': '"D, d M y H:i:s O"',
\     'RFC850': '"l, d-M-y H:i:s T"',
\     'RFC1036': '"D, d M y H:i:s O"',
\     'RFC1123': '"D, d M Y H:i:s O"',
\     'RFC2822': '"D, d M Y H:i:s O"',
\     'RFC3339': '"Y-m-d\TH:i:sP"',
\     'RSS': '"D, d M Y H:i:s O"',
\     'W3C': '"Y-m-d\TH:i:sP"',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $time = "now" [, DateTimeZone $timezone = NULL]]', 'return_type': ''},
\     'add': { 'signature': 'DateInterval $interval | DateTime', 'return_type': 'DateTime'},
\     'diff': { 'signature': 'DateTime $datetime2 [, bool $absolute = false] | DateInterval', 'return_type': 'DateInterval'},
\     'format': { 'signature': 'string $format | string', 'return_type': 'string'},
\     'getOffset': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimestamp': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimezone': { 'signature': 'void | DateTimeZone', 'return_type': 'DateTimeZone'},
\     'modify': { 'signature': 'string $modify | DateTime', 'return_type': 'DateTime'},
\     'setDate': { 'signature': 'int $year, int $month, int $day | DateTime', 'return_type': 'DateTime'},
\     'setISODate': { 'signature': 'int $year, int $week [, int $day = 1] | DateTime', 'return_type': 'DateTime'},
\     'setTime': { 'signature': 'int $hour, int $minute [, int $second = 0] | DateTime', 'return_type': 'DateTime'},
\     'setTimestamp': { 'signature': 'int $unixtimestamp | DateTime', 'return_type': 'DateTime'},
\     'setTimezone': { 'signature': 'DateTimeZone $timezone | DateTime', 'return_type': 'DateTime'},
\     'sub': { 'signature': 'DateInterval $interval | DateTime', 'return_type': 'DateTime'},
\     '__wakeup': { 'signature': 'void | DateTime', 'return_type': 'DateTime'},
\   },
\   'static_methods': {
\     'createFromFormat': { 'signature': 'string $format, string $time [, DateTimeZone $timezone] | DateTime', 'return_type': 'DateTime'},
\     'getLastErrors': { 'signature': 'void | array', 'return_type': 'array'},
\     '__set_state': { 'signature': 'array $array | DateTime', 'return_type': 'DateTime'},
\   },
\},
\'DateTimeZone': {
\   'constants': {
\     'AFRICA': '1',
\     'AMERICA': '2',
\     'ANTARCTICA': '4',
\     'ARCTIC': '8',
\     'ASIA': '16',
\     'ATLANTIC': '32',
\     'AUSTRALIA': '64',
\     'EUROPE': '128',
\     'INDIAN': '256',
\     'PACIFIC': '512',
\     'UTC': '1024',
\     'ALL': '2047',
\     'ALL_WITH_BC': '4095',
\     'PER_COUNTRY': '4096',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $timezone', 'return_type': ''},
\     'getLocation': { 'signature': 'void | array', 'return_type': 'array'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getOffset': { 'signature': 'DateTime $datetime | int', 'return_type': 'int'},
\     'getTransitions': { 'signature': '[ int $timestamp_begin [, int $timestamp_end]] | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\     'listAbbreviations': { 'signature': 'void | array', 'return_type': 'array'},
\     'listIdentifiers': { 'signature': '[ int $what = DateTimeZone::ALL [, string $country = NULL]] | array', 'return_type': 'array'},
\   },
\},
\'Directory': {
\   'constants': {
\   },
\   'properties': {
\     'path': { 'initializer': '', 'type': 'string'},
\     'handle': { 'initializer': '', 'type': 'resource'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'close': { 'signature': '[ resource $dir_handle] | void', 'return_type': 'void'},
\     'read': { 'signature': '[ resource $dir_handle] | string', 'return_type': 'string'},
\     'rewind': { 'signature': '[ resource $dir_handle] | void', 'return_type': 'void'},
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
\'ErrorException': {
\   'constants': {
\   },
\   'properties': {
\     'severity': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $message = "" [, int $code = 0 [, int $severity = 1 [, string $filename = __FILE__ [, int $lineno = __LINE__ [, Exception $previous = NULL]]]]]]', 'return_type': ''},
\     'getSeverity': { 'signature': 'void | int', 'return_type': 'int'},
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
\'Ev': {
\   'constants': {
\     'FLAG_AUTO': '0',
\     'FLAG_NOENV': '16777216',
\     'FLAG_FORKCHECK': '33554432',
\     'FLAG_NOINOTIFY': '1048576',
\     'FLAG_SIGNALFD': '2097152',
\     'FLAG_NOSIGMASK': '4194304',
\     'RUN_NOWAIT': '1',
\     'RUN_ONCE': '2',
\     'BREAK_CANCEL': '0',
\     'BREAK_ONE': '1',
\     'BREAK_ALL': '2',
\     'MINPRI': '-2',
\     'MAXPRI': '2',
\     'READ': '1',
\     'WRITE': '2',
\     'TIMER': '256',
\     'PERIODIC': '512',
\     'SIGNAL': '1024',
\     'CHILD': '',
\     'STAT': '4096',
\     'IDLE': '8192',
\     'PREPARE': '16384',
\     'CHECK': '32768',
\     'EMBED': '65536',
\     'CUSTOM': '16777216',
\     'ERROR': '2147483648',
\     'BACKEND_SELECT': '1',
\     'BACKEND_POLL': '2',
\     'BACKEND_EPOLL': '4',
\     'BACKEND_KQUEUE': '8',
\     'BACKEND_DEVPOLL': '16',
\     'BACKEND_PORT': '32',
\     'BACKEND_ALL': '63',
\     'BACKEND_MASK': '65535',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'backend': { 'signature': 'void | int', 'return_type': 'int'},
\     'depth': { 'signature': 'void | int', 'return_type': 'int'},
\     'embeddableBackends': { 'signature': 'void | void', 'return_type': 'void'},
\     'feedSignal': { 'signature': 'int $signum | void', 'return_type': 'void'},
\     'feedSignalEvent': { 'signature': 'int $signum | void', 'return_type': 'void'},
\     'iteration': { 'signature': 'void | int', 'return_type': 'int'},
\     'now': { 'signature': 'void | double', 'return_type': 'double'},
\     'nowUpdate': { 'signature': 'void | void', 'return_type': 'void'},
\     'recommendedBackends': { 'signature': 'void | void', 'return_type': 'void'},
\     'resume': { 'signature': 'void | void', 'return_type': 'void'},
\     'run': { 'signature': '[ int $flags] | void', 'return_type': 'void'},
\     'sleep': { 'signature': 'double $seconds | void', 'return_type': 'void'},
\     'stop': { 'signature': '[ int $how] | void', 'return_type': 'void'},
\     'supportedBackends': { 'signature': 'void | void', 'return_type': 'void'},
\     'suspend': { 'signature': 'void | void', 'return_type': 'void'},
\     'time': { 'signature': 'void | double', 'return_type': 'double'},
\     'verify': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\},
\'EvCheck': {
\   'constants': {
\   },
\   'properties': {
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'string $callback [, string $data [, string $priority]] | object', 'return_type': 'object'},
\   },
\},
\'EvChild': {
\   'constants': {
\   },
\   'properties': {
\     'pid': { 'initializer': '', 'type': ''},
\     'rpid': { 'initializer': '', 'type': ''},
\     'rstatus': { 'initializer': '', 'type': ''},
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'set': { 'signature': 'int $pid, bool $trace | void', 'return_type': 'void'},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'int $pid, bool $trace, callable $callback [, mixed $data [, int $priority]] | object', 'return_type': 'object'},
\   },
\},
\'EvEmbed': {
\   'constants': {
\   },
\   'properties': {
\     'embed': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'set': { 'signature': 'object $other | void', 'return_type': 'void'},
\     'sweep': { 'signature': 'void | void', 'return_type': 'void'},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'object $other [, callable $callback [, mixed $data [, int $priority]]] | void', 'return_type': 'void'},
\   },
\},
\'EvFork': {
\   'constants': {
\   },
\   'properties': {
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'string $callback [, string $data [, string $priority]] | object', 'return_type': 'object'},
\   },
\},
\'EvIdle': {
\   'constants': {
\   },
\   'properties': {
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'string $callback [, mixed $data [, int $priority]] | object', 'return_type': 'object'},
\   },
\},
\'EvIo': {
\   'constants': {
\   },
\   'properties': {
\     'fd': { 'initializer': '', 'type': ''},
\     'events': { 'initializer': '', 'type': ''},
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'set': { 'signature': 'mixed $fd, int $events | void', 'return_type': 'void'},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'mixed $fd, int $events, callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvIo', 'return_type': 'EvIo'},
\   },
\},
\'EvLoop': {
\   'constants': {
\   },
\   'properties': {
\     'data': { 'initializer': '', 'type': ''},
\     'backend': { 'initializer': '', 'type': ''},
\     'is_default_loop': { 'initializer': '', 'type': ''},
\     'iteration': { 'initializer': '', 'type': ''},
\     'pending': { 'initializer': '', 'type': ''},
\     'io_interval': { 'initializer': '', 'type': ''},
\     'timeout_interval': { 'initializer': '', 'type': ''},
\     'depth': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'backend': { 'signature': 'void | int', 'return_type': 'int'},
\     'check': { 'signature': 'string $callback [, string $data [, string $priority]] | EvCheck', 'return_type': 'EvCheck'},
\     'child': { 'signature': 'string $pid, string $trace, string $callback [, string $data [, string $priority]] | EvChild', 'return_type': 'EvChild'},
\     '__construct': { 'signature': '[ int $flags [, mixed $data = NULL [, double $io_interval = 0.0 [, double $timeout_interval = 0.0]]]]', 'return_type': ''},
\     'embed': { 'signature': 'string $other [, string $callback [, string $data [, string $priority]]] | EvEmbed', 'return_type': 'EvEmbed'},
\     'fork': { 'signature': 'callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvFork', 'return_type': 'EvFork'},
\     'idle': { 'signature': 'callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvIdle', 'return_type': 'EvIdle'},
\     'invokePending': { 'signature': 'void | void', 'return_type': 'void'},
\     'io': { 'signature': 'mixed $fd, int $events, callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvIo', 'return_type': 'EvIo'},
\     'loopFork': { 'signature': 'void | void', 'return_type': 'void'},
\     'now': { 'signature': 'void | double', 'return_type': 'double'},
\     'nowUpdate': { 'signature': 'void | void', 'return_type': 'void'},
\     'periodic': { 'signature': 'double $offset, double $interval, callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvPeriodic', 'return_type': 'EvPeriodic'},
\     'prepare': { 'signature': 'callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvPrepare', 'return_type': 'EvPrepare'},
\     'resume': { 'signature': 'void | void', 'return_type': 'void'},
\     'run': { 'signature': '[ int $flags = 0] | void', 'return_type': 'void'},
\     'signal': { 'signature': 'int $signum, callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvSignal', 'return_type': 'EvSignal'},
\     'stat': { 'signature': 'string $path, double $interval, callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvStat', 'return_type': 'EvStat'},
\     'stop': { 'signature': '[ int $how] | void', 'return_type': 'void'},
\     'suspend': { 'signature': 'void | void', 'return_type': 'void'},
\     'timer': { 'signature': 'double $after, double $repeat, callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvTimer', 'return_type': 'EvTimer'},
\     'verify': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'defaultLoop': { 'signature': '[ int $flags = Ev::FLAG_AUTO [, mixed $data = NULL [, double $io_interval = 0. [, double $timeout_interval = 0.]]]] | EvLoop', 'return_type': 'EvLoop'},
\   },
\},
\'EvPeriodic': {
\   'constants': {
\   },
\   'properties': {
\     'offset': { 'initializer': '', 'type': ''},
\     'interval': { 'initializer': '', 'type': ''},
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'again': { 'signature': 'void | void', 'return_type': 'void'},
\     'at': { 'signature': 'void | double', 'return_type': 'double'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'set': { 'signature': 'double $offset, double $interval | void', 'return_type': 'void'},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'double $offset, double $interval, callable $reschedule_cb, callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvPeriodic', 'return_type': 'EvPeriodic'},
\   },
\},
\'EvPrepare': {
\   'constants': {
\   },
\   'properties': {
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvPrepare', 'return_type': 'EvPrepare'},
\   },
\},
\'EvSignal': {
\   'constants': {
\   },
\   'properties': {
\     'signum': { 'initializer': '', 'type': ''},
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'set': { 'signature': 'int $signum | void', 'return_type': 'void'},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'int $signum, callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvSignal', 'return_type': 'EvSignal'},
\   },
\},
\'EvStat': {
\   'constants': {
\   },
\   'properties': {
\     'path': { 'initializer': '', 'type': ''},
\     'interval': { 'initializer': '', 'type': ''},
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'attr': { 'signature': 'void | array', 'return_type': 'array'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'prev': { 'signature': 'void | void', 'return_type': 'void'},
\     'set': { 'signature': 'string $path, double $interval | void', 'return_type': 'void'},
\     'stat': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'string $path, double $interval, callable $callback [, mixed $data = NULL [, int $priority = 0]] | void', 'return_type': 'void'},
\   },
\},
\'EvTimer': {
\   'constants': {
\   },
\   'properties': {
\     'repeat': { 'initializer': '', 'type': ''},
\     'remaining': { 'initializer': '', 'type': ''},
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'again': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'set': { 'signature': 'double $after, double $repeat | void', 'return_type': 'void'},
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createStopped': { 'signature': 'double $after, double $repeat, callable $callback [, mixed $data = NULL [, int $priority = 0]] | EvTimer', 'return_type': 'EvTimer'},
\   },
\},
\'EvWatcher': {
\   'constants': {
\   },
\   'properties': {
\     'is_active': { 'initializer': '', 'type': ''},
\     'data': { 'initializer': '', 'type': ''},
\     'is_pending': { 'initializer': '', 'type': ''},
\     'priority': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'clear': { 'signature': 'void | int', 'return_type': 'int'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'feed': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'getLoop': { 'signature': 'void | EvLoop', 'return_type': 'EvLoop'},
\     'invoke': { 'signature': 'int $revents | void', 'return_type': 'void'},
\     'keepalive': { 'signature': '[ bool $value] | bool', 'return_type': 'bool'},
\     'setCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Event': {
\   'constants': {
\     'ET': '32',
\     'PERSIST': '16',
\     'READ': '2',
\     'WRITE': '4',
\     'SIGNAL': '8',
\     'TIMEOUT': '1',
\   },
\   'properties': {
\     'pending': { 'initializer': '', 'type': 'bool'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': '[ double $timeout] | void', 'return_type': 'void'},
\     'addSignal': { 'signature': '[ double $timeout] | bool', 'return_type': 'bool'},
\     'addTimer': { 'signature': '[ double $timeout] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'EventBase $base, mixed $fd, int $what, callable $cb [, mixed $arg = NULL]', 'return_type': ''},
\     'del': { 'signature': 'void | void', 'return_type': 'void'},
\     'delSignal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'delTimer': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'free': { 'signature': 'void | void', 'return_type': 'void'},
\     'pending': { 'signature': 'int $flags | bool', 'return_type': 'bool'},
\     'set': { 'signature': 'EventBase $base, mixed $fd [, int $what [, callable $cb [, mixed $arg]]] | bool', 'return_type': 'bool'},
\     'setPriority': { 'signature': 'int $priority | bool', 'return_type': 'bool'},
\     'setTimer': { 'signature': 'EventBase $base, callable $cb [, mixed $arg] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'getSupportedMethods': { 'signature': 'void | void', 'return_type': 'void'},
\     'signal': { 'signature': 'EventBase $base, int $signum, callable $cb [, mixed $arg] | Event', 'return_type': 'Event'},
\     'timer': { 'signature': 'EventBase $base, callable $cb [, mixed $arg] | Event', 'return_type': 'Event'},
\   },
\},
\'EventBase': {
\   'constants': {
\     'LOOP_ONCE': '1',
\     'LOOP_NONBLOCK': '2',
\     'NOLOCK': '1',
\     'STARTUP_IOCP': '4',
\     'NO_CACHE_TIME': '8',
\     'EPOLL_USE_CHANGELIST': '16',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ EventConfig $cfg]', 'return_type': ''},
\     'dispatch': { 'signature': 'void | void', 'return_type': 'void'},
\     'exit': { 'signature': '[ double $timeout] | void', 'return_type': 'void'},
\     'getFeatures': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMethod': { 'signature': '[ EventConfig $cfg] | string', 'return_type': 'string'},
\     'getTimeOfDayCached': { 'signature': 'void | double', 'return_type': 'double'},
\     'gotExit': { 'signature': 'void | void', 'return_type': 'void'},
\     'gotStop': { 'signature': 'void | void', 'return_type': 'void'},
\     'loop': { 'signature': '[ int $flags] | bool', 'return_type': 'bool'},
\     'priorityInit': { 'signature': 'string $n_priorities | bool', 'return_type': 'bool'},
\     'reInit': { 'signature': 'string $base | void', 'return_type': 'void'},
\     'stop': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'EventBuffer': {
\   'constants': {
\     'EOL_ANY': '0',
\     'EOL_CRLF': '1',
\     'EOL_CRLF_STRICT': '2',
\     'EOL_LF': '3',
\     'PTR_SET': '0',
\     'PTR_ADD': '1',
\   },
\   'properties': {
\     'length': { 'initializer': '', 'type': 'int'},
\     'contiguous_space': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'string $data | bool', 'return_type': 'bool'},
\     'addBuffer': { 'signature': 'EventBuffer $buf | bool', 'return_type': 'bool'},
\     'appendFrom': { 'signature': 'EventBuffer $buf, int $len | int', 'return_type': 'int'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'copyout': { 'signature': 'string &$data, int $max_bytes | int', 'return_type': 'int'},
\     'drain': { 'signature': 'int $len | void', 'return_type': 'void'},
\     'enableLocking': { 'signature': 'void | void', 'return_type': 'void'},
\     'expand': { 'signature': 'int $len | bool', 'return_type': 'bool'},
\     'freeze': { 'signature': 'bool $at_front | bool', 'return_type': 'bool'},
\     'lock': { 'signature': 'void | void', 'return_type': 'void'},
\     'prepend': { 'signature': 'string $data | bool', 'return_type': 'bool'},
\     'prependBuffer': { 'signature': 'EventBuffer $buf | bool', 'return_type': 'bool'},
\     'pullup': { 'signature': 'string $size | void', 'return_type': 'void'},
\     'read': { 'signature': 'int $max_bytes | string', 'return_type': 'string'},
\     'readLine': { 'signature': 'string $eol_style | void', 'return_type': 'void'},
\     'search': { 'signature': 'string $what [, int $start = -1 [, int $end = -1]] | mixed', 'return_type': 'mixed'},
\     'searchEol': { 'signature': '[ int $start = -1 [, int $eol_style = EventBuffer::EOL_ANY]] | mixed', 'return_type': 'mixed'},
\     'substr': { 'signature': 'int $start [, int $length] | string', 'return_type': 'string'},
\     'unfreeze': { 'signature': 'bool $at_front | bool', 'return_type': 'bool'},
\     'unlock': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'write': { 'signature': 'mixed $fd [, int $howmuch] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'EventBufferEvent': {
\   'constants': {
\     'READING': '1',
\     'WRITING': '2',
\     'EOF': '16',
\     'ERROR': '32',
\     'TIMEOUT': '64',
\     'CONNECTED': '128',
\     'OPT_CLOSE_ON_FREE': '1',
\     'OPT_THREADSAFE': '2',
\     'OPT_DEFER_CALLBACKS': '4',
\     'OPT_UNLOCK_CALLBACKS': '8',
\     'SSL_OPEN': '0',
\     'SSL_CONNECTING': '1',
\     'SSL_ACCEPTING': '2',
\   },
\   'properties': {
\     'fd': { 'initializer': '', 'type': 'integer'},
\     'priority': { 'initializer': '', 'type': 'integer'},
\     'input': { 'initializer': '', 'type': 'EventBuffer'},
\     'output': { 'initializer': '', 'type': 'EventBuffer'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'connect': { 'signature': 'string $addr | bool', 'return_type': 'bool'},
\     'connectHost': { 'signature': 'EventDnsBase $dns_base, string $hostname, int $port [, int $family = EventUtil::AF_UNSPEC] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'EventBase $base [, mixed $socket = NULL [, int $options = 0 [, callable $readcb = NULL [, callable $writecb = NULL [, callable $eventcb = NULL]]]]]', 'return_type': ''},
\     'createPair': { 'signature': 'EventBase $base [, int $options = 0] | array', 'return_type': 'array'},
\     'disable': { 'signature': 'int $events | bool', 'return_type': 'bool'},
\     'enable': { 'signature': 'string $events | bool', 'return_type': 'bool'},
\     'free': { 'signature': 'void | void', 'return_type': 'void'},
\     'getDnsErrorString': { 'signature': 'void | string', 'return_type': 'string'},
\     'getEnabled': { 'signature': 'void | int', 'return_type': 'int'},
\     'getInput': { 'signature': 'void | EventBuffer', 'return_type': 'EventBuffer'},
\     'getOutput': { 'signature': 'void | EventBuffer', 'return_type': 'EventBuffer'},
\     'read': { 'signature': 'string &$data, int $size | int', 'return_type': 'int'},
\     'readBuffer': { 'signature': 'EventBuffer $buf | bool', 'return_type': 'bool'},
\     'setCallbacks': { 'signature': 'callable $readcb, callable $writecb, callable $eventcb [, string $arg] | void', 'return_type': 'void'},
\     'setPriority': { 'signature': 'int $priority | bool', 'return_type': 'bool'},
\     'setTimeouts': { 'signature': 'int $timeout_read, int $timeout_write | bool', 'return_type': 'bool'},
\     'setWatermark': { 'signature': 'int $events, int $lowmark, int $highmark | void', 'return_type': 'void'},
\     'sslError': { 'signature': 'void | void', 'return_type': 'void'},
\     'sslRenegotiate': { 'signature': 'void | void', 'return_type': 'void'},
\     'write': { 'signature': 'string $data | bool', 'return_type': 'bool'},
\     'writeBuffer': { 'signature': 'EventBuffer $buf | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'sslFilter': { 'signature': 'EventBase $base, EventBufferEvent $underlying, EventSslContext $ctx, int $state [, int $options = 0] | EventBufferEvent', 'return_type': 'EventBufferEvent'},
\     'sslSocket': { 'signature': 'EventBase $base, mixed $socket, EventSslContext $ctx, int $state [, int $options] | EventBufferEvent', 'return_type': 'EventBufferEvent'},
\   },
\},
\'EventConfig': {
\   'constants': {
\     'FEATURE_ET': '1',
\     'FEATURE_O1': '2',
\     'FEATURE_FDS': '4',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'avoidMethod': { 'signature': 'int $method | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'requireFeatures': { 'signature': 'int $feature | bool', 'return_type': 'bool'},
\     'setMaxDispatchInterval': { 'signature': 'int $max_interval, int $max_callbacks, int $min_priority | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'EventDnsBase': {
\   'constants': {
\     'OPTION_SEARCH': '1',
\     'OPTION_NAMESERVERS': '2',
\     'OPTION_MISC': '4',
\     'OPTION_HOSTSFILE': '8',
\     'OPTIONS_ALL': '15',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addNameserverIp': { 'signature': 'string $ip | bool', 'return_type': 'bool'},
\     'addSearch': { 'signature': 'string $domain | void', 'return_type': 'void'},
\     'clearSearch': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'EventBase $base, bool $initialize', 'return_type': ''},
\     'countNameservers': { 'signature': 'void | void', 'return_type': 'void'},
\     'loadHosts': { 'signature': 'string $hosts | bool', 'return_type': 'bool'},
\     'parseResolvConf': { 'signature': 'int $flags, string $filename | bool', 'return_type': 'bool'},
\     'setOption': { 'signature': 'string $option, string $value | bool', 'return_type': 'bool'},
\     'setSearchNdots': { 'signature': 'int $ndots | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'EventHttp': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'accept': { 'signature': 'mixed $socket | bool', 'return_type': 'bool'},
\     'addServerAlias': { 'signature': 'string $alias | bool', 'return_type': 'bool'},
\     'bind': { 'signature': 'string $address, int $port | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'EventBase $base', 'return_type': ''},
\     'removeServerAlias': { 'signature': 'string $alias | bool', 'return_type': 'bool'},
\     'setAllowedMethods': { 'signature': 'int $methods | void', 'return_type': 'void'},
\     'setCallback': { 'signature': 'string $path, string $cb [, string $arg] | void', 'return_type': 'void'},
\     'setDefaultCallback': { 'signature': 'string $cb [, string $arg] | void', 'return_type': 'void'},
\     'setMaxBodySize': { 'signature': 'int $value | void', 'return_type': 'void'},
\     'setMaxHeadersSize': { 'signature': 'int $value | void', 'return_type': 'void'},
\     'setTimeout': { 'signature': 'int $value | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'EventHttpConnection': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'EventBase $base, EventDnsBase $dns_base, string $address, int $port', 'return_type': ''},
\     'getBase': { 'signature': 'void | EventBase', 'return_type': 'EventBase'},
\     'getPeer': { 'signature': 'string &$address, int &$port | void', 'return_type': 'void'},
\     'makeRequest': { 'signature': 'EventHttpRequest $req, int $type, string $uri | bool', 'return_type': 'bool'},
\     'setLocalAddress': { 'signature': 'string $address | void', 'return_type': 'void'},
\     'setLocalPort': { 'signature': 'int $port | void', 'return_type': 'void'},
\     'setMaxBodySize': { 'signature': 'string $max_size | void', 'return_type': 'void'},
\     'setMaxHeadersSize': { 'signature': 'string $max_size | void', 'return_type': 'void'},
\     'setRetries': { 'signature': 'int $retries | void', 'return_type': 'void'},
\     'setTimeout': { 'signature': 'int $timeout | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'EventHttpRequest': {
\   'constants': {
\     'CMD_GET': '1',
\     'CMD_POST': '2',
\     'CMD_HEAD': '4',
\     'CMD_PUT': '8',
\     'CMD_DELETE': '16',
\     'CMD_OPTIONS': '32',
\     'CMD_TRACE': '64',
\     'CMD_CONNECT': '128',
\     'CMD_PATCH': '256',
\     'INPUT_HEADER': '1',
\     'OUTPUT_HEADER': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addHeader': { 'signature': 'string $key, string $value, int $type | bool', 'return_type': 'bool'},
\     'cancel': { 'signature': 'void | void', 'return_type': 'void'},
\     'clearHeaders': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'callable $callback [, mixed $data = NULL]', 'return_type': ''},
\     'findHeader': { 'signature': 'string $key, string $type | void', 'return_type': 'void'},
\     'free': { 'signature': 'void | void', 'return_type': 'void'},
\     'getCommand': { 'signature': 'void | void', 'return_type': 'void'},
\     'getHost': { 'signature': 'void | string', 'return_type': 'string'},
\     'getInputBuffer': { 'signature': 'void | EventBuffer', 'return_type': 'EventBuffer'},
\     'getInputHeaders': { 'signature': 'void | array', 'return_type': 'array'},
\     'getOutputBuffer': { 'signature': 'void | EventBuffer', 'return_type': 'EventBuffer'},
\     'getOutputHeaders': { 'signature': 'void | void', 'return_type': 'void'},
\     'getResponseCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getUri': { 'signature': 'void | string', 'return_type': 'string'},
\     'removeHeader': { 'signature': 'string $key, string $type | void', 'return_type': 'void'},
\     'sendError': { 'signature': 'int $error [, string $reason = NULL] | void', 'return_type': 'void'},
\     'sendReply': { 'signature': 'int $code, string $reason [, EventBuffer $buf] | void', 'return_type': 'void'},
\     'sendReplyChunk': { 'signature': 'EventBuffer $buf | void', 'return_type': 'void'},
\     'sendReplyEnd': { 'signature': 'void | void', 'return_type': 'void'},
\     'sendReplyStart': { 'signature': 'int $code, string $reason | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'EventListener': {
\   'constants': {
\     'OPT_LEAVE_SOCKETS_BLOCKING': '1',
\     'OPT_CLOSE_ON_FREE': '2',
\     'OPT_CLOSE_ON_EXEC': '4',
\     'OPT_REUSEABLE': '8',
\     'OPT_THREADSAFE': '16',
\   },
\   'properties': {
\     'fd': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'EventBase $base, callable $cb, mixed $data, int $flags, int $backlog, mixed $target', 'return_type': ''},
\     'disable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'enable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getBase': { 'signature': 'void | void', 'return_type': 'void'},
\     'setCallback': { 'signature': 'callable $cb [, mixed $arg = NULL] | void', 'return_type': 'void'},
\     'setErrorCallback': { 'signature': 'string $cb | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getSocketName': { 'signature': 'string &$address [, mixed &$port] | bool', 'return_type': 'bool'},
\   },
\},
\'EventSslContext': {
\   'constants': {
\     'SSLv2_CLIENT_METHOD': '1',
\     'SSLv3_CLIENT_METHOD': '2',
\     'SSLv23_CLIENT_METHOD': '3',
\     'TLS_CLIENT_METHOD': '4',
\     'SSLv2_SERVER_METHOD': '5',
\     'SSLv3_SERVER_METHOD': '6',
\     'SSLv23_SERVER_METHOD': '7',
\     'TLS_SERVER_METHOD': '8',
\     'OPT_LOCAL_CERT': '1',
\     'OPT_LOCAL_PK': '2',
\     'OPT_PASSPHRASE': '3',
\     'OPT_CA_FILE': '4',
\     'OPT_CA_PATH': '5',
\     'OPT_ALLOW_SELF_SIGNED': '6',
\     'OPT_VERIFY_PEER': '7',
\     'OPT_VERIFY_DEPTH': '8',
\     'OPT_CIPHERS': '9',
\   },
\   'properties': {
\     'local_cert': { 'initializer': '', 'type': 'string'},
\     'local_pk': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $method, string $options', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'EventUtil': {
\   'constants': {
\     'AF_INET': '2',
\     'AF_INET6': '10',
\     'AF_UNSPEC': '0',
\     'LIBEVENT_VERSION_NUMBER': '33559808',
\     'SO_DEBUG': '1',
\     'SO_REUSEADDR': '2',
\     'SO_KEEPALIVE': '9',
\     'SO_DONTROUTE': '5',
\     'SO_LINGER': '13',
\     'SO_BROADCAST': '6',
\     'SO_OOBINLINE': '10',
\     'SO_SNDBUF': '7',
\     'SO_RCVBUF': '8',
\     'SO_SNDLOWAT': '19',
\     'SO_RCVLOWAT': '18',
\     'SO_SNDTIMEO': '21',
\     'SO_RCVTIMEO': '20',
\     'SO_TYPE': '3',
\     'SO_ERROR': '4',
\     'SOL_SOCKET': '1',
\     'SOL_TCP': '6',
\     'SOL_UDP': '17',
\     'IPPROTO_IP': '0',
\     'IPPROTO_IPV6': '41',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\   },
\   'static_methods': {
\     'getLastSocketErrno': { 'signature': '[ mixed $socket = NULL] | int', 'return_type': 'int'},
\     'getLastSocketError': { 'signature': '[ mixed $socket] | string', 'return_type': 'string'},
\     'getSocketName': { 'signature': 'mixed $socket, string &$address [, mixed &$port] | bool', 'return_type': 'bool'},
\     'setSocketOption': { 'signature': 'mixed $socket, int $level, int $optname, mixed $optval | bool', 'return_type': 'bool'},
\     'sslRandPoll': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\},
\'Exception': {
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
\     '__construct': { 'signature': '[ string $message = "" [, int $code = 0 [, Exception $previous = NULL]]]', 'return_type': ''},
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
\'GearmanClient': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addOptions': { 'signature': 'int $options | bool', 'return_type': 'bool'},
\     'addServer': { 'signature': '[ string $host = 127.0.0.1 [, int $port = 4730]] | bool', 'return_type': 'bool'},
\     'addServers': { 'signature': '[ string $servers = 127.0.0.1:4730] | bool', 'return_type': 'bool'},
\     'addTask': { 'signature': 'string $function_name, string $workload [, mixed &$context [, string $unique]] | GearmanTask', 'return_type': 'GearmanTask'},
\     'addTaskBackground': { 'signature': 'string $function_name, string $workload [, mixed &$context [, string $unique]] | GearmanTask', 'return_type': 'GearmanTask'},
\     'addTaskHigh': { 'signature': 'string $function_name, string $workload [, mixed &$context [, string $unique]] | GearmanTask', 'return_type': 'GearmanTask'},
\     'addTaskHighBackground': { 'signature': 'string $function_name, string $workload [, mixed &$context [, string $unique]] | GearmanTask', 'return_type': 'GearmanTask'},
\     'addTaskLow': { 'signature': 'string $function_name, string $workload [, mixed &$context [, string $unique]] | GearmanTask', 'return_type': 'GearmanTask'},
\     'addTaskLowBackground': { 'signature': 'string $function_name, string $workload [, mixed &$context [, string $unique]] | GearmanTask', 'return_type': 'GearmanTask'},
\     'addTaskStatus': { 'signature': 'string $job_handle [, string &$context] | GearmanTask', 'return_type': 'GearmanTask'},
\     'clearCallbacks': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'clone': { 'signature': 'void | GearmanClient', 'return_type': 'GearmanClient'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'context': { 'signature': 'void | string', 'return_type': 'string'},
\     'data': { 'signature': 'void | string', 'return_type': 'string'},
\     'do': { 'signature': 'string $function_name, string $workload [, string $unique] | string', 'return_type': 'string'},
\     'doBackground': { 'signature': 'string $function_name, string $workload [, string $unique] | string', 'return_type': 'string'},
\     'doHigh': { 'signature': 'string $function_name, string $workload [, string $unique] | string', 'return_type': 'string'},
\     'doHighBackground': { 'signature': 'string $function_name, string $workload [, string $unique] | string', 'return_type': 'string'},
\     'doJobHandle': { 'signature': 'void | string', 'return_type': 'string'},
\     'doLow': { 'signature': 'string $function_name, string $workload [, string $unique] | string', 'return_type': 'string'},
\     'doLowBackground': { 'signature': 'string $function_name, string $workload [, string $unique] | string', 'return_type': 'string'},
\     'doNormal': { 'signature': 'string $function_name, string $workload [, string $unique] | string', 'return_type': 'string'},
\     'doStatus': { 'signature': 'void | array', 'return_type': 'array'},
\     'echo': { 'signature': 'string $workload | bool', 'return_type': 'bool'},
\     'error': { 'signature': 'void | string', 'return_type': 'string'},
\     'getErrno': { 'signature': 'void | int', 'return_type': 'int'},
\     'jobStatus': { 'signature': 'string $job_handle | array', 'return_type': 'array'},
\     'ping': { 'signature': 'string $workload | bool', 'return_type': 'bool'},
\     'removeOptions': { 'signature': 'int $options | bool', 'return_type': 'bool'},
\     'returnCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'runTasks': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setClientCallback': { 'signature': 'callable $callback | void', 'return_type': 'void'},
\     'setCompleteCallback': { 'signature': 'callable $callback | bool', 'return_type': 'bool'},
\     'setContext': { 'signature': 'string $context | bool', 'return_type': 'bool'},
\     'setCreatedCallback': { 'signature': 'string $callback | bool', 'return_type': 'bool'},
\     'setData': { 'signature': 'string $data | bool', 'return_type': 'bool'},
\     'setDataCallback': { 'signature': 'callable $callback | bool', 'return_type': 'bool'},
\     'setExceptionCallback': { 'signature': 'callable $callback | bool', 'return_type': 'bool'},
\     'setFailCallback': { 'signature': 'callable $callback | bool', 'return_type': 'bool'},
\     'setOptions': { 'signature': 'int $options | bool', 'return_type': 'bool'},
\     'setStatusCallback': { 'signature': 'callable $callback | bool', 'return_type': 'bool'},
\     'setTimeout': { 'signature': 'int $timeout | bool', 'return_type': 'bool'},
\     'setWarningCallback': { 'signature': 'callable $callback | bool', 'return_type': 'bool'},
\     'setWorkloadCallback': { 'signature': 'callable $callback | bool', 'return_type': 'bool'},
\     'timeout': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'GearmanException': {
\   'constants': {
\   },
\   'properties': {
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
\'GearmanJob': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'complete': { 'signature': 'string $result | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'data': { 'signature': 'string $data | bool', 'return_type': 'bool'},
\     'exception': { 'signature': 'string $exception | bool', 'return_type': 'bool'},
\     'fail': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'functionName': { 'signature': 'void | string', 'return_type': 'string'},
\     'handle': { 'signature': 'void | string', 'return_type': 'string'},
\     'returnCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'sendComplete': { 'signature': 'string $result | bool', 'return_type': 'bool'},
\     'sendData': { 'signature': 'string $data | bool', 'return_type': 'bool'},
\     'sendException': { 'signature': 'string $exception | bool', 'return_type': 'bool'},
\     'sendFail': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'sendStatus': { 'signature': 'int $numerator, int $denominator | bool', 'return_type': 'bool'},
\     'sendWarning': { 'signature': 'string $warning | bool', 'return_type': 'bool'},
\     'setReturn': { 'signature': 'int $gearman_return_t | bool', 'return_type': 'bool'},
\     'status': { 'signature': 'int $numerator, int $denominator | bool', 'return_type': 'bool'},
\     'unique': { 'signature': 'void | string', 'return_type': 'string'},
\     'warning': { 'signature': 'string $warning | bool', 'return_type': 'bool'},
\     'workload': { 'signature': 'void | string', 'return_type': 'string'},
\     'workloadSize': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'GearmanTask': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'create': { 'signature': 'void | GearmanTask', 'return_type': 'GearmanTask'},
\     'data': { 'signature': 'void | string', 'return_type': 'string'},
\     'dataSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'function': { 'signature': 'void | string', 'return_type': 'string'},
\     'functionName': { 'signature': 'void | string', 'return_type': 'string'},
\     'isKnown': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isRunning': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'jobHandle': { 'signature': 'void | string', 'return_type': 'string'},
\     'recvData': { 'signature': 'int $data_len | array', 'return_type': 'array'},
\     'returnCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'sendData': { 'signature': 'string $data | int', 'return_type': 'int'},
\     'sendWorkload': { 'signature': 'string $data | int', 'return_type': 'int'},
\     'taskDenominator': { 'signature': 'void | int', 'return_type': 'int'},
\     'taskNumerator': { 'signature': 'void | int', 'return_type': 'int'},
\     'unique': { 'signature': 'void | string', 'return_type': 'string'},
\     'uuid': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'GearmanWorker': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addFunction': { 'signature': 'string $function_name, callable $function [, mixed &$context [, int $timeout]] | bool', 'return_type': 'bool'},
\     'addOptions': { 'signature': 'int $option | bool', 'return_type': 'bool'},
\     'addServer': { 'signature': '[ string $host = 127.0.0.1 [, int $port = 4730]] | bool', 'return_type': 'bool'},
\     'addServers': { 'signature': '[ string $servers = 127.0.0.1:4730] | bool', 'return_type': 'bool'},
\     'clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'echo': { 'signature': 'string $workload | bool', 'return_type': 'bool'},
\     'error': { 'signature': 'void | string', 'return_type': 'string'},
\     'getErrno': { 'signature': 'void | int', 'return_type': 'int'},
\     'options': { 'signature': 'void | int', 'return_type': 'int'},
\     'register': { 'signature': 'string $function_name [, int $timeout] | bool', 'return_type': 'bool'},
\     'removeOptions': { 'signature': 'int $option | bool', 'return_type': 'bool'},
\     'returnCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'setId': { 'signature': 'string $id | bool', 'return_type': 'bool'},
\     'setOptions': { 'signature': 'int $option | bool', 'return_type': 'bool'},
\     'setTimeout': { 'signature': 'int $timeout | bool', 'return_type': 'bool'},
\     'timeout': { 'signature': 'void | int', 'return_type': 'int'},
\     'unregister': { 'signature': 'string $function_name | bool', 'return_type': 'bool'},
\     'unregisterAll': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'wait': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'work': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'Gender\Gender': {
\   'constants': {
\     'IS_FEMALE': '70',
\     'IS_MOSTLY_FEMALE': '102',
\     'IS_MALE': '77',
\     'IS_MOSTLY_MALE': '109',
\     'IS_UNISEX_NAME': '63',
\     'IS_A_COUPLE': '67',
\     'NAME_NOT_FOUND': '32',
\     'ERROR_IN_NAME': '69',
\     'ANY_COUNTRY': '0',
\     'BRITAIN': '1',
\     'IRELAND': '2',
\     'USA': '3',
\     'SPAIN': '4',
\     'PORTUGAL': '5',
\     'ITALY': '6',
\     'MALTA': '7',
\     'FRANCE': '8',
\     'BELGIUM': '9',
\     'LUXEMBOURG': '10',
\     'NETHERLANDS': '11',
\     'GERMANY': '12',
\     'EAST_FRISIA': '13',
\     'AUSTRIA': '14',
\     'SWISS': '15',
\     'ICELAND': '16',
\     'DENMARK': '17',
\     'NORWAY': '18',
\     'SWEDEN': '19',
\     'FINLAND': '20',
\     'ESTONIA': '21',
\     'LATVIA': '22',
\     'LITHUANIA': '23',
\     'POLAND': '24',
\     'CZECH_REP': '25',
\     'SLOVAKIA': '26',
\     'HUNGARY': '27',
\     'ROMANIA': '28',
\     'BULGARIA': '29',
\     'BOSNIA': '30',
\     'CROATIA': '31',
\     'KOSOVO': '32',
\     'MACEDONIA': '33',
\     'MONTENEGRO': '34',
\     'SERBIA': '35',
\     'SLOVENIA': '36',
\     'ALBANIA': '37',
\     'GREECE': '38',
\     'RUSSIA': '39',
\     'BELARUS': '40',
\     'MOLDOVA': '41',
\     'UKRAINE': '42',
\     'ARMENIA': '43',
\     'AZERBAIJAN': '44',
\     'GEORGIA': '45',
\     'KAZAKH_UZBEK': '46',
\     'TURKEY': '47',
\     'ARABIA': '48',
\     'ISRAEL': '49',
\     'CHINA': '50',
\     'INDIA': '51',
\     'JAPAN': '52',
\     'KOREA': '53',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'connect': { 'signature': 'string $dsn | boolean', 'return_type': 'boolean'},
\     '__construct': { 'signature': '[ string $dsn]', 'return_type': ''},
\     'country': { 'signature': 'integer $country | array', 'return_type': 'array'},
\     'get': { 'signature': 'string $name [, integer $country] | integer', 'return_type': 'integer'},
\     'isNick': { 'signature': 'string $name0, string $name1 [, integer $country] | array', 'return_type': 'array'},
\     'similarNames': { 'signature': 'string $name [, integer $country] | array', 'return_type': 'array'},
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
\'Gmagick': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addimage': { 'signature': 'Gmagick $Gmagick | Gmagick', 'return_type': 'Gmagick'},
\     'addnoiseimage': { 'signature': 'int $NOISE | Gmagick', 'return_type': 'Gmagick'},
\     'annotateimage': { 'signature': 'GmagickDraw $GmagickDraw, float $x, float $y, float $angle, string $text | Gmagick', 'return_type': 'Gmagick'},
\     'blurimage': { 'signature': 'float $radius, float $sigma [, int $channel] | Gmagick', 'return_type': 'Gmagick'},
\     'borderimage': { 'signature': 'GmagickPixel $color, int $width, int $height | Gmagick', 'return_type': 'Gmagick'},
\     'charcoalimage': { 'signature': 'float $radius, float $sigma | Gmagick', 'return_type': 'Gmagick'},
\     'chopimage': { 'signature': 'int $width, int $height, int $x, int $y | Gmagick', 'return_type': 'Gmagick'},
\     'clear': { 'signature': 'void | Gmagick', 'return_type': 'Gmagick'},
\     'commentimage': { 'signature': 'string $comment | Gmagick', 'return_type': 'Gmagick'},
\     'compositeimage': { 'signature': 'Gmagick $source, int $COMPOSE, int $x, int $y | Gmagick', 'return_type': 'Gmagick'},
\     '__construct': { 'signature': '[ string $filename]', 'return_type': ''},
\     'cropimage': { 'signature': 'int $width, int $height, int $x, int $y | Gmagick', 'return_type': 'Gmagick'},
\     'cropthumbnailimage': { 'signature': 'int $width, int $height | Gmagick', 'return_type': 'Gmagick'},
\     'current': { 'signature': 'void | Gmagick', 'return_type': 'Gmagick'},
\     'cyclecolormapimage': { 'signature': 'int $displace | Gmagick', 'return_type': 'Gmagick'},
\     'deconstructimages': { 'signature': 'void | void', 'return_type': 'void'},
\     'despeckleimage': { 'signature': 'void | Gmagick', 'return_type': 'Gmagick'},
\     'destroy': { 'signature': 'void | Gmagick', 'return_type': 'Gmagick'},
\     'drawimage': { 'signature': 'GmagickDraw $GmagickDraw | Gmagick', 'return_type': 'Gmagick'},
\     'edgeimage': { 'signature': 'float $radius | Gmagick', 'return_type': 'Gmagick'},
\     'embossimage': { 'signature': 'float $radius, float $sigma | Gmagick', 'return_type': 'Gmagick'},
\     'enhanceimage': { 'signature': 'void | Gmagick', 'return_type': 'Gmagick'},
\     'equalizeimage': { 'signature': 'void | Gmagick', 'return_type': 'Gmagick'},
\     'flipimage': { 'signature': 'void | Gmagick', 'return_type': 'Gmagick'},
\     'flopimage': { 'signature': 'void | Gmagick', 'return_type': 'Gmagick'},
\     'frameimage': { 'signature': 'GmagickPixel $color, int $width, int $height, int $inner_bevel, int $outer_bevel | Gmagick', 'return_type': 'Gmagick'},
\     'gammaimage': { 'signature': 'float $gamma | Gmagick', 'return_type': 'Gmagick'},
\     'getcopyright': { 'signature': 'void | string', 'return_type': 'string'},
\     'getfilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getimagebackgroundcolor': { 'signature': 'void | void', 'return_type': 'void'},
\     'getimageblueprimary': { 'signature': 'void | array', 'return_type': 'array'},
\     'getimagebordercolor': { 'signature': 'void | void', 'return_type': 'void'},
\     'getimagechanneldepth': { 'signature': 'int $channel_type | int', 'return_type': 'int'},
\     'getimagecolors': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimagecolorspace': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimagecompose': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimagedelay': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimagedepth': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimagedispose': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimageextrema': { 'signature': 'void | array', 'return_type': 'array'},
\     'getimagefilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getimageformat': { 'signature': 'void | string', 'return_type': 'string'},
\     'getimagegamma': { 'signature': 'void | float', 'return_type': 'float'},
\     'getimagegreenprimary': { 'signature': 'void | array', 'return_type': 'array'},
\     'getimageheight': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimagehistogram': { 'signature': 'void | array', 'return_type': 'array'},
\     'getimageindex': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimageinterlacescheme': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimageiterations': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimagematte': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimagemattecolor': { 'signature': 'void | void', 'return_type': 'void'},
\     'getimageprofile': { 'signature': 'string $name | string', 'return_type': 'string'},
\     'getimageredprimary': { 'signature': 'void | array', 'return_type': 'array'},
\     'getimagerenderingintent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimageresolution': { 'signature': 'void | array', 'return_type': 'array'},
\     'getimagescene': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimagesignature': { 'signature': 'void | string', 'return_type': 'string'},
\     'getimagetype': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimageunits': { 'signature': 'void | int', 'return_type': 'int'},
\     'getimagewhitepoint': { 'signature': 'void | array', 'return_type': 'array'},
\     'getimagewidth': { 'signature': 'void | int', 'return_type': 'int'},
\     'getpackagename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getquantumdepth': { 'signature': 'void | array', 'return_type': 'array'},
\     'getreleasedate': { 'signature': 'void | string', 'return_type': 'string'},
\     'getsamplingfactors': { 'signature': 'void | array', 'return_type': 'array'},
\     'getsize': { 'signature': 'void | array', 'return_type': 'array'},
\     'getversion': { 'signature': 'void | array', 'return_type': 'array'},
\     'hasnextimage': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'haspreviousimage': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'implodeimage': { 'signature': 'float $radius | mixed', 'return_type': 'mixed'},
\     'labelimage': { 'signature': 'string $label | mixed', 'return_type': 'mixed'},
\     'levelimage': { 'signature': 'float $blackPoint, float $gamma, float $whitePoint [, int $channel = Gmagick::CHANNEL_DEFAULT] | mixed', 'return_type': 'mixed'},
\     'magnifyimage': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'mapimage': { 'signature': 'gmagick $gmagick, bool $dither | Gmagick', 'return_type': 'Gmagick'},
\     'medianfilterimage': { 'signature': 'float $radius | void', 'return_type': 'void'},
\     'minifyimage': { 'signature': 'void | void', 'return_type': 'void'},
\     'modulateimage': { 'signature': 'float $brightness, float $saturation, float $hue | void', 'return_type': 'void'},
\     'motionblurimage': { 'signature': 'float $radius, float $sigma, float $angle | void', 'return_type': 'void'},
\     'newimage': { 'signature': 'int $width, int $height, string $background [, string $format] | void', 'return_type': 'void'},
\     'nextimage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'normalizeimage': { 'signature': '[ int $channel] | void', 'return_type': 'void'},
\     'oilpaintimage': { 'signature': 'float $radius | void', 'return_type': 'void'},
\     'previousimage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'profileimage': { 'signature': 'string $name, string $profile | void', 'return_type': 'void'},
\     'quantizeimage': { 'signature': 'int $numColors, int $colorspace, int $treeDepth, bool $dither, bool $measureError | void', 'return_type': 'void'},
\     'quantizeimages': { 'signature': 'int $numColors, int $colorspace, int $treeDepth, bool $dither, bool $measureError | void', 'return_type': 'void'},
\     'queryfontmetrics': { 'signature': 'GmagickDraw $draw, string $text | array', 'return_type': 'array'},
\     'queryfonts': { 'signature': '[ string $pattern = "*"] | array', 'return_type': 'array'},
\     'queryformats': { 'signature': '[ string $pattern = "*"] | array', 'return_type': 'array'},
\     'radialblurimage': { 'signature': 'float $angle [, int $channel = Gmagick::CHANNEL_DEFAULT] | void', 'return_type': 'void'},
\     'raiseimage': { 'signature': 'int $width, int $height, int $x, int $y, bool $raise | void', 'return_type': 'void'},
\     'read': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'readimage': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'readimageblob': { 'signature': 'string $imageContents [, string $filename] | void', 'return_type': 'void'},
\     'readimagefile': { 'signature': 'resource $fp [, string $filename] | void', 'return_type': 'void'},
\     'reducenoiseimage': { 'signature': 'float $radius | void', 'return_type': 'void'},
\     'removeimage': { 'signature': 'void | void', 'return_type': 'void'},
\     'removeimageprofile': { 'signature': 'string $name | string', 'return_type': 'string'},
\     'resampleimage': { 'signature': 'float $xResolution, float $yResolution, int $filter, float $blur | void', 'return_type': 'void'},
\     'resizeimage': { 'signature': 'int $width, int $height, int $filter, float $blur [, bool $fit = false] | void', 'return_type': 'void'},
\     'rollimage': { 'signature': 'int $x, int $y | void', 'return_type': 'void'},
\     'rotateimage': { 'signature': 'mixed $color, float $degrees | Gmagick', 'return_type': 'Gmagick'},
\     'scaleimage': { 'signature': 'int $width, int $height [, bool $fit = false] | Gmagick', 'return_type': 'Gmagick'},
\     'separateimagechannel': { 'signature': 'int $channel | Gmagick', 'return_type': 'Gmagick'},
\     'setfilename': { 'signature': 'string $filename | Gmagick', 'return_type': 'Gmagick'},
\     'setimagebackgroundcolor': { 'signature': 'GmagickPixel $color | Gmagick', 'return_type': 'Gmagick'},
\     'setimageblueprimary': { 'signature': 'float $x, float $y | Gmagick', 'return_type': 'Gmagick'},
\     'setimagebordercolor': { 'signature': 'GmagickPixel $color | Gmagick', 'return_type': 'Gmagick'},
\     'setimagechanneldepth': { 'signature': 'int $channel, int $depth | Gmagick', 'return_type': 'Gmagick'},
\     'setimagecolorspace': { 'signature': 'int $colorspace | Gmagick', 'return_type': 'Gmagick'},
\     'setimagecompose': { 'signature': 'int $composite | Gmagick', 'return_type': 'Gmagick'},
\     'setimagedelay': { 'signature': 'int $delay | Gmagick', 'return_type': 'Gmagick'},
\     'setimagedepth': { 'signature': 'int $depth | Gmagick', 'return_type': 'Gmagick'},
\     'setimagedispose': { 'signature': 'int $disposeType | Gmagick', 'return_type': 'Gmagick'},
\     'setimagefilename': { 'signature': 'string $filename | Gmagick', 'return_type': 'Gmagick'},
\     'setimageformat': { 'signature': 'string $imageFormat | Gmagick', 'return_type': 'Gmagick'},
\     'setimagegamma': { 'signature': 'float $gamma | Gmagick', 'return_type': 'Gmagick'},
\     'setimagegreenprimary': { 'signature': 'float $x, float $y | Gmagick', 'return_type': 'Gmagick'},
\     'setimageindex': { 'signature': 'int $index | Gmagick', 'return_type': 'Gmagick'},
\     'setimageinterlacescheme': { 'signature': 'int $interlace | Gmagick', 'return_type': 'Gmagick'},
\     'setimageiterations': { 'signature': 'int $iterations | Gmagick', 'return_type': 'Gmagick'},
\     'setimageprofile': { 'signature': 'string $name, string $profile | Gmagick', 'return_type': 'Gmagick'},
\     'setimageredprimary': { 'signature': 'float $x, float $y | Gmagick', 'return_type': 'Gmagick'},
\     'setimagerenderingintent': { 'signature': 'int $rendering_intent | Gmagick', 'return_type': 'Gmagick'},
\     'setimageresolution': { 'signature': 'float $xResolution, float $yResolution | Gmagick', 'return_type': 'Gmagick'},
\     'setimagescene': { 'signature': 'int $scene | Gmagick', 'return_type': 'Gmagick'},
\     'setimagetype': { 'signature': 'int $imgType | Gmagick', 'return_type': 'Gmagick'},
\     'setimageunits': { 'signature': 'int $resolution | Gmagick', 'return_type': 'Gmagick'},
\     'setimagewhitepoint': { 'signature': 'float $x, float $y | Gmagick', 'return_type': 'Gmagick'},
\     'setsamplingfactors': { 'signature': 'array $factors | Gmagick', 'return_type': 'Gmagick'},
\     'setsize': { 'signature': 'int $columns, int $rows | Gmagick', 'return_type': 'Gmagick'},
\     'shearimage': { 'signature': 'mixed $color, float $xShear, float $yShear | Gmagick', 'return_type': 'Gmagick'},
\     'solarizeimage': { 'signature': 'int $threshold | Gmagick', 'return_type': 'Gmagick'},
\     'spreadimage': { 'signature': 'float $radius | Gmagick', 'return_type': 'Gmagick'},
\     'stripimage': { 'signature': 'void | Gmagick', 'return_type': 'Gmagick'},
\     'swirlimage': { 'signature': 'float $degrees | Gmagick', 'return_type': 'Gmagick'},
\     'thumbnailimage': { 'signature': 'int $width, int $height [, bool $fit = false] | Gmagick', 'return_type': 'Gmagick'},
\     'trimimage': { 'signature': 'float $fuzz | Gmagick', 'return_type': 'Gmagick'},
\     'write': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'writeimage': { 'signature': 'string $filename [, bool $all_frames = false] | Gmagick', 'return_type': 'Gmagick'},
\   },
\   'static_methods': {
\   },
\},
\'GmagickDraw': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'annotate': { 'signature': 'float $x, float $y, string $text | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'arc': { 'signature': 'float $sx, float $sy, float $ex, float $ey, float $sd, float $ed | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'bezier': { 'signature': 'array $coordinate_array | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'ellipse': { 'signature': 'float $ox, float $oy, float $rx, float $ry, float $start, float $end | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'getfillcolor': { 'signature': 'void | void', 'return_type': 'void'},
\     'getfillopacity': { 'signature': 'void | float', 'return_type': 'float'},
\     'getfont': { 'signature': 'void | string', 'return_type': 'string'},
\     'getfontsize': { 'signature': 'void | float', 'return_type': 'float'},
\     'getfontstyle': { 'signature': 'void | int', 'return_type': 'int'},
\     'getfontweight': { 'signature': 'void | int', 'return_type': 'int'},
\     'getstrokecolor': { 'signature': 'void | void', 'return_type': 'void'},
\     'getstrokeopacity': { 'signature': 'void | float', 'return_type': 'float'},
\     'getstrokewidth': { 'signature': 'void | float', 'return_type': 'float'},
\     'gettextdecoration': { 'signature': 'void | int', 'return_type': 'int'},
\     'gettextencoding': { 'signature': 'void | string', 'return_type': 'string'},
\     'line': { 'signature': 'float $sx, float $sy, float $ex, float $ey | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'point': { 'signature': 'float $x, float $y | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'polygon': { 'signature': 'array $coordinates | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'polyline': { 'signature': 'array $coordinate_array | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'rectangle': { 'signature': 'float $x1, float $y1, float $x2, float $y2 | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'rotate': { 'signature': 'float $degrees | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'roundrectangle': { 'signature': 'float $x1, float $y1, float $x2, float $y2, float $rx, float $ry | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'scale': { 'signature': 'float $x, float $y | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'setfillcolor': { 'signature': 'string $color | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'setfillopacity': { 'signature': 'float $fill_opacity | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'setfont': { 'signature': 'string $font | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'setfontsize': { 'signature': 'float $pointsize | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'setfontstyle': { 'signature': 'int $style | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'setfontweight': { 'signature': 'int $weight | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'setstrokecolor': { 'signature': 'GmagickPixel $color | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'setstrokeopacity': { 'signature': 'float $stroke_opacity | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'setstrokewidth': { 'signature': 'float $width | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'settextdecoration': { 'signature': 'int $decoration | GmagickDraw', 'return_type': 'GmagickDraw'},
\     'settextencoding': { 'signature': 'string $encoding | GmagickDraw', 'return_type': 'GmagickDraw'},
\   },
\   'static_methods': {
\   },
\},
\'GmagickPixel': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $color]', 'return_type': ''},
\     'getcolor': { 'signature': '[ bool $as_array [, bool $normalize_array]] | mixed', 'return_type': 'mixed'},
\     'getcolorcount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getcolorvalue': { 'signature': 'int $color | float', 'return_type': 'float'},
\     'setcolor': { 'signature': 'string $color | GmagickPixel', 'return_type': 'GmagickPixel'},
\     'setcolorvalue': { 'signature': 'int $color, float $value | GmagickPixel', 'return_type': 'GmagickPixel'},
\   },
\   'static_methods': {
\   },
\},
\'HaruAnnotation': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'setBorderStyle': { 'signature': 'float $width, int $dash_on, int $dash_off | bool', 'return_type': 'bool'},
\     'setHighlightMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\     'setIcon': { 'signature': 'int $icon | bool', 'return_type': 'bool'},
\     'setOpened': { 'signature': 'bool $opened | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HaruDestination': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'setFit': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setFitB': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setFitBH': { 'signature': 'float $top | bool', 'return_type': 'bool'},
\     'setFitBV': { 'signature': 'float $left | bool', 'return_type': 'bool'},
\     'setFitH': { 'signature': 'float $top | bool', 'return_type': 'bool'},
\     'setFitR': { 'signature': 'float $left, float $bottom, float $right, float $top | bool', 'return_type': 'bool'},
\     'setFitV': { 'signature': 'float $left | bool', 'return_type': 'bool'},
\     'setXYZ': { 'signature': 'float $left, float $top, float $zoom | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HaruDoc': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addPage': { 'signature': 'void | object', 'return_type': 'object'},
\     'addPageLabel': { 'signature': 'int $first_page, int $style, int $first_num [, string $prefix = ""] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'createOutline': { 'signature': 'string $title [, object $parent_outline [, object $encoder]] | object', 'return_type': 'object'},
\     'getCurrentEncoder': { 'signature': 'void | object', 'return_type': 'object'},
\     'getCurrentPage': { 'signature': 'void | object', 'return_type': 'object'},
\     'getEncoder': { 'signature': 'string $encoding | object', 'return_type': 'object'},
\     'getFont': { 'signature': 'string $fontname [, string $encoding] | object', 'return_type': 'object'},
\     'getInfoAttr': { 'signature': 'int $type | string', 'return_type': 'string'},
\     'getPageLayout': { 'signature': 'void | int', 'return_type': 'int'},
\     'getPageMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStreamSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'insertPage': { 'signature': 'object $page | object', 'return_type': 'object'},
\     'loadJPEG': { 'signature': 'string $filename | object', 'return_type': 'object'},
\     'loadPNG': { 'signature': 'string $filename [, bool $deferred = false] | object', 'return_type': 'object'},
\     'loadRaw': { 'signature': 'string $filename, int $width, int $height, int $color_space | object', 'return_type': 'object'},
\     'loadTTC': { 'signature': 'string $fontfile, int $index [, bool $embed = false] | string', 'return_type': 'string'},
\     'loadTTF': { 'signature': 'string $fontfile [, bool $embed = false] | string', 'return_type': 'string'},
\     'loadType1': { 'signature': 'string $afmfile [, string $pfmfile] | string', 'return_type': 'string'},
\     'output': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'readFromStream': { 'signature': 'int $bytes | string', 'return_type': 'string'},
\     'resetError': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'resetStream': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'save': { 'signature': 'string $file | bool', 'return_type': 'bool'},
\     'saveToStream': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setCompressionMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\     'setCurrentEncoder': { 'signature': 'string $encoding | bool', 'return_type': 'bool'},
\     'setEncryptionMode': { 'signature': 'int $mode [, int $key_len = 5] | bool', 'return_type': 'bool'},
\     'setInfoAttr': { 'signature': 'int $type, string $info | bool', 'return_type': 'bool'},
\     'setInfoDateAttr': { 'signature': 'int $type, int $year, int $month, int $day, int $hour, int $min, int $sec, string $ind, int $off_hour, int $off_min | bool', 'return_type': 'bool'},
\     'setOpenAction': { 'signature': 'object $destination | bool', 'return_type': 'bool'},
\     'setPageLayout': { 'signature': 'int $layout | bool', 'return_type': 'bool'},
\     'setPageMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\     'setPagesConfiguration': { 'signature': 'int $page_per_pages | bool', 'return_type': 'bool'},
\     'setPassword': { 'signature': 'string $owner_password, string $user_password | bool', 'return_type': 'bool'},
\     'setPermission': { 'signature': 'int $permission | bool', 'return_type': 'bool'},
\     'useCNSEncodings': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useCNSFonts': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useCNTEncodings': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useCNTFonts': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useJPEncodings': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useJPFonts': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useKREncodings': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useKRFonts': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HaruEncoder': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getByteType': { 'signature': 'string $text, int $index | int', 'return_type': 'int'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'getUnicode': { 'signature': 'int $character | int', 'return_type': 'int'},
\     'getWritingMode': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'HaruException': {
\   'constants': {
\   },
\   'properties': {
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
\'HaruFont': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getAscent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getCapHeight': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDescent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getEncodingName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFontName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTextWidth': { 'signature': 'string $text | array', 'return_type': 'array'},
\     'getUnicodeWidth': { 'signature': 'int $character | int', 'return_type': 'int'},
\     'getXHeight': { 'signature': 'void | int', 'return_type': 'int'},
\     'measureText': { 'signature': 'string $text, float $width, float $font_size, float $char_space, float $word_space [, bool $word_wrap = false] | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'HaruImage': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getBitsPerComponent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getColorSpace': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHeight': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSize': { 'signature': 'void | array', 'return_type': 'array'},
\     'getWidth': { 'signature': 'void | int', 'return_type': 'int'},
\     'setColorMask': { 'signature': 'int $rmin, int $rmax, int $gmin, int $gmax, int $bmin, int $bmax | bool', 'return_type': 'bool'},
\     'setMaskImage': { 'signature': 'object $mask_image | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HaruOutline': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'setDestination': { 'signature': 'object $destination | bool', 'return_type': 'bool'},
\     'setOpened': { 'signature': 'bool $opened | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HaruPage': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'arc': { 'signature': 'float $x, float $y, float $ray, float $ang1, float $ang2 | bool', 'return_type': 'bool'},
\     'beginText': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'circle': { 'signature': 'float $x, float $y, float $ray | bool', 'return_type': 'bool'},
\     'closePath': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'concat': { 'signature': 'float $a, float $b, float $c, float $d, float $x, float $y | bool', 'return_type': 'bool'},
\     'createDestination': { 'signature': 'void | object', 'return_type': 'object'},
\     'createLinkAnnotation': { 'signature': 'array $rectangle, object $destination | object', 'return_type': 'object'},
\     'createTextAnnotation': { 'signature': 'array $rectangle, string $text [, object $encoder] | object', 'return_type': 'object'},
\     'createURLAnnotation': { 'signature': 'array $rectangle, string $url | object', 'return_type': 'object'},
\     'curveTo2': { 'signature': 'float $x2, float $y2, float $x3, float $y3 | bool', 'return_type': 'bool'},
\     'curveTo3': { 'signature': 'float $x1, float $y1, float $x3, float $y3 | bool', 'return_type': 'bool'},
\     'curveTo': { 'signature': 'float $x1, float $y1, float $x2, float $y2, float $x3, float $y3 | bool', 'return_type': 'bool'},
\     'drawImage': { 'signature': 'object $image, float $x, float $y, float $width, float $height | bool', 'return_type': 'bool'},
\     'ellipse': { 'signature': 'float $x, float $y, float $xray, float $yray | bool', 'return_type': 'bool'},
\     'endPath': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'endText': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'eofill': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'eoFillStroke': { 'signature': '[ bool $close_path = false] | bool', 'return_type': 'bool'},
\     'fill': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'fillStroke': { 'signature': '[ bool $close_path = false] | bool', 'return_type': 'bool'},
\     'getCharSpace': { 'signature': 'void | float', 'return_type': 'float'},
\     'getCMYKFill': { 'signature': 'void | array', 'return_type': 'array'},
\     'getCMYKStroke': { 'signature': 'void | array', 'return_type': 'array'},
\     'getCurrentFont': { 'signature': 'void | object', 'return_type': 'object'},
\     'getCurrentFontSize': { 'signature': 'void | float', 'return_type': 'float'},
\     'getCurrentPos': { 'signature': 'void | array', 'return_type': 'array'},
\     'getCurrentTextPos': { 'signature': 'void | array', 'return_type': 'array'},
\     'getDash': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFillingColorSpace': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFlatness': { 'signature': 'void | float', 'return_type': 'float'},
\     'getGMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getGrayFill': { 'signature': 'void | float', 'return_type': 'float'},
\     'getGrayStroke': { 'signature': 'void | float', 'return_type': 'float'},
\     'getHeight': { 'signature': 'void | float', 'return_type': 'float'},
\     'getHorizontalScaling': { 'signature': 'void | float', 'return_type': 'float'},
\     'getLineCap': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLineJoin': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLineWidth': { 'signature': 'void | float', 'return_type': 'float'},
\     'getMiterLimit': { 'signature': 'void | float', 'return_type': 'float'},
\     'getRGBFill': { 'signature': 'void | array', 'return_type': 'array'},
\     'getRGBStroke': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStrokingColorSpace': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTextLeading': { 'signature': 'void | float', 'return_type': 'float'},
\     'getTextMatrix': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTextRenderingMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTextRise': { 'signature': 'void | float', 'return_type': 'float'},
\     'getTextWidth': { 'signature': 'string $text | float', 'return_type': 'float'},
\     'getTransMatrix': { 'signature': 'void | array', 'return_type': 'array'},
\     'getWidth': { 'signature': 'void | float', 'return_type': 'float'},
\     'getWordSpace': { 'signature': 'void | float', 'return_type': 'float'},
\     'lineTo': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'measureText': { 'signature': 'string $text, float $width [, bool $wordwrap = false] | int', 'return_type': 'int'},
\     'moveTextPos': { 'signature': 'float $x, float $y [, bool $set_leading = false] | bool', 'return_type': 'bool'},
\     'moveTo': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'moveToNextLine': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rectangle': { 'signature': 'float $x, float $y, float $width, float $height | bool', 'return_type': 'bool'},
\     'setCharSpace': { 'signature': 'float $char_space | bool', 'return_type': 'bool'},
\     'setCMYKFill': { 'signature': 'float $c, float $m, float $y, float $k | bool', 'return_type': 'bool'},
\     'setCMYKStroke': { 'signature': 'float $c, float $m, float $y, float $k | bool', 'return_type': 'bool'},
\     'setDash': { 'signature': 'array $pattern, int $phase | bool', 'return_type': 'bool'},
\     'setFlatness': { 'signature': 'float $flatness | bool', 'return_type': 'bool'},
\     'setFontAndSize': { 'signature': 'object $font, float $size | bool', 'return_type': 'bool'},
\     'setGrayFill': { 'signature': 'float $value | bool', 'return_type': 'bool'},
\     'setGrayStroke': { 'signature': 'float $value | bool', 'return_type': 'bool'},
\     'setHeight': { 'signature': 'float $height | bool', 'return_type': 'bool'},
\     'setHorizontalScaling': { 'signature': 'float $scaling | bool', 'return_type': 'bool'},
\     'setLineCap': { 'signature': 'int $cap | bool', 'return_type': 'bool'},
\     'setLineJoin': { 'signature': 'int $join | bool', 'return_type': 'bool'},
\     'setLineWidth': { 'signature': 'float $width | bool', 'return_type': 'bool'},
\     'setMiterLimit': { 'signature': 'float $limit | bool', 'return_type': 'bool'},
\     'setRGBFill': { 'signature': 'float $r, float $g, float $b | bool', 'return_type': 'bool'},
\     'setRGBStroke': { 'signature': 'float $r, float $g, float $b | bool', 'return_type': 'bool'},
\     'setRotate': { 'signature': 'int $angle | bool', 'return_type': 'bool'},
\     'setSize': { 'signature': 'int $size, int $direction | bool', 'return_type': 'bool'},
\     'setSlideShow': { 'signature': 'int $type, float $disp_time, float $trans_time | bool', 'return_type': 'bool'},
\     'setTextLeading': { 'signature': 'float $text_leading | bool', 'return_type': 'bool'},
\     'setTextMatrix': { 'signature': 'float $a, float $b, float $c, float $d, float $x, float $y | bool', 'return_type': 'bool'},
\     'setTextRenderingMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\     'setTextRise': { 'signature': 'float $rise | bool', 'return_type': 'bool'},
\     'setWidth': { 'signature': 'float $width | bool', 'return_type': 'bool'},
\     'setWordSpace': { 'signature': 'float $word_space | bool', 'return_type': 'bool'},
\     'showText': { 'signature': 'string $text | bool', 'return_type': 'bool'},
\     'showTextNextLine': { 'signature': 'string $text [, float $word_space = 0 [, float $char_space = 0]] | bool', 'return_type': 'bool'},
\     'stroke': { 'signature': '[ bool $close_path = false] | bool', 'return_type': 'bool'},
\     'textOut': { 'signature': 'float $x, float $y, string $text | bool', 'return_type': 'bool'},
\     'textRect': { 'signature': 'float $left, float $top, float $right, float $bottom, string $text [, int $align = HaruPage::TALIGN_LEFT] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HttpDeflateStream': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ int $flags = 0]', 'return_type': ''},
\     'factory': { 'signature': '[ int $flags = 0 [, string $class_name = "HttpDeflateStream"]] | HttpDeflateStream', 'return_type': 'HttpDeflateStream'},
\     'finish': { 'signature': '[ string $data] | string', 'return_type': 'string'},
\     'flush': { 'signature': '[ string $data] | string', 'return_type': 'string'},
\     'update': { 'signature': 'string $data | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'HttpInflateStream': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ int $flags = 0]', 'return_type': ''},
\     'factory': { 'signature': '[ int $flags = 0 [, string $class_name = "HttpInflateStream"]] | HttpInflateStream', 'return_type': 'HttpInflateStream'},
\     'finish': { 'signature': '[ string $data] | string', 'return_type': 'string'},
\     'flush': { 'signature': '[ string $data] | string', 'return_type': 'string'},
\     'update': { 'signature': 'string $data | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'HttpMessage': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addHeaders': { 'signature': 'array $headers [, bool $append = false] | void', 'return_type': 'void'},
\     '__construct': { 'signature': '[ string $message]', 'return_type': ''},
\     'detach': { 'signature': 'void | HttpMessage', 'return_type': 'HttpMessage'},
\     'factory': { 'signature': '[ string $raw_message [, string $class_name = "HttpMessage"]] | HttpMessage', 'return_type': 'HttpMessage'},
\     'fromEnv': { 'signature': 'int $message_type [, string $class_name = "HttpMessage"] | HttpMessage', 'return_type': 'HttpMessage'},
\     'fromString': { 'signature': '[ string $raw_message [, string $class_name = "HttpMessage"]] | HttpMessage', 'return_type': 'HttpMessage'},
\     'getBody': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHeader': { 'signature': 'string $header | string', 'return_type': 'string'},
\     'getHeaders': { 'signature': 'void | array', 'return_type': 'array'},
\     'getHttpVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'getParentMessage': { 'signature': 'void | HttpMessage', 'return_type': 'HttpMessage'},
\     'getRequestMethod': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequestUrl': { 'signature': 'void | string', 'return_type': 'string'},
\     'getResponseCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getResponseStatus': { 'signature': 'void | string', 'return_type': 'string'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'guessContentType': { 'signature': 'string $magic_file [, int $magic_mode = MAGIC_MIME] | string', 'return_type': 'string'},
\     'prepend': { 'signature': 'HttpMessage $message [, bool $top = true] | void', 'return_type': 'void'},
\     'reverse': { 'signature': 'void | HttpMessage', 'return_type': 'HttpMessage'},
\     'send': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setBody': { 'signature': 'string $body | void', 'return_type': 'void'},
\     'setHeaders': { 'signature': 'array $headers | void', 'return_type': 'void'},
\     'setHttpVersion': { 'signature': 'string $version | bool', 'return_type': 'bool'},
\     'setRequestMethod': { 'signature': 'string $method | bool', 'return_type': 'bool'},
\     'setRequestUrl': { 'signature': 'string $url | bool', 'return_type': 'bool'},
\     'setResponseCode': { 'signature': 'int $code | bool', 'return_type': 'bool'},
\     'setResponseStatus': { 'signature': 'string $status | bool', 'return_type': 'bool'},
\     'setType': { 'signature': 'int $type | void', 'return_type': 'void'},
\     'toMessageTypeObject': { 'signature': 'void | HttpRequest|HttpResponse', 'return_type': 'HttpRequest|HttpResponse'},
\     'toString': { 'signature': '[ bool $include_parent = false] | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'HttpQueryString': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ bool $global = true [, mixed $add]]', 'return_type': ''},
\     'get': { 'signature': '[ string $key [, mixed $type = 0 [, mixed $defval = NULL [, bool $delete = false]]]] | mixed', 'return_type': 'mixed'},
\     'mod': { 'signature': 'mixed $params | HttpQueryString', 'return_type': 'HttpQueryString'},
\     'set': { 'signature': 'mixed $params | string', 'return_type': 'string'},
\     'singleton': { 'signature': '[ bool $global = true] | HttpQueryString', 'return_type': 'HttpQueryString'},
\     'toArray': { 'signature': 'void | array', 'return_type': 'array'},
\     'toString': { 'signature': 'void | string', 'return_type': 'string'},
\     'xlate': { 'signature': 'string $ie, string $oe | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HttpRequest': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addCookies': { 'signature': 'array $cookies | bool', 'return_type': 'bool'},
\     'addHeaders': { 'signature': 'array $headers | bool', 'return_type': 'bool'},
\     'addPostFields': { 'signature': 'array $post_data | bool', 'return_type': 'bool'},
\     'addPostFile': { 'signature': 'string $name, string $file [, string $content_type = "application/x-octetstream"] | bool', 'return_type': 'bool'},
\     'addPutData': { 'signature': 'string $put_data | bool', 'return_type': 'bool'},
\     'addQueryData': { 'signature': 'array $query_params | bool', 'return_type': 'bool'},
\     'addRawPostData': { 'signature': 'string $raw_post_data | bool', 'return_type': 'bool'},
\     'addSslOptions': { 'signature': 'array $options | bool', 'return_type': 'bool'},
\     'clearHistory': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': '[ string $url [, int $request_method = HTTP_METH_GET [, array $options]]]', 'return_type': ''},
\     'enableCookies': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getContentType': { 'signature': 'void | string', 'return_type': 'string'},
\     'getCookies': { 'signature': 'void | array', 'return_type': 'array'},
\     'getHeaders': { 'signature': 'void | array', 'return_type': 'array'},
\     'getHistory': { 'signature': 'void | HttpMessage', 'return_type': 'HttpMessage'},
\     'getMethod': { 'signature': 'void | int', 'return_type': 'int'},
\     'getOptions': { 'signature': 'void | array', 'return_type': 'array'},
\     'getPostFields': { 'signature': 'void | array', 'return_type': 'array'},
\     'getPostFiles': { 'signature': 'void | array', 'return_type': 'array'},
\     'getPutData': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPutFile': { 'signature': 'void | string', 'return_type': 'string'},
\     'getQueryData': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawPostData': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequestMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponseMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequestMessage': { 'signature': 'void | HttpMessage', 'return_type': 'HttpMessage'},
\     'getResponseBody': { 'signature': 'void | string', 'return_type': 'string'},
\     'getResponseCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getResponseCookies': { 'signature': '[ int $flags = 0 [, array $allowed_extras]] | array', 'return_type': 'array'},
\     'getResponseData': { 'signature': 'void | array', 'return_type': 'array'},
\     'getResponseHeader': { 'signature': '[ string $name] | mixed', 'return_type': 'mixed'},
\     'getResponseInfo': { 'signature': '[ string $name] | mixed', 'return_type': 'mixed'},
\     'getResponseMessage': { 'signature': 'void | HttpMessage', 'return_type': 'HttpMessage'},
\     'getResponseStatus': { 'signature': 'void | string', 'return_type': 'string'},
\     'getSslOptions': { 'signature': 'void | array', 'return_type': 'array'},
\     'getUrl': { 'signature': 'void | string', 'return_type': 'string'},
\     'resetCookies': { 'signature': '[ bool $session_only = false] | bool', 'return_type': 'bool'},
\     'send': { 'signature': 'void | HttpMessage', 'return_type': 'HttpMessage'},
\     'setBody': { 'signature': '[ string $request_body_data] | bool', 'return_type': 'bool'},
\     'setContentType': { 'signature': 'string $content_type | bool', 'return_type': 'bool'},
\     'setCookies': { 'signature': '[ array $cookies] | bool', 'return_type': 'bool'},
\     'setHeaders': { 'signature': '[ array $headers] | bool', 'return_type': 'bool'},
\     'setMethod': { 'signature': 'int $request_method | bool', 'return_type': 'bool'},
\     'setOptions': { 'signature': '[ array $options] | bool', 'return_type': 'bool'},
\     'setPostFields': { 'signature': 'array $post_data | bool', 'return_type': 'bool'},
\     'setPostFiles': { 'signature': 'array $post_files | bool', 'return_type': 'bool'},
\     'setPutData': { 'signature': '[ string $put_data] | bool', 'return_type': 'bool'},
\     'setPutFile': { 'signature': '[ string $file = ""] | bool', 'return_type': 'bool'},
\     'setQueryData': { 'signature': 'mixed $query_data | bool', 'return_type': 'bool'},
\     'setRawPostData': { 'signature': '[ string $raw_post_data] | bool', 'return_type': 'bool'},
\     'setSslOptions': { 'signature': '[ array $options] | bool', 'return_type': 'bool'},
\     'setUrl': { 'signature': 'string $url | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HttpRequestPool': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'attach': { 'signature': 'HttpRequest $request | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': '[ HttpRequest $request [, HttpRequest $...]]', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'detach': { 'signature': 'HttpRequest $request | bool', 'return_type': 'bool'},
\     'getAttachedRequests': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFinishedRequests': { 'signature': 'void | array', 'return_type': 'array'},
\     'reset': { 'signature': 'void | void', 'return_type': 'void'},
\     'send': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'socketPerform': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'socketSelect': { 'signature': '[ float $timeout = 0] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HttpResponse': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'capture': { 'signature': 'void | void', 'return_type': 'void'},
\     'getBufferSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'getCache': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getCacheControl': { 'signature': 'void | string', 'return_type': 'string'},
\     'getContentDisposition': { 'signature': 'void | string', 'return_type': 'string'},
\     'getContentType': { 'signature': 'void | string', 'return_type': 'string'},
\     'getData': { 'signature': 'void | string', 'return_type': 'string'},
\     'getETag': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFile': { 'signature': 'void | string', 'return_type': 'string'},
\     'getGzip': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getHeader': { 'signature': '[ string $name] | mixed', 'return_type': 'mixed'},
\     'getLastModified': { 'signature': 'void | int', 'return_type': 'int'},
\     'getRequestBody': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequestBodyStream': { 'signature': 'void | resource', 'return_type': 'resource'},
\     'getRequestHeaders': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStream': { 'signature': 'void | resource', 'return_type': 'resource'},
\     'getThrottleDelay': { 'signature': 'void | float', 'return_type': 'float'},
\     'guessContentType': { 'signature': 'string $magic_file [, int $magic_mode = MAGIC_MIME] | string', 'return_type': 'string'},
\     'redirect': { 'signature': '[ string $url [, array $params [, bool $session = false [, int $status]]]] | void', 'return_type': 'void'},
\     'send': { 'signature': '[ bool $clean_ob = true] | bool', 'return_type': 'bool'},
\     'setBufferSize': { 'signature': 'int $bytes | bool', 'return_type': 'bool'},
\     'setCache': { 'signature': 'bool $cache | bool', 'return_type': 'bool'},
\     'setCacheControl': { 'signature': 'string $control [, int $max_age = 0 [, bool $must_revalidate = true]] | bool', 'return_type': 'bool'},
\     'setContentDisposition': { 'signature': 'string $filename [, bool $inline = false] | bool', 'return_type': 'bool'},
\     'setContentType': { 'signature': 'string $content_type | bool', 'return_type': 'bool'},
\     'setData': { 'signature': 'mixed $data | bool', 'return_type': 'bool'},
\     'setETag': { 'signature': 'string $etag | bool', 'return_type': 'bool'},
\     'setFile': { 'signature': 'string $file | bool', 'return_type': 'bool'},
\     'setGzip': { 'signature': 'bool $gzip | bool', 'return_type': 'bool'},
\     'setHeader': { 'signature': 'string $name [, mixed $value [, bool $replace = true]] | bool', 'return_type': 'bool'},
\     'setLastModified': { 'signature': 'int $timestamp | bool', 'return_type': 'bool'},
\     'setStream': { 'signature': 'resource $stream | bool', 'return_type': 'bool'},
\     'setThrottleDelay': { 'signature': 'float $seconds | bool', 'return_type': 'bool'},
\     'status': { 'signature': 'int $status | bool', 'return_type': 'bool'},
\   },
\},
\'Imagick': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'adaptiveBlurImage': { 'signature': 'float $radius, float $sigma [, int $channel = Imagick::CHANNEL_DEFAULT] | bool', 'return_type': 'bool'},
\     'adaptiveResizeImage': { 'signature': 'int $columns, int $rows [, bool $bestfit = false] | bool', 'return_type': 'bool'},
\     'adaptiveSharpenImage': { 'signature': 'float $radius, float $sigma [, int $channel = Imagick::CHANNEL_DEFAULT] | bool', 'return_type': 'bool'},
\     'adaptiveThresholdImage': { 'signature': 'int $width, int $height, int $offset | bool', 'return_type': 'bool'},
\     'addImage': { 'signature': 'Imagick $source | bool', 'return_type': 'bool'},
\     'addNoiseImage': { 'signature': 'int $noise_type [, int $channel = Imagick::CHANNEL_DEFAULT] | bool', 'return_type': 'bool'},
\     'affineTransformImage': { 'signature': 'ImagickDraw $matrix | bool', 'return_type': 'bool'},
\     'animateImages': { 'signature': 'string $x_server | bool', 'return_type': 'bool'},
\     'annotateImage': { 'signature': 'ImagickDraw $draw_settings, float $x, float $y, float $angle, string $text | bool', 'return_type': 'bool'},
\     'appendImages': { 'signature': '[ bool $stack = false] | Imagick', 'return_type': 'Imagick'},
\     'averageImages': { 'signature': 'void | Imagick', 'return_type': 'Imagick'},
\     'blackThresholdImage': { 'signature': 'mixed $threshold | bool', 'return_type': 'bool'},
\     'blurImage': { 'signature': 'float $radius, float $sigma [, int $channel] | bool', 'return_type': 'bool'},
\     'borderImage': { 'signature': 'mixed $bordercolor, int $width, int $height | bool', 'return_type': 'bool'},
\     'charcoalImage': { 'signature': 'float $radius, float $sigma | bool', 'return_type': 'bool'},
\     'chopImage': { 'signature': 'int $width, int $height, int $x, int $y | bool', 'return_type': 'bool'},
\     'clear': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'clipImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'clipPathImage': { 'signature': 'string $pathname, bool $inside | bool', 'return_type': 'bool'},
\     'clone': { 'signature': 'void | Imagick', 'return_type': 'Imagick'},
\     'clutImage': { 'signature': 'Imagick $lookup_table [, float $channel = Imagick::CHANNEL_DEFAULT] | bool', 'return_type': 'bool'},
\     'coalesceImages': { 'signature': 'void | Imagick', 'return_type': 'Imagick'},
\     'colorFloodfillImage': { 'signature': 'mixed $fill, float $fuzz, mixed $bordercolor, int $x, int $y | bool', 'return_type': 'bool'},
\     'colorizeImage': { 'signature': 'mixed $colorize, mixed $opacity | bool', 'return_type': 'bool'},
\     'combineImages': { 'signature': 'int $channelType | Imagick', 'return_type': 'Imagick'},
\     'commentImage': { 'signature': 'string $comment | bool', 'return_type': 'bool'},
\     'compareImageChannels': { 'signature': 'Imagick $image, int $channelType, int $metricType | array', 'return_type': 'array'},
\     'compareImageLayers': { 'signature': 'int $method | Imagick', 'return_type': 'Imagick'},
\     'compareImages': { 'signature': 'Imagick $compare, int $metric | array', 'return_type': 'array'},
\     'compositeImage': { 'signature': 'Imagick $composite_object, int $composite, int $x, int $y [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'mixed $files', 'return_type': ''},
\     'contrastImage': { 'signature': 'bool $sharpen | bool', 'return_type': 'bool'},
\     'contrastStretchImage': { 'signature': 'float $black_point, float $white_point [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'convolveImage': { 'signature': 'array $kernel [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'cropImage': { 'signature': 'int $width, int $height, int $x, int $y | bool', 'return_type': 'bool'},
\     'cropThumbnailImage': { 'signature': 'int $width, int $height | bool', 'return_type': 'bool'},
\     'current': { 'signature': 'void | Imagick', 'return_type': 'Imagick'},
\     'cycleColormapImage': { 'signature': 'int $displace | bool', 'return_type': 'bool'},
\     'decipherImage': { 'signature': 'string $passphrase | bool', 'return_type': 'bool'},
\     'deconstructImages': { 'signature': 'void | Imagick', 'return_type': 'Imagick'},
\     'deleteImageArtifact': { 'signature': 'string $artifact | bool', 'return_type': 'bool'},
\     'deskewImage': { 'signature': 'float $threshold | bool', 'return_type': 'bool'},
\     'despeckleImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'destroy': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'displayImage': { 'signature': 'string $servername | bool', 'return_type': 'bool'},
\     'displayImages': { 'signature': 'string $servername | bool', 'return_type': 'bool'},
\     'distortImage': { 'signature': 'int $method, array $arguments, bool $bestfit | bool', 'return_type': 'bool'},
\     'drawImage': { 'signature': 'ImagickDraw $draw | bool', 'return_type': 'bool'},
\     'edgeImage': { 'signature': 'float $radius | bool', 'return_type': 'bool'},
\     'embossImage': { 'signature': 'float $radius, float $sigma | bool', 'return_type': 'bool'},
\     'encipherImage': { 'signature': 'string $passphrase | bool', 'return_type': 'bool'},
\     'enhanceImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'equalizeImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'evaluateImage': { 'signature': 'int $op, float $constant [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'exportImagePixels': { 'signature': 'int $x, int $y, int $width, int $height, string $map, int $STORAGE | array', 'return_type': 'array'},
\     'extentImage': { 'signature': 'int $width, int $height, int $x, int $y | bool', 'return_type': 'bool'},
\     'flattenImages': { 'signature': 'void | Imagick', 'return_type': 'Imagick'},
\     'flipImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'floodFillPaintImage': { 'signature': 'mixed $fill, float $fuzz, mixed $target, int $x, int $y, bool $invert [, int $channel = Imagick::CHANNEL_DEFAULT] | bool', 'return_type': 'bool'},
\     'flopImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'frameImage': { 'signature': 'mixed $matte_color, int $width, int $height, int $inner_bevel, int $outer_bevel | bool', 'return_type': 'bool'},
\     'functionImage': { 'signature': 'int $function, array $arguments [, int $channel = Imagick::CHANNEL_DEFAULT] | bool', 'return_type': 'bool'},
\     'fxImage': { 'signature': 'string $expression [, int $channel = Imagick::CHANNEL_ALL] | Imagick', 'return_type': 'Imagick'},
\     'gammaImage': { 'signature': 'float $gamma [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'gaussianBlurImage': { 'signature': 'float $radius, float $sigma [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'getColorspace': { 'signature': 'void | int', 'return_type': 'int'},
\     'getCompression': { 'signature': 'void | int', 'return_type': 'int'},
\     'getCompressionQuality': { 'signature': 'void | int', 'return_type': 'int'},
\     'getCopyright': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFont': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFormat': { 'signature': 'void | string', 'return_type': 'string'},
\     'getGravity': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHomeURL': { 'signature': 'void | string', 'return_type': 'string'},
\     'getImage': { 'signature': 'void | Imagick', 'return_type': 'Imagick'},
\     'getImageAlphaChannel': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageArtifact': { 'signature': 'string $artifact | string', 'return_type': 'string'},
\     'getImageBackgroundColor': { 'signature': 'void | ImagickPixel', 'return_type': 'ImagickPixel'},
\     'getImageBlob': { 'signature': 'void | string', 'return_type': 'string'},
\     'getImageBluePrimary': { 'signature': 'void | array', 'return_type': 'array'},
\     'getImageBorderColor': { 'signature': 'void | ImagickPixel', 'return_type': 'ImagickPixel'},
\     'getImageChannelDepth': { 'signature': 'int $channel | int', 'return_type': 'int'},
\     'getImageChannelDistortion': { 'signature': 'Imagick $reference, int $channel, int $metric | float', 'return_type': 'float'},
\     'getImageChannelDistortions': { 'signature': 'Imagick $reference, int $metric [, int $channel = Imagick::CHANNEL_DEFAULT] | float', 'return_type': 'float'},
\     'getImageChannelExtrema': { 'signature': 'int $channel | array', 'return_type': 'array'},
\     'getImageChannelKurtosis': { 'signature': '[ int $channel = Imagick::CHANNEL_DEFAULT] | array', 'return_type': 'array'},
\     'getImageChannelMean': { 'signature': 'int $channel | array', 'return_type': 'array'},
\     'getImageChannelRange': { 'signature': 'int $channel | array', 'return_type': 'array'},
\     'getImageChannelStatistics': { 'signature': 'void | array', 'return_type': 'array'},
\     'getImageClipMask': { 'signature': 'void | Imagick', 'return_type': 'Imagick'},
\     'getImageColormapColor': { 'signature': 'int $index | ImagickPixel', 'return_type': 'ImagickPixel'},
\     'getImageColors': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageColorspace': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageCompose': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageCompression': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageDelay': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageDepth': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageDispose': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageDistortion': { 'signature': 'MagickWand $reference, int $metric | float', 'return_type': 'float'},
\     'getImageExtrema': { 'signature': 'void | array', 'return_type': 'array'},
\     'getImageFilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getImageFormat': { 'signature': 'void | string', 'return_type': 'string'},
\     'getImageGamma': { 'signature': 'void | float', 'return_type': 'float'},
\     'getImageGeometry': { 'signature': 'void | array', 'return_type': 'array'},
\     'getImageGravity': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageGreenPrimary': { 'signature': 'void | array', 'return_type': 'array'},
\     'getImageHeight': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageHistogram': { 'signature': 'void | array', 'return_type': 'array'},
\     'getImageIndex': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageInterlaceScheme': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageInterpolateMethod': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageIterations': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageLength': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageMagickLicense': { 'signature': 'void | string', 'return_type': 'string'},
\     'getImageMatte': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getImageMatteColor': { 'signature': 'void | ImagickPixel', 'return_type': 'ImagickPixel'},
\     'getImageOrientation': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImagePage': { 'signature': 'void | array', 'return_type': 'array'},
\     'getImagePixelColor': { 'signature': 'int $x, int $y | ImagickPixel', 'return_type': 'ImagickPixel'},
\     'getImageProfile': { 'signature': 'string $name | string', 'return_type': 'string'},
\     'getImageProfiles': { 'signature': '[ string $pattern = "*" [, bool $only_names = true]] | array', 'return_type': 'array'},
\     'getImageProperties': { 'signature': '[ string $pattern = "*" [, bool $only_names = true]] | array', 'return_type': 'array'},
\     'getImageProperty': { 'signature': 'string $name | string', 'return_type': 'string'},
\     'getImageRedPrimary': { 'signature': 'void | array', 'return_type': 'array'},
\     'getImageRegion': { 'signature': 'int $width, int $height, int $x, int $y | Imagick', 'return_type': 'Imagick'},
\     'getImageRenderingIntent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageResolution': { 'signature': 'void | array', 'return_type': 'array'},
\     'getImagesBlob': { 'signature': 'void | string', 'return_type': 'string'},
\     'getImageScene': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageSignature': { 'signature': 'void | string', 'return_type': 'string'},
\     'getImageSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageTicksPerSecond': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageTotalInkDensity': { 'signature': 'void | float', 'return_type': 'float'},
\     'getImageType': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageUnits': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageVirtualPixelMethod': { 'signature': 'void | int', 'return_type': 'int'},
\     'getImageWhitePoint': { 'signature': 'void | array', 'return_type': 'array'},
\     'getImageWidth': { 'signature': 'void | int', 'return_type': 'int'},
\     'getInterlaceScheme': { 'signature': 'void | int', 'return_type': 'int'},
\     'getIteratorIndex': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNumberImages': { 'signature': 'void | int', 'return_type': 'int'},
\     'getOption': { 'signature': 'string $key | string', 'return_type': 'string'},
\     'getPackageName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPage': { 'signature': 'void | array', 'return_type': 'array'},
\     'getPixelIterator': { 'signature': 'void | ImagickPixelIterator', 'return_type': 'ImagickPixelIterator'},
\     'getPixelRegionIterator': { 'signature': 'int $x, int $y, int $columns, int $rows | ImagickPixelIterator', 'return_type': 'ImagickPixelIterator'},
\     'getPointSize': { 'signature': 'void | float', 'return_type': 'float'},
\     'getQuantumDepth': { 'signature': 'void | array', 'return_type': 'array'},
\     'getQuantumRange': { 'signature': 'void | array', 'return_type': 'array'},
\     'getReleaseDate': { 'signature': 'void | string', 'return_type': 'string'},
\     'getResource': { 'signature': 'int $type | int', 'return_type': 'int'},
\     'getResourceLimit': { 'signature': 'int $type | int', 'return_type': 'int'},
\     'getSamplingFactors': { 'signature': 'void | array', 'return_type': 'array'},
\     'getSize': { 'signature': 'void | array', 'return_type': 'array'},
\     'getSizeOffset': { 'signature': 'void | int', 'return_type': 'int'},
\     'getVersion': { 'signature': 'void | array', 'return_type': 'array'},
\     'haldClutImage': { 'signature': 'Imagick $clut [, int $channel = Imagick::CHANNEL_DEFAULT] | bool', 'return_type': 'bool'},
\     'hasNextImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasPreviousImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'identifyImage': { 'signature': '[ bool $appendRawOutput = false] | array', 'return_type': 'array'},
\     'implodeImage': { 'signature': 'float $radius | bool', 'return_type': 'bool'},
\     'importImagePixels': { 'signature': 'int $x, int $y, int $width, int $height, string $map, int $storage, array $pixels | bool', 'return_type': 'bool'},
\     'labelImage': { 'signature': 'string $label | bool', 'return_type': 'bool'},
\     'levelImage': { 'signature': 'float $blackPoint, float $gamma, float $whitePoint [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'linearStretchImage': { 'signature': 'float $blackPoint, float $whitePoint | bool', 'return_type': 'bool'},
\     'liquidRescaleImage': { 'signature': 'int $width, int $height, float $delta_x, float $rigidity | bool', 'return_type': 'bool'},
\     'magnifyImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'mapImage': { 'signature': 'Imagick $map, bool $dither | bool', 'return_type': 'bool'},
\     'matteFloodfillImage': { 'signature': 'float $alpha, float $fuzz, mixed $bordercolor, int $x, int $y | bool', 'return_type': 'bool'},
\     'medianFilterImage': { 'signature': 'float $radius | bool', 'return_type': 'bool'},
\     'mergeImageLayers': { 'signature': 'int $layer_method | bool', 'return_type': 'bool'},
\     'minifyImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'modulateImage': { 'signature': 'float $brightness, float $saturation, float $hue | bool', 'return_type': 'bool'},
\     'montageImage': { 'signature': 'ImagickDraw $draw, string $tile_geometry, string $thumbnail_geometry, int $mode, string $frame | Imagick', 'return_type': 'Imagick'},
\     'morphImages': { 'signature': 'int $number_frames | Imagick', 'return_type': 'Imagick'},
\     'mosaicImages': { 'signature': 'void | Imagick', 'return_type': 'Imagick'},
\     'motionBlurImage': { 'signature': 'float $radius, float $sigma, float $angle [, int $channel = Imagick::CHANNEL_DEFAULT] | bool', 'return_type': 'bool'},
\     'negateImage': { 'signature': 'bool $gray [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'newImage': { 'signature': 'int $cols, int $rows, mixed $background [, string $format] | bool', 'return_type': 'bool'},
\     'newPseudoImage': { 'signature': 'int $columns, int $rows, string $pseudoString | bool', 'return_type': 'bool'},
\     'nextImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'normalizeImage': { 'signature': '[ int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'oilPaintImage': { 'signature': 'float $radius | bool', 'return_type': 'bool'},
\     'opaquePaintImage': { 'signature': 'mixed $target, mixed $fill, float $fuzz, bool $invert [, int $channel = Imagick::CHANNEL_DEFAULT] | bool', 'return_type': 'bool'},
\     'optimizeImageLayers': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'orderedPosterizeImage': { 'signature': 'string $threshold_map [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'paintFloodfillImage': { 'signature': 'mixed $fill, float $fuzz, mixed $bordercolor, int $x, int $y [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'paintOpaqueImage': { 'signature': 'mixed $target, mixed $fill, float $fuzz [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'paintTransparentImage': { 'signature': 'mixed $target, float $alpha, float $fuzz | bool', 'return_type': 'bool'},
\     'pingImage': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'pingImageBlob': { 'signature': 'string $image | bool', 'return_type': 'bool'},
\     'pingImageFile': { 'signature': 'resource $filehandle [, string $fileName] | bool', 'return_type': 'bool'},
\     'polaroidImage': { 'signature': 'ImagickDraw $properties, float $angle | bool', 'return_type': 'bool'},
\     'posterizeImage': { 'signature': 'int $levels, bool $dither | bool', 'return_type': 'bool'},
\     'previewImages': { 'signature': 'int $preview | bool', 'return_type': 'bool'},
\     'previousImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'profileImage': { 'signature': 'string $name, string $profile | bool', 'return_type': 'bool'},
\     'quantizeImage': { 'signature': 'int $numberColors, int $colorspace, int $treedepth, bool $dither, bool $measureError | bool', 'return_type': 'bool'},
\     'quantizeImages': { 'signature': 'int $numberColors, int $colorspace, int $treedepth, bool $dither, bool $measureError | bool', 'return_type': 'bool'},
\     'queryFontMetrics': { 'signature': 'ImagickDraw $properties, string $text [, bool $multiline] | array', 'return_type': 'array'},
\     'queryFonts': { 'signature': '[ string $pattern = "*"] | array', 'return_type': 'array'},
\     'queryFormats': { 'signature': '[ string $pattern = "*"] | array', 'return_type': 'array'},
\     'radialBlurImage': { 'signature': 'float $angle [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'raiseImage': { 'signature': 'int $width, int $height, int $x, int $y, bool $raise | bool', 'return_type': 'bool'},
\     'randomThresholdImage': { 'signature': 'float $low, float $high [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'readImage': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'readImageBlob': { 'signature': 'string $image [, string $filename] | bool', 'return_type': 'bool'},
\     'readImageFile': { 'signature': 'resource $filehandle [, string $fileName = null] | bool', 'return_type': 'bool'},
\     'recolorImage': { 'signature': 'array $matrix | bool', 'return_type': 'bool'},
\     'reduceNoiseImage': { 'signature': 'float $radius | bool', 'return_type': 'bool'},
\     'remapImage': { 'signature': 'Imagick $replacement, int $DITHER | bool', 'return_type': 'bool'},
\     'removeImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'removeImageProfile': { 'signature': 'string $name | string', 'return_type': 'string'},
\     'render': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'resampleImage': { 'signature': 'float $x_resolution, float $y_resolution, int $filter, float $blur | bool', 'return_type': 'bool'},
\     'resetImagePage': { 'signature': 'string $page | bool', 'return_type': 'bool'},
\     'resizeImage': { 'signature': 'int $columns, int $rows, int $filter, float $blur [, bool $bestfit = false] | bool', 'return_type': 'bool'},
\     'rollImage': { 'signature': 'int $x, int $y | bool', 'return_type': 'bool'},
\     'rotateImage': { 'signature': 'mixed $background, float $degrees | bool', 'return_type': 'bool'},
\     'roundCorners': { 'signature': 'float $x_rounding, float $y_rounding [, float $stroke_width = 10 [, float $displace = 5 [, float $size_correction = -6]]] | bool', 'return_type': 'bool'},
\     'sampleImage': { 'signature': 'int $columns, int $rows | bool', 'return_type': 'bool'},
\     'scaleImage': { 'signature': 'int $cols, int $rows [, bool $bestfit = false] | bool', 'return_type': 'bool'},
\     'segmentImage': { 'signature': 'int $COLORSPACE, float $cluster_threshold, float $smooth_threshold [, bool $verbose = false] | bool', 'return_type': 'bool'},
\     'separateImageChannel': { 'signature': 'int $channel | bool', 'return_type': 'bool'},
\     'sepiaToneImage': { 'signature': 'float $threshold | bool', 'return_type': 'bool'},
\     'setBackgroundColor': { 'signature': 'mixed $background | bool', 'return_type': 'bool'},
\     'setColorspace': { 'signature': 'int $COLORSPACE | bool', 'return_type': 'bool'},
\     'setCompression': { 'signature': 'int $compression | bool', 'return_type': 'bool'},
\     'setCompressionQuality': { 'signature': 'int $quality | bool', 'return_type': 'bool'},
\     'setFilename': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'setFirstIterator': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setFont': { 'signature': 'string $font | bool', 'return_type': 'bool'},
\     'setFormat': { 'signature': 'string $format | bool', 'return_type': 'bool'},
\     'setGravity': { 'signature': 'int $gravity | bool', 'return_type': 'bool'},
\     'setImage': { 'signature': 'Imagick $replace | bool', 'return_type': 'bool'},
\     'setImageAlphaChannel': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\     'setImageArtifact': { 'signature': 'string $artifact, string $value | bool', 'return_type': 'bool'},
\     'setImageBackgroundColor': { 'signature': 'mixed $background | bool', 'return_type': 'bool'},
\     'setImageBias': { 'signature': 'float $bias | bool', 'return_type': 'bool'},
\     'setImageBluePrimary': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'setImageBorderColor': { 'signature': 'mixed $border | bool', 'return_type': 'bool'},
\     'setImageChannelDepth': { 'signature': 'int $channel, int $depth | bool', 'return_type': 'bool'},
\     'setImageClipMask': { 'signature': 'Imagick $clip_mask | bool', 'return_type': 'bool'},
\     'setImageColormapColor': { 'signature': 'int $index, ImagickPixel $color | bool', 'return_type': 'bool'},
\     'setImageColorspace': { 'signature': 'int $colorspace | bool', 'return_type': 'bool'},
\     'setImageCompose': { 'signature': 'int $compose | bool', 'return_type': 'bool'},
\     'setImageCompression': { 'signature': 'int $compression | bool', 'return_type': 'bool'},
\     'setImageCompressionQuality': { 'signature': 'int $quality | bool', 'return_type': 'bool'},
\     'setImageDelay': { 'signature': 'int $delay | bool', 'return_type': 'bool'},
\     'setImageDepth': { 'signature': 'int $depth | bool', 'return_type': 'bool'},
\     'setImageDispose': { 'signature': 'int $dispose | bool', 'return_type': 'bool'},
\     'setImageExtent': { 'signature': 'int $columns, int $rows | bool', 'return_type': 'bool'},
\     'setImageFilename': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'setImageFormat': { 'signature': 'string $format | bool', 'return_type': 'bool'},
\     'setImageGamma': { 'signature': 'float $gamma | bool', 'return_type': 'bool'},
\     'setImageGravity': { 'signature': 'int $gravity | bool', 'return_type': 'bool'},
\     'setImageGreenPrimary': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'setImageIndex': { 'signature': 'int $index | bool', 'return_type': 'bool'},
\     'setImageInterlaceScheme': { 'signature': 'int $interlace_scheme | bool', 'return_type': 'bool'},
\     'setImageInterpolateMethod': { 'signature': 'int $method | bool', 'return_type': 'bool'},
\     'setImageIterations': { 'signature': 'int $iterations | bool', 'return_type': 'bool'},
\     'setImageMatte': { 'signature': 'bool $matte | bool', 'return_type': 'bool'},
\     'setImageMatteColor': { 'signature': 'mixed $matte | bool', 'return_type': 'bool'},
\     'setImageOpacity': { 'signature': 'float $opacity | bool', 'return_type': 'bool'},
\     'setImageOrientation': { 'signature': 'int $orientation | bool', 'return_type': 'bool'},
\     'setImagePage': { 'signature': 'int $width, int $height, int $x, int $y | bool', 'return_type': 'bool'},
\     'setImageProfile': { 'signature': 'string $name, string $profile | bool', 'return_type': 'bool'},
\     'setImageProperty': { 'signature': 'string $name, string $value | bool', 'return_type': 'bool'},
\     'setImageRedPrimary': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'setImageRenderingIntent': { 'signature': 'int $rendering_intent | bool', 'return_type': 'bool'},
\     'setImageResolution': { 'signature': 'float $x_resolution, float $y_resolution | bool', 'return_type': 'bool'},
\     'setImageScene': { 'signature': 'int $scene | bool', 'return_type': 'bool'},
\     'setImageTicksPerSecond': { 'signature': 'int $ticks_per-second | bool', 'return_type': 'bool'},
\     'setImageType': { 'signature': 'int $image_type | bool', 'return_type': 'bool'},
\     'setImageUnits': { 'signature': 'int $units | bool', 'return_type': 'bool'},
\     'setImageVirtualPixelMethod': { 'signature': 'int $method | bool', 'return_type': 'bool'},
\     'setImageWhitePoint': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'setInterlaceScheme': { 'signature': 'int $interlace_scheme | bool', 'return_type': 'bool'},
\     'setIteratorIndex': { 'signature': 'int $index | bool', 'return_type': 'bool'},
\     'setLastIterator': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setOption': { 'signature': 'string $key, string $value | bool', 'return_type': 'bool'},
\     'setPage': { 'signature': 'int $width, int $height, int $x, int $y | bool', 'return_type': 'bool'},
\     'setPointSize': { 'signature': 'float $point_size | bool', 'return_type': 'bool'},
\     'setResolution': { 'signature': 'float $x_resolution, float $y_resolution | bool', 'return_type': 'bool'},
\     'setResourceLimit': { 'signature': 'int $type, int $limit | bool', 'return_type': 'bool'},
\     'setSamplingFactors': { 'signature': 'array $factors | bool', 'return_type': 'bool'},
\     'setSize': { 'signature': 'int $columns, int $rows | bool', 'return_type': 'bool'},
\     'setSizeOffset': { 'signature': 'int $columns, int $rows, int $offset | bool', 'return_type': 'bool'},
\     'setType': { 'signature': 'int $image_type | bool', 'return_type': 'bool'},
\     'shadeImage': { 'signature': 'bool $gray, float $azimuth, float $elevation | bool', 'return_type': 'bool'},
\     'shadowImage': { 'signature': 'float $opacity, float $sigma, int $x, int $y | bool', 'return_type': 'bool'},
\     'sharpenImage': { 'signature': 'float $radius, float $sigma [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'shaveImage': { 'signature': 'int $columns, int $rows | bool', 'return_type': 'bool'},
\     'shearImage': { 'signature': 'mixed $background, float $x_shear, float $y_shear | bool', 'return_type': 'bool'},
\     'sigmoidalContrastImage': { 'signature': 'bool $sharpen, float $alpha, float $beta [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'sketchImage': { 'signature': 'float $radius, float $sigma, float $angle | bool', 'return_type': 'bool'},
\     'solarizeImage': { 'signature': 'int $threshold | bool', 'return_type': 'bool'},
\     'sparseColorImage': { 'signature': 'int $SPARSE_METHOD, array $arguments [, int $channel = Imagick::CHANNEL_DEFAULT] | bool', 'return_type': 'bool'},
\     'spliceImage': { 'signature': 'int $width, int $height, int $x, int $y | bool', 'return_type': 'bool'},
\     'spreadImage': { 'signature': 'float $radius | bool', 'return_type': 'bool'},
\     'steganoImage': { 'signature': 'Imagick $watermark_wand, int $offset | Imagick', 'return_type': 'Imagick'},
\     'stereoImage': { 'signature': 'Imagick $offset_wand | bool', 'return_type': 'bool'},
\     'stripImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'swirlImage': { 'signature': 'float $degrees | bool', 'return_type': 'bool'},
\     'textureImage': { 'signature': 'Imagick $texture_wand | bool', 'return_type': 'bool'},
\     'thresholdImage': { 'signature': 'float $threshold [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'thumbnailImage': { 'signature': 'int $columns, int $rows [, bool $bestfit = false [, bool $fill = false]] | bool', 'return_type': 'bool'},
\     'tintImage': { 'signature': 'mixed $tint, mixed $opacity | bool', 'return_type': 'bool'},
\     'transformImage': { 'signature': 'string $crop, string $geometry | Imagick', 'return_type': 'Imagick'},
\     'transparentPaintImage': { 'signature': 'mixed $target, float $alpha, float $fuzz, bool $invert | bool', 'return_type': 'bool'},
\     'transposeImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'transverseImage': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'trimImage': { 'signature': 'float $fuzz | bool', 'return_type': 'bool'},
\     'uniqueImageColors': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'unsharpMaskImage': { 'signature': 'float $radius, float $sigma, float $amount, float $threshold [, int $channel = Imagick::CHANNEL_ALL] | bool', 'return_type': 'bool'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'vignetteImage': { 'signature': 'float $blackPoint, float $whitePoint, int $x, int $y | bool', 'return_type': 'bool'},
\     'waveImage': { 'signature': 'float $amplitude, float $length | bool', 'return_type': 'bool'},
\     'whiteThresholdImage': { 'signature': 'mixed $threshold | bool', 'return_type': 'bool'},
\     'writeImage': { 'signature': '[ string $filename] | bool', 'return_type': 'bool'},
\     'writeImageFile': { 'signature': 'resource $filehandle | bool', 'return_type': 'bool'},
\     'writeImages': { 'signature': 'string $filename, bool $adjoin | bool', 'return_type': 'bool'},
\     'writeImagesFile': { 'signature': 'resource $filehandle | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'ImagickDraw': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'affine': { 'signature': 'array $affine | bool', 'return_type': 'bool'},
\     'annotation': { 'signature': 'float $x, float $y, string $text | bool', 'return_type': 'bool'},
\     'arc': { 'signature': 'float $sx, float $sy, float $ex, float $ey, float $sd, float $ed | bool', 'return_type': 'bool'},
\     'bezier': { 'signature': 'array $coordinates | bool', 'return_type': 'bool'},
\     'circle': { 'signature': 'float $ox, float $oy, float $px, float $py | bool', 'return_type': 'bool'},
\     'clear': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'clone': { 'signature': 'void | ImagickDraw', 'return_type': 'ImagickDraw'},
\     'color': { 'signature': 'float $x, float $y, int $paintMethod | bool', 'return_type': 'bool'},
\     'comment': { 'signature': 'string $comment | bool', 'return_type': 'bool'},
\     'composite': { 'signature': 'int $compose, float $x, float $y, float $width, float $height, Imagick $compositeWand | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'destroy': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'ellipse': { 'signature': 'float $ox, float $oy, float $rx, float $ry, float $start, float $end | bool', 'return_type': 'bool'},
\     'getClipPath': { 'signature': 'void | string', 'return_type': 'string'},
\     'getClipRule': { 'signature': 'void | int', 'return_type': 'int'},
\     'getClipUnits': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFillColor': { 'signature': 'void | ImagickPixel', 'return_type': 'ImagickPixel'},
\     'getFillOpacity': { 'signature': 'void | float', 'return_type': 'float'},
\     'getFillRule': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFont': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFontFamily': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFontSize': { 'signature': 'void | float', 'return_type': 'float'},
\     'getFontStyle': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFontWeight': { 'signature': 'void | int', 'return_type': 'int'},
\     'getGravity': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStrokeAntialias': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getStrokeColor': { 'signature': 'void | ImagickPixel', 'return_type': 'ImagickPixel'},
\     'getStrokeDashArray': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStrokeDashOffset': { 'signature': 'void | float', 'return_type': 'float'},
\     'getStrokeLineCap': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStrokeLineJoin': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStrokeMiterLimit': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStrokeOpacity': { 'signature': 'void | float', 'return_type': 'float'},
\     'getStrokeWidth': { 'signature': 'void | float', 'return_type': 'float'},
\     'getTextAlignment': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTextAntialias': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getTextDecoration': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTextEncoding': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTextUnderColor': { 'signature': 'void | ImagickPixel', 'return_type': 'ImagickPixel'},
\     'getVectorGraphics': { 'signature': 'void | string', 'return_type': 'string'},
\     'line': { 'signature': 'float $sx, float $sy, float $ex, float $ey | bool', 'return_type': 'bool'},
\     'matte': { 'signature': 'float $x, float $y, int $paintMethod | bool', 'return_type': 'bool'},
\     'pathClose': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'pathCurveToAbsolute': { 'signature': 'float $x1, float $y1, float $x2, float $y2, float $x, float $y | bool', 'return_type': 'bool'},
\     'pathCurveToQuadraticBezierAbsolute': { 'signature': 'float $x1, float $y1, float $x, float $y | bool', 'return_type': 'bool'},
\     'pathCurveToQuadraticBezierRelative': { 'signature': 'float $x1, float $y1, float $x, float $y | bool', 'return_type': 'bool'},
\     'pathCurveToQuadraticBezierSmoothAbsolute': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'pathCurveToQuadraticBezierSmoothRelative': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'pathCurveToRelative': { 'signature': 'float $x1, float $y1, float $x2, float $y2, float $x, float $y | bool', 'return_type': 'bool'},
\     'pathCurveToSmoothAbsolute': { 'signature': 'float $x2, float $y2, float $x, float $y | bool', 'return_type': 'bool'},
\     'pathCurveToSmoothRelative': { 'signature': 'float $x2, float $y2, float $x, float $y | bool', 'return_type': 'bool'},
\     'pathEllipticArcAbsolute': { 'signature': 'float $rx, float $ry, float $x_axis_rotation, bool $large_arc_flag, bool $sweep_flag, float $x, float $y | bool', 'return_type': 'bool'},
\     'pathEllipticArcRelative': { 'signature': 'float $rx, float $ry, float $x_axis_rotation, bool $large_arc_flag, bool $sweep_flag, float $x, float $y | bool', 'return_type': 'bool'},
\     'pathFinish': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'pathLineToAbsolute': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'pathLineToHorizontalAbsolute': { 'signature': 'float $x | bool', 'return_type': 'bool'},
\     'pathLineToHorizontalRelative': { 'signature': 'float $x | bool', 'return_type': 'bool'},
\     'pathLineToRelative': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'pathLineToVerticalAbsolute': { 'signature': 'float $y | bool', 'return_type': 'bool'},
\     'pathLineToVerticalRelative': { 'signature': 'float $y | bool', 'return_type': 'bool'},
\     'pathMoveToAbsolute': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'pathMoveToRelative': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'pathStart': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'point': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'polygon': { 'signature': 'array $coordinates | bool', 'return_type': 'bool'},
\     'polyline': { 'signature': 'array $coordinates | bool', 'return_type': 'bool'},
\     'pop': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'popClipPath': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'popDefs': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'popPattern': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'push': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'pushClipPath': { 'signature': 'string $clip_mask_id | bool', 'return_type': 'bool'},
\     'pushDefs': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'pushPattern': { 'signature': 'string $pattern_id, float $x, float $y, float $width, float $height | bool', 'return_type': 'bool'},
\     'rectangle': { 'signature': 'float $x1, float $y1, float $x2, float $y2 | bool', 'return_type': 'bool'},
\     'render': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rotate': { 'signature': 'float $degrees | bool', 'return_type': 'bool'},
\     'roundRectangle': { 'signature': 'float $x1, float $y1, float $x2, float $y2, float $rx, float $ry | bool', 'return_type': 'bool'},
\     'scale': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'setClipPath': { 'signature': 'string $clip_mask | bool', 'return_type': 'bool'},
\     'setClipRule': { 'signature': 'int $fill_rule | bool', 'return_type': 'bool'},
\     'setClipUnits': { 'signature': 'int $clip_units | bool', 'return_type': 'bool'},
\     'setFillAlpha': { 'signature': 'float $opacity | bool', 'return_type': 'bool'},
\     'setFillColor': { 'signature': 'ImagickPixel $fill_pixel | bool', 'return_type': 'bool'},
\     'setFillOpacity': { 'signature': 'float $fillOpacity | bool', 'return_type': 'bool'},
\     'setFillPatternURL': { 'signature': 'string $fill_url | bool', 'return_type': 'bool'},
\     'setFillRule': { 'signature': 'int $fill_rule | bool', 'return_type': 'bool'},
\     'setFont': { 'signature': 'string $font_name | bool', 'return_type': 'bool'},
\     'setFontFamily': { 'signature': 'string $font_family | bool', 'return_type': 'bool'},
\     'setFontSize': { 'signature': 'float $pointsize | bool', 'return_type': 'bool'},
\     'setFontStretch': { 'signature': 'int $fontStretch | bool', 'return_type': 'bool'},
\     'setFontStyle': { 'signature': 'int $style | bool', 'return_type': 'bool'},
\     'setFontWeight': { 'signature': 'int $font_weight | bool', 'return_type': 'bool'},
\     'setGravity': { 'signature': 'int $gravity | bool', 'return_type': 'bool'},
\     'setStrokeAlpha': { 'signature': 'float $opacity | bool', 'return_type': 'bool'},
\     'setStrokeAntialias': { 'signature': 'bool $stroke_antialias | bool', 'return_type': 'bool'},
\     'setStrokeColor': { 'signature': 'ImagickPixel $stroke_pixel | bool', 'return_type': 'bool'},
\     'setStrokeDashArray': { 'signature': 'array $dashArray | bool', 'return_type': 'bool'},
\     'setStrokeDashOffset': { 'signature': 'float $dash_offset | bool', 'return_type': 'bool'},
\     'setStrokeLineCap': { 'signature': 'int $linecap | bool', 'return_type': 'bool'},
\     'setStrokeLineJoin': { 'signature': 'int $linejoin | bool', 'return_type': 'bool'},
\     'setStrokeMiterLimit': { 'signature': 'int $miterlimit | bool', 'return_type': 'bool'},
\     'setStrokeOpacity': { 'signature': 'float $stroke_opacity | bool', 'return_type': 'bool'},
\     'setStrokePatternURL': { 'signature': 'string $stroke_url | bool', 'return_type': 'bool'},
\     'setStrokeWidth': { 'signature': 'float $stroke_width | bool', 'return_type': 'bool'},
\     'setTextAlignment': { 'signature': 'int $alignment | bool', 'return_type': 'bool'},
\     'setTextAntialias': { 'signature': 'bool $antiAlias | bool', 'return_type': 'bool'},
\     'setTextDecoration': { 'signature': 'int $decoration | bool', 'return_type': 'bool'},
\     'setTextEncoding': { 'signature': 'string $encoding | bool', 'return_type': 'bool'},
\     'setTextUnderColor': { 'signature': 'ImagickPixel $under_color | bool', 'return_type': 'bool'},
\     'setVectorGraphics': { 'signature': 'string $xml | bool', 'return_type': 'bool'},
\     'setViewbox': { 'signature': 'int $x1, int $y1, int $x2, int $y2 | bool', 'return_type': 'bool'},
\     'skewX': { 'signature': 'float $degrees | bool', 'return_type': 'bool'},
\     'skewY': { 'signature': 'float $degrees | bool', 'return_type': 'bool'},
\     'translate': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'ImagickPixel': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'clear': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': '[ string $color]', 'return_type': ''},
\     'destroy': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getColor': { 'signature': '[ bool $normalized = false] | array', 'return_type': 'array'},
\     'getColorAsString': { 'signature': 'void | string', 'return_type': 'string'},
\     'getColorCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getColorValue': { 'signature': 'int $color | float', 'return_type': 'float'},
\     'getHSL': { 'signature': 'void | array', 'return_type': 'array'},
\     'isSimilar': { 'signature': 'ImagickPixel $color, float $fuzz | bool', 'return_type': 'bool'},
\     'setColor': { 'signature': 'string $color | bool', 'return_type': 'bool'},
\     'setColorValue': { 'signature': 'int $color, float $value | bool', 'return_type': 'bool'},
\     'setHSL': { 'signature': 'float $hue, float $saturation, float $luminosity | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'ImagickPixelIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'clear': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'Imagick $wand', 'return_type': ''},
\     'destroy': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getCurrentIteratorRow': { 'signature': 'void | array', 'return_type': 'array'},
\     'getIteratorRow': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNextIteratorRow': { 'signature': 'void | array', 'return_type': 'array'},
\     'getPreviousIteratorRow': { 'signature': 'void | array', 'return_type': 'array'},
\     'newPixelIterator': { 'signature': 'Imagick $wand | bool', 'return_type': 'bool'},
\     'newPixelRegionIterator': { 'signature': 'Imagick $wand, int $x, int $y, int $columns, int $rows | bool', 'return_type': 'bool'},
\     'resetIterator': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setIteratorFirstRow': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setIteratorLastRow': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setIteratorRow': { 'signature': 'int $row | bool', 'return_type': 'bool'},
\     'syncIterator': { 'signature': 'void | bool', 'return_type': 'bool'},
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
\'IntlDateFormatter': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $locale, int $datetype, int $timetype [, string $timezone [, int $calendar [, string $pattern]]]', 'return_type': ''},
\     'format': { 'signature': 'mixed $value | string', 'return_type': 'string'},
\     'getCalendar': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDateType': { 'signature': 'void | int', 'return_type': 'int'},
\     'getErrorCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getErrorMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLocale': { 'signature': '[ int $which] | string', 'return_type': 'string'},
\     'getPattern': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTimeType': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimeZoneId': { 'signature': 'void | string', 'return_type': 'string'},
\     'getCalendarObject': { 'signature': 'void | IntlCalendar', 'return_type': 'IntlCalendar'},
\     'getTimeZone': { 'signature': 'void | IntlTimeZone', 'return_type': 'IntlTimeZone'},
\     'isLenient': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'localtime': { 'signature': 'string $value [, int &$position] | array', 'return_type': 'array'},
\     'parse': { 'signature': 'string $value [, int &$position] | int', 'return_type': 'int'},
\     'setCalendar': { 'signature': 'int $which | bool', 'return_type': 'bool'},
\     'setLenient': { 'signature': 'bool $lenient | bool', 'return_type': 'bool'},
\     'setPattern': { 'signature': 'string $pattern | bool', 'return_type': 'bool'},
\     'setTimeZoneId': { 'signature': 'string $zone | bool', 'return_type': 'bool'},
\     'setTimeZone': { 'signature': 'mixed $zone | boolean', 'return_type': 'boolean'},
\   },
\   'static_methods': {
\     'create': { 'signature': 'string $locale, int $datetype, int $timetype [, string $timezone [, int $calendar [, string $pattern]]] | IntlDateFormatter', 'return_type': 'IntlDateFormatter'},
\     'formatObject': { 'signature': 'object $object [, mixed $format [, string $locale]] | string', 'return_type': 'string'},
\   },
\},
\'InvalidArgumentException': {
\   'constants': {
\   },
\   'properties': {
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
\'Judy': {
\   'constants': {
\     'BITSET': '1',
\     'INT_TO_INT': '2',
\     'INT_TO_MIXED': '3',
\     'STRING_TO_INT': '4',
\     'STRING_TO_MIXED': '5',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'byCount': { 'signature': 'int $nth_index | int', 'return_type': 'int'},
\     '__construct': { 'signature': 'int $judy_type', 'return_type': ''},
\     'count': { 'signature': '[ int $index_start = 0 [, int $index_end = -1]] | int', 'return_type': 'int'},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'first': { 'signature': '[ mixed $index] | mixed', 'return_type': 'mixed'},
\     'firstEmpty': { 'signature': '[ mixed $index = 0] | int', 'return_type': 'int'},
\     'free': { 'signature': 'void | int', 'return_type': 'int'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'last': { 'signature': '[ string $index] | void', 'return_type': 'void'},
\     'lastEmpty': { 'signature': '[ int $index = -1] | int', 'return_type': 'int'},
\     'memoryUsage': { 'signature': 'void | int', 'return_type': 'int'},
\     'next': { 'signature': 'mixed $index | mixed', 'return_type': 'mixed'},
\     'nextEmpty': { 'signature': 'int $index | int', 'return_type': 'int'},
\     'offsetExists': { 'signature': 'mixed $offset | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'mixed $offset | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'mixed $offset, mixed $value | bool', 'return_type': 'bool'},
\     'offsetUnset': { 'signature': 'mixed $offset | bool', 'return_type': 'bool'},
\     'prev': { 'signature': 'mixed $index | mixed', 'return_type': 'mixed'},
\     'prevEmpty': { 'signature': 'mixed $index | int', 'return_type': 'int'},
\     'size': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'KTaglib_ID3v2_Frame': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getDescription': { 'signature': 'void | string', 'return_type': 'string'},
\     'getMimeType': { 'signature': 'string $type | string', 'return_type': 'string'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'savePicture': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'setPicture': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'setType': { 'signature': 'int $type | void', 'return_type': 'void'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     'getAlbum': { 'signature': 'void | string', 'return_type': 'string'},
\     'getArtist': { 'signature': 'void | string', 'return_type': 'string'},
\     'getComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getGenre': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTitle': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTrack': { 'signature': 'void | int', 'return_type': 'int'},
\     'getYear': { 'signature': 'void | int', 'return_type': 'int'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'KTaglib_MPEG_AudioProperties': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getBitrate': { 'signature': 'void | int', 'return_type': 'int'},
\     'getChannels': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLayer': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLength': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSampleBitrate': { 'signature': 'void | int', 'return_type': 'int'},
\     'getVersion': { 'signature': 'void | int', 'return_type': 'int'},
\     'isCopyrighted': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isOriginal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isProtectionEnabled': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'KTaglib_MPEG_File': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getAudioProperties': { 'signature': 'void | KTaglib_MPEG_File', 'return_type': 'KTaglib_MPEG_File'},
\     'getID3v1Tag': { 'signature': '[ bool $create = false] | KTaglib_ID3v1_Tag', 'return_type': 'KTaglib_ID3v1_Tag'},
\     'getID3v2Tag': { 'signature': '[ bool $create = false] | KTaglib_ID3v2_Tag', 'return_type': 'KTaglib_ID3v2_Tag'},
\   },
\   'static_methods': {
\   },
\},
\'KTaglib_Tag': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     'getAlbum': { 'signature': 'void | string', 'return_type': 'string'},
\     'getArtist': { 'signature': 'void | string', 'return_type': 'string'},
\     'getComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getGenre': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTitle': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTrack': { 'signature': 'void | int', 'return_type': 'int'},
\     'getYear': { 'signature': 'void | int', 'return_type': 'int'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
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
\'LengthException': {
\   'constants': {
\   },
\   'properties': {
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
\'Locale': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'acceptFromHttp': { 'signature': 'string $header | string', 'return_type': 'string'},
\     'composeLocale': { 'signature': 'array $subtags | string', 'return_type': 'string'},
\     'filterMatches': { 'signature': 'string $langtag, string $locale [, bool $canonicalize = false] | bool', 'return_type': 'bool'},
\     'getAllVariants': { 'signature': 'string $locale | array', 'return_type': 'array'},
\     'getDefault': { 'signature': 'void | string', 'return_type': 'string'},
\     'getDisplayLanguage': { 'signature': 'string $locale [, string $in_locale] | string', 'return_type': 'string'},
\     'getDisplayName': { 'signature': 'string $locale [, string $in_locale] | string', 'return_type': 'string'},
\     'getDisplayRegion': { 'signature': 'string $locale [, string $in_locale] | string', 'return_type': 'string'},
\     'getDisplayScript': { 'signature': 'string $locale [, string $in_locale] | string', 'return_type': 'string'},
\     'getDisplayVariant': { 'signature': 'string $locale [, string $in_locale] | string', 'return_type': 'string'},
\     'getKeywords': { 'signature': 'string $locale | array', 'return_type': 'array'},
\     'getPrimaryLanguage': { 'signature': 'string $locale | string', 'return_type': 'string'},
\     'getRegion': { 'signature': 'string $locale | string', 'return_type': 'string'},
\     'getScript': { 'signature': 'string $locale | string', 'return_type': 'string'},
\     'lookup': { 'signature': 'array $langtag, string $locale [, bool $canonicalize = false [, string $default]] | string', 'return_type': 'string'},
\     'parseLocale': { 'signature': 'string $locale | array', 'return_type': 'array'},
\     'setDefault': { 'signature': 'string $locale | bool', 'return_type': 'bool'},
\   },
\},
\'LogicException': {
\   'constants': {
\   },
\   'properties': {
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
\'Lua': {
\   'constants': {
\     'LUA_VERSION': 'Lua 5.1.4',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'assign': { 'signature': 'string $name, string $value | mixed', 'return_type': 'mixed'},
\     'call': { 'signature': 'callable $lua_func [, array $args [, int $use_self = 0]] | mixed', 'return_type': 'mixed'},
\     '__call': { 'signature': 'callable $lua_func [, array $args [, int $use_self = 0]] | mixed', 'return_type': 'mixed'},
\     '__construct': { 'signature': '[ string $lua_script_file = NULL]', 'return_type': ''},
\     'eval': { 'signature': 'string $statements | mixed', 'return_type': 'mixed'},
\     'getVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'include': { 'signature': 'string $file | mixed', 'return_type': 'mixed'},
\     'registerCallback': { 'signature': 'string $name, callable $function | mixed', 'return_type': 'mixed'},
\   },
\   'static_methods': {
\   },
\},
\'LuaClosure': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__invoke': { 'signature': 'mixed $arg [, mixed $...] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Memcache': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'string $key, mixed $var [, int $flag [, int $expire]] | bool', 'return_type': 'bool'},
\     'addServer': { 'signature': 'string $host [, int $port = 11211 [, bool $persistent [, int $weight [, int $timeout [, int $retry_interval [, bool $status [, callable $failure_callback [, int $timeoutms]]]]]]]] | bool', 'return_type': 'bool'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'connect': { 'signature': 'string $host [, int $port [, int $timeout]] | bool', 'return_type': 'bool'},
\     'decrement': { 'signature': 'string $key [, int $value = 1] | int', 'return_type': 'int'},
\     'delete': { 'signature': 'string $key [, int $timeout = 0] | bool', 'return_type': 'bool'},
\     'flush': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'string $key [, int &$flags] | string', 'return_type': 'string'},
\     'getExtendedStats': { 'signature': '[ string $type [, int $slabid [, int $limit = 100]]] | array', 'return_type': 'array'},
\     'getServerStatus': { 'signature': 'string $host [, int $port = 11211] | int', 'return_type': 'int'},
\     'getStats': { 'signature': '[ string $type [, int $slabid [, int $limit = 100]]] | array', 'return_type': 'array'},
\     'getVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'increment': { 'signature': 'string $key [, int $value = 1] | int', 'return_type': 'int'},
\     'pconnect': { 'signature': 'string $host [, int $port [, int $timeout]] | mixed', 'return_type': 'mixed'},
\     'replace': { 'signature': 'string $key, mixed $var [, int $flag [, int $expire]] | bool', 'return_type': 'bool'},
\     'set': { 'signature': 'string $key, mixed $var [, int $flag [, int $expire]] | bool', 'return_type': 'bool'},
\     'setCompressThreshold': { 'signature': 'int $threshold [, float $min_savings] | bool', 'return_type': 'bool'},
\     'setServerParams': { 'signature': 'string $host [, int $port = 11211 [, int $timeout [, int $retry_interval = false [, bool $status [, callable $failure_callback]]]]] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'Memcached': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $persistent_id]', 'return_type': ''},
\     'add': { 'signature': 'string $key, mixed $value [, int $expiration] | bool', 'return_type': 'bool'},
\     'addByKey': { 'signature': 'string $server_key, string $key, mixed $value [, int $expiration] | bool', 'return_type': 'bool'},
\     'addServer': { 'signature': 'string $host, int $port [, int $weight = 0] | bool', 'return_type': 'bool'},
\     'addServers': { 'signature': 'array $servers | bool', 'return_type': 'bool'},
\     'append': { 'signature': 'string $key, string $value | bool', 'return_type': 'bool'},
\     'appendByKey': { 'signature': 'string $server_key, string $key, string $value | bool', 'return_type': 'bool'},
\     'cas': { 'signature': 'float $cas_token, string $key, mixed $value [, int $expiration] | bool', 'return_type': 'bool'},
\     'casByKey': { 'signature': 'float $cas_token, string $server_key, string $key, mixed $value [, int $expiration] | bool', 'return_type': 'bool'},
\     'decrement': { 'signature': 'string $key [, int $offset = 1 [, int $initial_value = 0 [, int $expiry = 0]]] | int', 'return_type': 'int'},
\     'decrementByKey': { 'signature': 'string $server_key, string $key [, int $offset = 1 [, int $initial_value = 0 [, int $expiry = 0]]] | int', 'return_type': 'int'},
\     'delete': { 'signature': 'string $key [, int $time = 0] | bool', 'return_type': 'bool'},
\     'deleteByKey': { 'signature': 'string $server_key, string $key [, int $time = 0] | bool', 'return_type': 'bool'},
\     'deleteMulti': { 'signature': 'array $keys [, int $time = 0] | bool', 'return_type': 'bool'},
\     'deleteMultiByKey': { 'signature': 'string $server_key, array $keys [, int $time = 0] | bool', 'return_type': 'bool'},
\     'fetch': { 'signature': 'void | array', 'return_type': 'array'},
\     'fetchAll': { 'signature': 'void | array', 'return_type': 'array'},
\     'flush': { 'signature': '[ int $delay = 0] | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'string $key [, callable $cache_cb [, float &$cas_token]] | mixed', 'return_type': 'mixed'},
\     'getAllKeys': { 'signature': 'void | array', 'return_type': 'array'},
\     'getByKey': { 'signature': 'string $server_key, string $key [, callable $cache_cb [, float &$cas_token]] | mixed', 'return_type': 'mixed'},
\     'getDelayed': { 'signature': 'array $keys [, bool $with_cas [, callable $value_cb]] | bool', 'return_type': 'bool'},
\     'getDelayedByKey': { 'signature': 'string $server_key, array $keys [, bool $with_cas [, callable $value_cb]] | bool', 'return_type': 'bool'},
\     'getMulti': { 'signature': 'array $keys [, array &$cas_tokens [, int $flags]] | mixed', 'return_type': 'mixed'},
\     'getMultiByKey': { 'signature': 'string $server_key, array $keys [, string &$cas_tokens [, int $flags]] | array', 'return_type': 'array'},
\     'getOption': { 'signature': 'int $option | mixed', 'return_type': 'mixed'},
\     'getResultCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getResultMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getServerByKey': { 'signature': 'string $server_key | array', 'return_type': 'array'},
\     'getServerList': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStats': { 'signature': 'void | array', 'return_type': 'array'},
\     'getVersion': { 'signature': 'void | array', 'return_type': 'array'},
\     'increment': { 'signature': 'string $key [, int $offset = 1 [, int $initial_value = 0 [, int $expiry = 0]]] | int', 'return_type': 'int'},
\     'incrementByKey': { 'signature': 'string $server_key, string $key [, int $offset = 1 [, int $initial_value = 0 [, int $expiry = 0]]] | int', 'return_type': 'int'},
\     'isPersistent': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isPristine': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'prepend': { 'signature': 'string $key, string $value | bool', 'return_type': 'bool'},
\     'prependByKey': { 'signature': 'string $server_key, string $key, string $value | bool', 'return_type': 'bool'},
\     'quit': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'replace': { 'signature': 'string $key, mixed $value [, int $expiration] | bool', 'return_type': 'bool'},
\     'replaceByKey': { 'signature': 'string $server_key, string $key, mixed $value [, int $expiration] | bool', 'return_type': 'bool'},
\     'resetServerList': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'set': { 'signature': 'string $key, mixed $value [, int $expiration] | bool', 'return_type': 'bool'},
\     'setByKey': { 'signature': 'string $server_key, string $key, mixed $value [, int $expiration] | bool', 'return_type': 'bool'},
\     'setMulti': { 'signature': 'array $items [, int $expiration] | bool', 'return_type': 'bool'},
\     'setMultiByKey': { 'signature': 'string $server_key, array $items [, int $expiration] | bool', 'return_type': 'bool'},
\     'setOption': { 'signature': 'int $option, mixed $value | bool', 'return_type': 'bool'},
\     'setOptions': { 'signature': 'array $options | bool', 'return_type': 'bool'},
\     'setSaslAuthData': { 'signature': 'string $username, string $password | void', 'return_type': 'void'},
\     'touch': { 'signature': 'string $key, int $expiration | bool', 'return_type': 'bool'},
\     'touchByKey': { 'signature': 'string $server_key, string $key, int $expiration | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'MessageFormatter': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $locale, string $pattern', 'return_type': ''},
\     'create': { 'signature': 'string $locale, string $pattern | MessageFormatter', 'return_type': 'MessageFormatter'},
\     'format': { 'signature': 'array $args | string', 'return_type': 'string'},
\     'getErrorCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getErrorMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLocale': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPattern': { 'signature': 'void | string', 'return_type': 'string'},
\     'parse': { 'signature': 'string $value | array', 'return_type': 'array'},
\     'setPattern': { 'signature': 'string $pattern | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'formatMessage': { 'signature': 'string $locale, string $pattern, array $args | string', 'return_type': 'string'},
\     'parseMessage': { 'signature': 'string $locale, string $pattern, string $source | array', 'return_type': 'array'},
\   },
\},
\'Mongo': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'connectUtil': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getSlave': { 'signature': 'void | string', 'return_type': 'string'},
\     'getSlaveOkay': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'poolDebug': { 'signature': 'void | array', 'return_type': 'array'},
\     'setSlaveOkay': { 'signature': '[ bool $ok = true] | bool', 'return_type': 'bool'},
\     'switchSlave': { 'signature': 'void | string', 'return_type': 'string'},
\     'close': { 'signature': '[ boolean|string $connection] | bool', 'return_type': 'bool'},
\     'connect': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'dropDB': { 'signature': 'mixed $db | array', 'return_type': 'array'},
\     '__get': { 'signature': 'string $dbname | MongoDB', 'return_type': 'MongoDB'},
\     'getHosts': { 'signature': 'void | array', 'return_type': 'array'},
\     'getReadPreference': { 'signature': 'void | array', 'return_type': 'array'},
\     'listDBs': { 'signature': 'void | array', 'return_type': 'array'},
\     'selectCollection': { 'signature': 'string $db, string $collection | MongoCollection', 'return_type': 'MongoCollection'},
\     'selectDB': { 'signature': 'string $name | MongoDB', 'return_type': 'MongoDB'},
\     'setReadPreference': { 'signature': 'string $read_preference [, array $tags] | bool', 'return_type': 'bool'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'getPoolSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'setPoolSize': { 'signature': 'int $size | bool', 'return_type': 'bool'},
\     'getConnections': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\},
\'MongoBinData': {
\   'constants': {
\     'FUNC': '1',
\     'BYTE_ARRAY': '2',
\     'UUID': '3',
\     'MD5': '5',
\     'CUSTOM': '128',
\   },
\   'properties': {
\     'bin': { 'initializer': '', 'type': 'string'},
\     'type': { 'initializer': '2', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $data [, int $type = 2]', 'return_type': ''},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'MongoClient': {
\   'constants': {
\     'VERSION': '',
\     'DEFAULT_HOST': '"localhost"',
\     'DEFAULT_PORT': '27017',
\     'RP_PRIMARY': '"primary"',
\     'RP_PRIMARY_PREFERRED': '"primaryPreferred"',
\     'RP_SECONDARY': '"secondary"',
\     'RP_SECONDARY_PREFERRED': '"secondaryPreferred"',
\     'RP_NEAREST': '"nearest"',
\   },
\   'properties': {
\     'connected': { 'initializer': 'FALSE', 'type': 'boolean'},
\     'status': { 'initializer': 'NULL', 'type': 'string'},
\     'server': { 'initializer': 'NULL', 'type': 'string'},
\     'persistent': { 'initializer': 'NULL', 'type': 'boolean'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $server = "mongodb://localhost:27017" [, array $options = array("connect" => TRUE)]]', 'return_type': ''},
\     'close': { 'signature': '[ boolean|string $connection] | bool', 'return_type': 'bool'},
\     'connect': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'dropDB': { 'signature': 'mixed $db | array', 'return_type': 'array'},
\     '__get': { 'signature': 'string $dbname | MongoDB', 'return_type': 'MongoDB'},
\     'getHosts': { 'signature': 'void | array', 'return_type': 'array'},
\     'getReadPreference': { 'signature': 'void | array', 'return_type': 'array'},
\     'listDBs': { 'signature': 'void | array', 'return_type': 'array'},
\     'selectCollection': { 'signature': 'string $db, string $collection | MongoCollection', 'return_type': 'MongoCollection'},
\     'selectDB': { 'signature': 'string $name | MongoDB', 'return_type': 'MongoDB'},
\     'setReadPreference': { 'signature': 'string $read_preference [, array $tags] | bool', 'return_type': 'bool'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'getConnections': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\},
\'MongoCode': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $code [, array $scope = array()]', 'return_type': ''},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'MongoCollection': {
\   'constants': {
\     'ASCENDING': '1',
\     'DESCENDING': '-1',
\   },
\   'properties': {
\     'db': { 'initializer': 'NULL', 'type': 'MongoDB'},
\     'w': { 'initializer': '', 'type': 'integer'},
\     'wtimeout': { 'initializer': '', 'type': 'integer'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'aggregate': { 'signature': 'array $pipeline [, array $op [, array $...]] | array', 'return_type': 'array'},
\     'batchInsert': { 'signature': 'array $a [, array $options = array()] | mixed', 'return_type': 'mixed'},
\     '__construct': { 'signature': 'MongoDB $db, string $name', 'return_type': ''},
\     'count': { 'signature': '[ array $query = array() [, int $limit = 0 [, int $skip = 0]]] | int', 'return_type': 'int'},
\     'createDBRef': { 'signature': 'array $a | array', 'return_type': 'array'},
\     'deleteIndex': { 'signature': 'string|array $keys | array', 'return_type': 'array'},
\     'deleteIndexes': { 'signature': 'void | array', 'return_type': 'array'},
\     'distinct': { 'signature': 'string $key [, array $query] | array', 'return_type': 'array'},
\     'drop': { 'signature': 'void | array', 'return_type': 'array'},
\     'ensureIndex': { 'signature': 'string|array $key|keys [, array $options = array()] | bool', 'return_type': 'bool'},
\     'find': { 'signature': '[ array $query = array() [, array $fields = array()]] | MongoCursor', 'return_type': 'MongoCursor'},
\     'findAndModify': { 'signature': 'array $query [, array $update [, array $fields [, array $options]]] | void', 'return_type': 'void'},
\     'findOne': { 'signature': '[ array $query = array() [, array $fields = array()]] | array', 'return_type': 'array'},
\     '__get': { 'signature': 'string $name | MongoCollection', 'return_type': 'MongoCollection'},
\     'getDBRef': { 'signature': 'array $ref | array', 'return_type': 'array'},
\     'getIndexInfo': { 'signature': 'void | array', 'return_type': 'array'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getReadPreference': { 'signature': 'void | array', 'return_type': 'array'},
\     'getSlaveOkay': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'group': { 'signature': 'mixed $keys, array $initial, MongoCode $reduce [, array $options = array()] | array', 'return_type': 'array'},
\     'insert': { 'signature': 'array|object $a [, array $options = array()] | bool|array', 'return_type': 'bool|array'},
\     'remove': { 'signature': '[ array $criteria = array() [, array $options = array()]] | bool|array', 'return_type': 'bool|array'},
\     'save': { 'signature': 'array|object $a [, array $options = array()] | mixed', 'return_type': 'mixed'},
\     'setReadPreference': { 'signature': 'string $read_preference [, array $tags] | bool', 'return_type': 'bool'},
\     'setSlaveOkay': { 'signature': '[ bool $ok = true] | bool', 'return_type': 'bool'},
\     'toIndexString': { 'signature': 'mixed $keys | string', 'return_type': 'string'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     'update': { 'signature': 'array $criteria, array $new_object [, array $options = array()] | bool|array', 'return_type': 'bool|array'},
\     'validate': { 'signature': '[ bool $scan_data = FALSE] | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'MongoConnectionException': {
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
\'MongoCursor': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\     '$slaveOkay': { 'initializer': 'FALSE', 'type': 'boolean'},
\     '$timeout': { 'initializer': '20000', 'type': 'integer'},
\   },
\   'methods': {
\     'addOption': { 'signature': 'string $key, mixed $value | MongoCursor', 'return_type': 'MongoCursor'},
\     'awaitData': { 'signature': '[ bool $wait = true] | MongoCursor', 'return_type': 'MongoCursor'},
\     'batchSize': { 'signature': 'int $batchSize | MongoCursor', 'return_type': 'MongoCursor'},
\     '__construct': { 'signature': 'MongoClient $connection, string $ns [, array $query = array() [, array $fields = array()]]', 'return_type': ''},
\     'count': { 'signature': '[ bool $foundOnly = FALSE] | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | array', 'return_type': 'array'},
\     'dead': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'doQuery': { 'signature': 'void | void', 'return_type': 'void'},
\     'explain': { 'signature': 'void | array', 'return_type': 'array'},
\     'fields': { 'signature': 'array $f | MongoCursor', 'return_type': 'MongoCursor'},
\     'getNext': { 'signature': 'void | array', 'return_type': 'array'},
\     'getReadPreference': { 'signature': 'void | array', 'return_type': 'array'},
\     'hasNext': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hint': { 'signature': 'array $key_pattern | MongoCursor', 'return_type': 'MongoCursor'},
\     'immortal': { 'signature': '[ bool $liveForever = true] | MongoCursor', 'return_type': 'MongoCursor'},
\     'info': { 'signature': 'void | array', 'return_type': 'array'},
\     'key': { 'signature': 'void | string', 'return_type': 'string'},
\     'limit': { 'signature': 'int $num | MongoCursor', 'return_type': 'MongoCursor'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'partial': { 'signature': '[ bool $okay = true] | MongoCursor', 'return_type': 'MongoCursor'},
\     'reset': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setFlag': { 'signature': 'bool $flag [, bool $set = true] | MongoCursor', 'return_type': 'MongoCursor'},
\     'setReadPreference': { 'signature': 'string $read_preference [, array $tags] | bool', 'return_type': 'bool'},
\     'skip': { 'signature': 'int $num | MongoCursor', 'return_type': 'MongoCursor'},
\     'slaveOkay': { 'signature': '[ bool $okay = true] | MongoCursor', 'return_type': 'MongoCursor'},
\     'snapshot': { 'signature': 'void | MongoCursor', 'return_type': 'MongoCursor'},
\     'sort': { 'signature': 'array $fields | MongoCursor', 'return_type': 'MongoCursor'},
\     'tailable': { 'signature': '[ bool $tail = true] | MongoCursor', 'return_type': 'MongoCursor'},
\     'timeout': { 'signature': 'int $ms | MongoCursor', 'return_type': 'MongoCursor'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'MongoCursorException': {
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
\'MongoCursorTimeoutException': {
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
\'MongoDB': {
\   'constants': {
\     'PROFILING_OFF': '0',
\     'PROFILING_SLOW': '1',
\     'PROFILING_ON': '2',
\   },
\   'properties': {
\     'w': { 'initializer': '1', 'type': 'integer'},
\     'wtimeout': { 'initializer': '10000', 'type': 'integer'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'authenticate': { 'signature': 'string $username, string $password | array', 'return_type': 'array'},
\     'command': { 'signature': 'array $command [, array $options = array()] | array', 'return_type': 'array'},
\     '__construct': { 'signature': 'MongoClient $conn, string $name', 'return_type': ''},
\     'createCollection': { 'signature': 'string $name [, bool $capped = FALSE [, int $size = 0 [, int $max = 0]]] | MongoCollection', 'return_type': 'MongoCollection'},
\     'createDBRef': { 'signature': 'string $collection, mixed $a | array', 'return_type': 'array'},
\     'drop': { 'signature': 'void | array', 'return_type': 'array'},
\     'dropCollection': { 'signature': 'mixed $coll | array', 'return_type': 'array'},
\     'execute': { 'signature': 'mixed $code [, array $args = array()] | array', 'return_type': 'array'},
\     'forceError': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__get': { 'signature': 'string $name | MongoCollection', 'return_type': 'MongoCollection'},
\     'getCollectionNames': { 'signature': '[ bool $includeSystemCollections = false] | array', 'return_type': 'array'},
\     'getDBRef': { 'signature': 'array $ref | array', 'return_type': 'array'},
\     'getGridFS': { 'signature': '[ string $prefix = "fs"] | MongoGridFS', 'return_type': 'MongoGridFS'},
\     'getProfilingLevel': { 'signature': 'void | int', 'return_type': 'int'},
\     'getReadPreference': { 'signature': 'void | array', 'return_type': 'array'},
\     'getSlaveOkay': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'lastError': { 'signature': 'void | array', 'return_type': 'array'},
\     'listCollections': { 'signature': '[ bool $includeSystemCollections = false] | array', 'return_type': 'array'},
\     'prevError': { 'signature': 'void | array', 'return_type': 'array'},
\     'repair': { 'signature': '[ bool $preserve_cloned_files = FALSE [, bool $backup_original_files = FALSE]] | array', 'return_type': 'array'},
\     'resetError': { 'signature': 'void | array', 'return_type': 'array'},
\     'selectCollection': { 'signature': 'string $name | MongoCollection', 'return_type': 'MongoCollection'},
\     'setProfilingLevel': { 'signature': 'int $level | int', 'return_type': 'int'},
\     'setReadPreference': { 'signature': 'string $read_preference [, array $tags] | bool', 'return_type': 'bool'},
\     'setSlaveOkay': { 'signature': '[ bool $ok = true] | bool', 'return_type': 'bool'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'MongoDBRef': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'create': { 'signature': 'string $collection, mixed $id [, string $database] | array', 'return_type': 'array'},
\     'get': { 'signature': 'MongoDB $db, array $ref | array', 'return_type': 'array'},
\     'isRef': { 'signature': 'mixed $ref | bool', 'return_type': 'bool'},
\   },
\},
\'MongoDate': {
\   'constants': {
\   },
\   'properties': {
\     'sec': { 'initializer': '', 'type': 'int'},
\     'usec': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ int $sec = time() [, int $usec = 0]]', 'return_type': ''},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'MongoException': {
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
\'MongoGridFSException': {
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
\'MongoGridFSFile': {
\   'constants': {
\   },
\   'properties': {
\     'file': { 'initializer': 'NULL', 'type': 'array'},
\     'gridfs': { 'initializer': 'NULL', 'type': 'MongoGridFS'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'MongoGridFS $gridfs, array $file', 'return_type': ''},
\     'getBytes': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFilename': { 'signature': 'void | string', 'return_type': 'string'},
\     'getResource': { 'signature': 'void | stream', 'return_type': 'stream'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'write': { 'signature': '[ string $filename = NULL] | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'MongoId': {
\   'constants': {
\   },
\   'properties': {
\     'id': { 'initializer': 'NULL', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $id = NULL]', 'return_type': ''},
\     'getInc': { 'signature': 'void | int', 'return_type': 'int'},
\     'getPID': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimestamp': { 'signature': 'void | int', 'return_type': 'int'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'getHostname': { 'signature': 'void | string', 'return_type': 'string'},
\     '__set_state': { 'signature': 'array $props | MongoId', 'return_type': 'MongoId'},
\   },
\},
\'MongoInt32': {
\   'constants': {
\   },
\   'properties': {
\     'value': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $value', 'return_type': ''},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'MongoInt64': {
\   'constants': {
\   },
\   'properties': {
\     'value': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $value', 'return_type': ''},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'MongoLog': {
\   'constants': {
\     'NONE': '0',
\     'ALL': '31',
\     'WARNING': '1',
\     'INFO': '2',
\     'FINE': '4',
\     'RS': '1',
\     'POOL': '2',
\     'IO': '4',
\     'SERVER': '8',
\     'PARSE': '16',
\   },
\   'properties': {
\     'level': { 'initializer': '', 'type': 'int'},
\     'module': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'getCallback': { 'signature': 'void | void', 'return_type': 'void'},
\     'getLevel': { 'signature': 'void | int', 'return_type': 'int'},
\     'getModule': { 'signature': 'void | int', 'return_type': 'int'},
\     'setCallback': { 'signature': 'callable $log_function | void', 'return_type': 'void'},
\     'setLevel': { 'signature': 'int $level | void', 'return_type': 'void'},
\     'setModule': { 'signature': 'int $module | void', 'return_type': 'void'},
\   },
\},
\'MongoMaxKey': {
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
\'MongoMinKey': {
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
\'MongoPool': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'info': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'setSize': { 'signature': 'int $size | bool', 'return_type': 'bool'},
\   },
\},
\'MongoRegex': {
\   'constants': {
\   },
\   'properties': {
\     'regex': { 'initializer': '', 'type': 'string'},
\     'flags': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $regex', 'return_type': ''},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'MongoResultException': {
\   'constants': {
\   },
\   'properties': {
\     'document': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getDocument': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'MongoTimestamp': {
\   'constants': {
\   },
\   'properties': {
\     'sec': { 'initializer': '0', 'type': 'int'},
\     'inc': { 'initializer': '0', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ int $sec = time() [, int $inc]]', 'return_type': ''},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
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
\'MysqlndUhConnection': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'changeUser': { 'signature': 'mysqlnd_connection $connection, string $user, string $password, string $database, bool $silent, int $passwd_len | bool', 'return_type': 'bool'},
\     'charsetName': { 'signature': 'mysqlnd_connection $connection | string', 'return_type': 'string'},
\     'close': { 'signature': 'mysqlnd_connection $connection, int $close_type | bool', 'return_type': 'bool'},
\     'connect': { 'signature': 'mysqlnd_connection $connection, string $host, string $use", string $password, string $database, int $port, string $socket, int $mysql_flags | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'endPSession': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'escapeString': { 'signature': 'mysqlnd_connection $connection, string $escape_string | string', 'return_type': 'string'},
\     'getAffectedRows': { 'signature': 'mysqlnd_connection $connection | int', 'return_type': 'int'},
\     'getErrorNumber': { 'signature': 'mysqlnd_connection $connection | int', 'return_type': 'int'},
\     'getErrorString': { 'signature': 'mysqlnd_connection $connection | string', 'return_type': 'string'},
\     'getFieldCount': { 'signature': 'mysqlnd_connection $connection | int', 'return_type': 'int'},
\     'getHostInformation': { 'signature': 'mysqlnd_connection $connection | string', 'return_type': 'string'},
\     'getLastInsertId': { 'signature': 'mysqlnd_connection $connection | int', 'return_type': 'int'},
\     'getLastMessage': { 'signature': 'mysqlnd_connection $connection | void', 'return_type': 'void'},
\     'getProtocolInformation': { 'signature': 'mysqlnd_connection $connection | string', 'return_type': 'string'},
\     'getServerInformation': { 'signature': 'mysqlnd_connection $connection | string', 'return_type': 'string'},
\     'getServerStatistics': { 'signature': 'mysqlnd_connection $connection | string', 'return_type': 'string'},
\     'getServerVersion': { 'signature': 'mysqlnd_connection $connection | int', 'return_type': 'int'},
\     'getSqlstate': { 'signature': 'mysqlnd_connection $connection | string', 'return_type': 'string'},
\     'getStatistics': { 'signature': 'mysqlnd_connection $connection | array', 'return_type': 'array'},
\     'getThreadId': { 'signature': 'mysqlnd_connection $connection | int', 'return_type': 'int'},
\     'getWarningCount': { 'signature': 'mysqlnd_connection $connection | int', 'return_type': 'int'},
\     'init': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'killConnection': { 'signature': 'mysqlnd_connection $connection, int $pid | bool', 'return_type': 'bool'},
\     'listFields': { 'signature': 'mysqlnd_connection $connection, string $table, string $achtung_wild | array', 'return_type': 'array'},
\     'listMethod': { 'signature': 'mysqlnd_connection $connection, string $query, string $achtung_wild, string $par1 | void', 'return_type': 'void'},
\     'moreResults': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'nextResult': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'ping': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'query': { 'signature': 'mysqlnd_connection $connection, string $query | bool', 'return_type': 'bool'},
\     'queryReadResultsetHeader': { 'signature': 'mysqlnd_connection $connection, mysqlnd_statement $mysqlnd_stmt | bool', 'return_type': 'bool'},
\     'reapQuery': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'refreshServer': { 'signature': 'mysqlnd_connection $connection, int $options | bool', 'return_type': 'bool'},
\     'restartPSession': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'selectDb': { 'signature': 'mysqlnd_connection $connection, string $database | bool', 'return_type': 'bool'},
\     'sendClose': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'sendQuery': { 'signature': 'mysqlnd_connection $connection, string $query | bool', 'return_type': 'bool'},
\     'serverDumpDebugInformation': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'setAutocommit': { 'signature': 'mysqlnd_connection $connection, int $mode | bool', 'return_type': 'bool'},
\     'setCharset': { 'signature': 'mysqlnd_connection $connection, string $charset | bool', 'return_type': 'bool'},
\     'setClientOption': { 'signature': 'mysqlnd_connection $connection, int $option, int $value | bool', 'return_type': 'bool'},
\     'setServerOption': { 'signature': 'mysqlnd_connection $connection, int $option | void', 'return_type': 'void'},
\     'shutdownServer': { 'signature': 'string $MYSQLND_UH_RES_MYSQLND_NAME, string $"level" | void', 'return_type': 'void'},
\     'simpleCommand': { 'signature': 'mysqlnd_connection $connection, int $command, string $arg, int $ok_packet, bool $silent, bool $ignore_upsert_status | bool', 'return_type': 'bool'},
\     'simpleCommandHandleResponse': { 'signature': 'mysqlnd_connection $connection, int $ok_packet, bool $silent, int $command, bool $ignore_upsert_status | bool', 'return_type': 'bool'},
\     'sslSet': { 'signature': 'mysqlnd_connection $connection, string $key, string $cert, string $ca, string $capath, string $cipher | bool', 'return_type': 'bool'},
\     'stmtInit': { 'signature': 'mysqlnd_connection $connection | resource', 'return_type': 'resource'},
\     'storeResult': { 'signature': 'mysqlnd_connection $connection | resource', 'return_type': 'resource'},
\     'txCommit': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'txRollback': { 'signature': 'mysqlnd_connection $connection | bool', 'return_type': 'bool'},
\     'useResult': { 'signature': 'mysqlnd_connection $connection | resource', 'return_type': 'resource'},
\   },
\   'static_methods': {
\   },
\},
\'MysqlndUhPreparedStatement': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'execute': { 'signature': 'mysqlnd_prepared_statement $statement | bool', 'return_type': 'bool'},
\     'prepare': { 'signature': 'mysqlnd_prepared_statement $statement, string $query | bool', 'return_type': 'bool'},
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
\'Normalizer': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'isNormalized': { 'signature': 'string $input [, string $form = Normalizer::FORM_C] | bool', 'return_type': 'bool'},
\     'normalize': { 'signature': 'string $input [, string $form = Normalizer::FORM_C] | string', 'return_type': 'string'},
\   },
\},
\'NumberFormatter': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $locale, int $style [, string $pattern]', 'return_type': ''},
\     'formatCurrency': { 'signature': 'float $value, string $currency | string', 'return_type': 'string'},
\     'format': { 'signature': 'number $value [, int $type] | string', 'return_type': 'string'},
\     'getAttribute': { 'signature': 'int $attr | int', 'return_type': 'int'},
\     'getErrorCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getErrorMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLocale': { 'signature': '[ int $type] | string', 'return_type': 'string'},
\     'getPattern': { 'signature': 'void | string', 'return_type': 'string'},
\     'getSymbol': { 'signature': 'int $attr | string', 'return_type': 'string'},
\     'getTextAttribute': { 'signature': 'int $attr | string', 'return_type': 'string'},
\     'parseCurrency': { 'signature': 'string $value, string &$currency [, int &$position] | float', 'return_type': 'float'},
\     'parse': { 'signature': 'string $value [, int $type [, int &$position]] | mixed', 'return_type': 'mixed'},
\     'setAttribute': { 'signature': 'int $attr, int $value | bool', 'return_type': 'bool'},
\     'setPattern': { 'signature': 'string $pattern | bool', 'return_type': 'bool'},
\     'setSymbol': { 'signature': 'int $attr, string $value | bool', 'return_type': 'bool'},
\     'setTextAttribute': { 'signature': 'int $attr, string $value | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'create': { 'signature': 'string $locale, int $style [, string $pattern] | NumberFormatter', 'return_type': 'NumberFormatter'},
\   },
\},
\'OAuth': {
\   'constants': {
\   },
\   'properties': {
\     'debug': { 'initializer': '', 'type': ''},
\     'sslChecks': { 'initializer': '', 'type': ''},
\     'debugInfo': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $consumer_key, string $consumer_secret [, string $signature_method = OAUTH_SIG_METHOD_HMACSHA1 [, int $auth_type = 0]]', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'disableDebug': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'disableRedirects': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'disableSSLChecks': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'enableDebug': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'enableRedirects': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'enableSSLChecks': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'fetch': { 'signature': 'string $protected_resource_url [, array $extra_parameters [, string $http_method [, array $http_headers]]] | mixed', 'return_type': 'mixed'},
\     'generateSignature': { 'signature': 'string $http_method, string $url [, mixed $extra_parameters] | string', 'return_type': 'string'},
\     'getAccessToken': { 'signature': 'string $access_token_url [, string $auth_session_handle [, string $verifier_token]] | array', 'return_type': 'array'},
\     'getCAPath': { 'signature': 'void | array', 'return_type': 'array'},
\     'getLastResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLastResponseHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLastResponseInfo': { 'signature': 'void | array', 'return_type': 'array'},
\     'getRequestHeader': { 'signature': 'string $http_method, string $url [, mixed $extra_parameters] | string', 'return_type': 'string'},
\     'getRequestToken': { 'signature': 'string $request_token_url [, string $callback_url] | array', 'return_type': 'array'},
\     'setAuthType': { 'signature': 'int $auth_type | mixed', 'return_type': 'mixed'},
\     'setCAPath': { 'signature': '[ string $ca_path [, string $ca_info]] | mixed', 'return_type': 'mixed'},
\     'setNonce': { 'signature': 'string $nonce | mixed', 'return_type': 'mixed'},
\     'setRequestEngine': { 'signature': 'int $reqengine | void', 'return_type': 'void'},
\     'setRSACertificate': { 'signature': 'string $cert | mixed', 'return_type': 'mixed'},
\     'setSSLChecks': { 'signature': 'int $sslcheck | bool', 'return_type': 'bool'},
\     'setTimestamp': { 'signature': 'string $timestamp | mixed', 'return_type': 'mixed'},
\     'setToken': { 'signature': 'string $token, string $token_secret | bool', 'return_type': 'bool'},
\     'setVersion': { 'signature': 'string $version | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'OAuthException': {
\   'constants': {
\   },
\   'properties': {
\     'lastResponse': { 'initializer': '', 'type': ''},
\     'debugInfo': { 'initializer': '', 'type': ''},
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
\'OAuthProvider': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addRequiredParameter': { 'signature': 'string $req_params | bool', 'return_type': 'bool'},
\     'callconsumerHandler': { 'signature': 'void | void', 'return_type': 'void'},
\     'callTimestampNonceHandler': { 'signature': 'void | void', 'return_type': 'void'},
\     'calltokenHandler': { 'signature': 'void | void', 'return_type': 'void'},
\     'checkOAuthRequest': { 'signature': '[ string $uri [, string $method]] | void', 'return_type': 'void'},
\     '__construct': { 'signature': '[ array $params_array]', 'return_type': ''},
\     'consumerHandler': { 'signature': 'callable $callback_function | void', 'return_type': 'void'},
\     'is2LeggedEndpoint': { 'signature': 'mixed $params_array | void', 'return_type': 'void'},
\     'isRequestTokenEndpoint': { 'signature': 'bool $will_issue_request_token | void', 'return_type': 'void'},
\     'removeRequiredParameter': { 'signature': 'string $req_params | bool', 'return_type': 'bool'},
\     'setParam': { 'signature': 'string $param_key [, mixed $param_val] | bool', 'return_type': 'bool'},
\     'setRequestTokenPath': { 'signature': 'string $path | bool', 'return_type': 'bool'},
\     'timestampNonceHandler': { 'signature': 'callable $callback_function | void', 'return_type': 'void'},
\     'tokenHandler': { 'signature': 'callable $callback_function | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'generateToken': { 'signature': 'int $size [, bool $strong = false] | string', 'return_type': 'string'},
\     'reportProblem': { 'signature': 'string $oauthexception [, bool $send_headers = true] | string', 'return_type': 'string'},
\   },
\},
\'OutOfBoundsException': {
\   'constants': {
\   },
\   'properties': {
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
\'OverflowException': {
\   'constants': {
\   },
\   'properties': {
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
\'PDO': {
\   'constants': {
\     'ATTR_AUTOCOMMIT': '',
\     'ATTR_CASE': '',
\     'ATTR_CLIENT_VERSION': '',
\     'ATTR_CONNECTION_STATUS': '',
\     'ATTR_CURSOR': '',
\     'ATTR_CURSOR_NAME': '',
\     'ATTR_DEFAULT_FETCH_MODE': '',
\     'ATTR_DRIVER_NAME': '',
\     'ATTR_EMULATE_PREPARES': '',
\     'ATTR_ERRMODE': '',
\     'ATTR_FETCH_CATALOG_NAMES': '',
\     'ATTR_FETCH_TABLE_NAMES': '',
\     'ATTR_MAX_COLUMN_LEN': '',
\     'ATTR_ORACLE_NULLS': '',
\     'ATTR_PERSISTENT': '',
\     'ATTR_PREFETCH': '',
\     'ATTR_SERVER_INFO': '',
\     'ATTR_SERVER_VERSION': '',
\     'ATTR_STATEMENT_CLASS': '',
\     'ATTR_STRINGIFY_FETCHES': '',
\     'ATTR_TIMEOUT': '',
\     'CASE_LOWER': '',
\     'CASE_NATURAL': '',
\     'CASE_UPPER': '',
\     'CLASS_CONSTANT': '',
\     'CURSOR_FWDONLY': '',
\     'CURSOR_SCROLL': '',
\     'ERRMODE_EXCEPTION': '',
\     'ERRMODE_SILENT': '',
\     'ERRMODE_WARNING': '',
\     'ERR_NONE': '',
\     'FB_ATTR_DATE_FORMAT': '',
\     'FB_ATTR_TIMESTAMP_FORMAT': '',
\     'FB_ATTR_TIME_FORMAT': '',
\     'FETCH_ASSOC': '',
\     'FETCH_BOTH': '',
\     'FETCH_BOUND': '',
\     'FETCH_CLASS': '',
\     'FETCH_CLASSTYPE': '',
\     'FETCH_COLUMN': '',
\     'FETCH_FUNC': '',
\     'FETCH_GROUP': '',
\     'FETCH_INTO': '',
\     'FETCH_KEY_PAIR': '',
\     'FETCH_LAZY': '',
\     'FETCH_NAMED': '',
\     'FETCH_NUM': '',
\     'FETCH_OBJ': '',
\     'FETCH_ORI_ABS': '',
\     'FETCH_ORI_FIRST': '',
\     'FETCH_ORI_LAST': '',
\     'FETCH_ORI_NEXT': '',
\     'FETCH_ORI_PRIOR': '',
\     'FETCH_ORI_REL': '',
\     'FETCH_PROPS_LATE': '',
\     'FETCH_SERIALIZE': '',
\     'FETCH_UNIQUE': '',
\     'FOURD_ATTR_CHARSET': '',
\     'FOURD_ATTR_PREFERRED_IMAGE_TYPES': '',
\     'MYSQL_ATTR_COMPRESS': '',
\     'MYSQL_ATTR_DIRECT_QUERY': '',
\     'MYSQL_ATTR_FOUND_ROWS': '',
\     'MYSQL_ATTR_IGNORE_SPACE': '',
\     'MYSQL_ATTR_INIT_COMMAND': '',
\     'MYSQL_ATTR_LOCAL_INFILE': '',
\     'MYSQL_ATTR_MAX_BUFFER_SIZE': '',
\     'MYSQL_ATTR_READ_DEFAULT_FILE': '',
\     'MYSQL_ATTR_READ_DEFAULT_GROUP': '',
\     'MYSQL_ATTR_SSL_CA': '',
\     'MYSQL_ATTR_SSL_CAPATH': '',
\     'MYSQL_ATTR_SSL_CERT': '',
\     'MYSQL_ATTR_SSL_CIPHER': '',
\     'MYSQL_ATTR_SSL_KEY': '',
\     'MYSQL_ATTR_USE_BUFFERED_QUERY': '',
\     'NULL_EMPTY_STRING': '',
\     'NULL_NATURAL': '',
\     'NULL_TO_STRING': '',
\     'PARAM_BOOL': '',
\     'PARAM_EVT_ALLOC': '',
\     'PARAM_EVT_EXEC_POST': '',
\     'PARAM_EVT_EXEC_PRE': '',
\     'PARAM_EVT_FETCH_POST': '',
\     'PARAM_EVT_FETCH_PRE': '',
\     'PARAM_EVT_FREE': '',
\     'PARAM_EVT_NORMALIZE': '',
\     'PARAM_INPUT_OUTPUT': '',
\     'PARAM_INT': '',
\     'PARAM_LOB': '',
\     'PARAM_NULL': '',
\     'PARAM_STMT': '',
\     'PARAM_STR': '',
\     'SQLSRV_ATTR_DIRECT_QUERY': '',
\     'SQLSRV_ATTR_QUERY_TIMEOUT': '',
\     'SQLSRV_ENCODING_BINARY': '',
\     'SQLSRV_ENCODING_DEFAULT': '',
\     'SQLSRV_ENCODING_SYSTEM': '',
\     'SQLSRV_ENCODING_UTF8': '',
\     'SQLSRV_TXN_READ_COMMITTED': '',
\     'SQLSRV_TXN_READ_UNCOMMITTED': '',
\     'SQLSRV_TXN_REPEATABLE_READ': '',
\     'SQLSRV_TXN_SERIALIZABLE': '',
\     'SQLSRV_TXN_SNAPSHOT': '',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $dsn [, string $username [, string $password [, array $driver_options]]]', 'return_type': ''},
\     'beginTransaction': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'commit': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'errorCode': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'errorInfo': { 'signature': 'void | array', 'return_type': 'array'},
\     'exec': { 'signature': 'string $statement | int', 'return_type': 'int'},
\     'getAttribute': { 'signature': 'int $attribute | mixed', 'return_type': 'mixed'},
\     'inTransaction': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'lastInsertId': { 'signature': '[ string $name = NULL] | string', 'return_type': 'string'},
\     'prepare': { 'signature': 'string $statement [, array $driver_options = array()] | PDOStatement', 'return_type': 'PDOStatement'},
\     'query': { 'signature': 'string $statement | PDOStatement', 'return_type': 'PDOStatement'},
\     'quote': { 'signature': 'string $string [, int $parameter_type = PDO::PARAM_STR] | string', 'return_type': 'string'},
\     'rollBack': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setAttribute': { 'signature': 'int $attribute, mixed $value | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'getAvailableDrivers': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\},
\'PDOException': {
\   'constants': {
\   },
\   'properties': {
\     'errorInfo': { 'initializer': '', 'type': 'array'},
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'string'},
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
\'PDOStatement': {
\   'constants': {
\   },
\   'properties': {
\     'queryString': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'bindColumn': { 'signature': 'mixed $column, mixed &$param [, int $type [, int $maxlen [, mixed $driverdata]]] | bool', 'return_type': 'bool'},
\     'bindParam': { 'signature': 'mixed $parameter, mixed &$variable [, int $data_type = PDO::PARAM_STR [, int $length [, mixed $driver_options]]] | bool', 'return_type': 'bool'},
\     'bindValue': { 'signature': 'mixed $parameter, mixed $value [, int $data_type = PDO::PARAM_STR] | bool', 'return_type': 'bool'},
\     'closeCursor': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'columnCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'debugDumpParams': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'errorCode': { 'signature': 'void | string', 'return_type': 'string'},
\     'errorInfo': { 'signature': 'void | array', 'return_type': 'array'},
\     'execute': { 'signature': '[ array $input_parameters] | bool', 'return_type': 'bool'},
\     'fetch': { 'signature': '[ int $fetch_style [, int $cursor_orientation = PDO::FETCH_ORI_NEXT [, int $cursor_offset = 0]]] | mixed', 'return_type': 'mixed'},
\     'fetchAll': { 'signature': '[ int $fetch_style [, mixed $fetch_argument [, array $ctor_args = array()]]] | array', 'return_type': 'array'},
\     'fetchColumn': { 'signature': '[ int $column_number = 0] | string', 'return_type': 'string'},
\     'fetchObject': { 'signature': '[ string $class_name = "stdClass" [, array $ctor_args]] | mixed', 'return_type': 'mixed'},
\     'getAttribute': { 'signature': 'int $attribute | mixed', 'return_type': 'mixed'},
\     'getColumnMeta': { 'signature': 'int $column | array', 'return_type': 'array'},
\     'nextRowset': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rowCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'setAttribute': { 'signature': 'int $attribute, mixed $value | bool', 'return_type': 'bool'},
\     'setFetchMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
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
\'Phar': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addEmptyDir': { 'signature': 'string $dirname | void', 'return_type': 'void'},
\     'addFile': { 'signature': 'string $file [, string $localname] | void', 'return_type': 'void'},
\     'addFromString': { 'signature': 'string $localname, string $contents | void', 'return_type': 'void'},
\     'apiVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'buildFromDirectory': { 'signature': 'string $base_dir [, string $regex] | array', 'return_type': 'array'},
\     'buildFromIterator': { 'signature': 'Iterator $iter [, string $base_directory] | array', 'return_type': 'array'},
\     'canCompress': { 'signature': '[ int $type = 0] | bool', 'return_type': 'bool'},
\     'canWrite': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'compress': { 'signature': 'int $compression [, string $extension] | object', 'return_type': 'object'},
\     'compressAllFilesBZIP2': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'compressAllFilesGZ': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'compressFiles': { 'signature': 'int $compression | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'string $fname [, int $flags [, string $alias]]', 'return_type': ''},
\     'convertToData': { 'signature': '[ int $format = 9021976 [, int $compression = 9021976 [, string $extension]]] | PharData', 'return_type': 'PharData'},
\     'convertToExecutable': { 'signature': '[ int $format = 9021976 [, int $compression = 9021976 [, string $extension]]] | Phar', 'return_type': 'Phar'},
\     'copy': { 'signature': 'string $oldfile, string $newfile | bool', 'return_type': 'bool'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'createDefaultStub': { 'signature': '[ string $indexfile [, string $webindexfile]] | string', 'return_type': 'string'},
\     'decompress': { 'signature': '[ string $extension] | object', 'return_type': 'object'},
\     'decompressFiles': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'delMetadata': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'delete': { 'signature': 'string $entry | bool', 'return_type': 'bool'},
\     'extractTo': { 'signature': 'string $pathto [, string|array $files [, bool $overwrite = false]] | bool', 'return_type': 'bool'},
\     'getMetadata': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getModified': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getSignature': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStub': { 'signature': 'void | string', 'return_type': 'string'},
\     'getSupportedCompression': { 'signature': 'void | array', 'return_type': 'array'},
\     'getSupportedSignatures': { 'signature': 'void | array', 'return_type': 'array'},
\     'getVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasMetadata': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'interceptFileFuncs': { 'signature': 'void | void', 'return_type': 'void'},
\     'isBuffering': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isCompressed': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'isFileFormat': { 'signature': 'int $format | bool', 'return_type': 'bool'},
\     'isValidPharFilename': { 'signature': 'string $filename [, bool $executable = true] | bool', 'return_type': 'bool'},
\     'isWritable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'loadPhar': { 'signature': 'string $filename [, string $alias] | bool', 'return_type': 'bool'},
\     'mapPhar': { 'signature': '[ string $alias [, int $dataoffset = 0]] | bool', 'return_type': 'bool'},
\     'mount': { 'signature': 'string $pharpath, string $externalpath | void', 'return_type': 'void'},
\     'mungServer': { 'signature': 'array $munglist | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $offset | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'string $offset | int', 'return_type': 'int'},
\     'offsetSet': { 'signature': 'string $offset, string $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $offset | bool', 'return_type': 'bool'},
\     'running': { 'signature': '[ bool $retphar = true] | string', 'return_type': 'string'},
\     'setAlias': { 'signature': 'string $alias | bool', 'return_type': 'bool'},
\     'setDefaultStub': { 'signature': '[ string $index [, string $webindex]] | bool', 'return_type': 'bool'},
\     'setMetadata': { 'signature': 'mixed $metadata | void', 'return_type': 'void'},
\     'setSignatureAlgorithm': { 'signature': 'int $sigtype [, string $privatekey] | void', 'return_type': 'void'},
\     'setStub': { 'signature': 'string $stub | bool', 'return_type': 'bool'},
\     'startBuffering': { 'signature': 'void | void', 'return_type': 'void'},
\     'stopBuffering': { 'signature': 'void | void', 'return_type': 'void'},
\     'uncompressAllFiles': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'unlinkArchive': { 'signature': 'string $archive | bool', 'return_type': 'bool'},
\     'webPhar': { 'signature': '[ string $alias [, string $index = "index.php" [, string $f404 [, array $mimetypes [, callable $rewrites]]]]] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'PharData': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addEmptyDir': { 'signature': 'string $dirname | void', 'return_type': 'void'},
\     'addFile': { 'signature': 'string $file [, string $localname] | void', 'return_type': 'void'},
\     'addFromString': { 'signature': 'string $localname, string $contents | void', 'return_type': 'void'},
\     'buildFromDirectory': { 'signature': 'string $base_dir [, string $regex] | array', 'return_type': 'array'},
\     'buildFromIterator': { 'signature': 'Iterator $iter [, string $base_directory] | array', 'return_type': 'array'},
\     'compress': { 'signature': 'int $compression [, string $extension] | object', 'return_type': 'object'},
\     'compressFiles': { 'signature': 'int $compression | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'string $fname [, int $flags [, string $alias]]', 'return_type': ''},
\     'convertToData': { 'signature': '[ int $format = 9021976 [, int $compression = 9021976 [, string $extension]]] | PharData', 'return_type': 'PharData'},
\     'convertToExecutable': { 'signature': '[ int $format = 9021976 [, int $compression = 9021976 [, string $extension]]] | Phar', 'return_type': 'Phar'},
\     'copy': { 'signature': 'string $oldfile, string $newfile | bool', 'return_type': 'bool'},
\     'decompress': { 'signature': '[ string $extension] | object', 'return_type': 'object'},
\     'decompressFiles': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'delMetadata': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'delete': { 'signature': 'string $entry | bool', 'return_type': 'bool'},
\     'extractTo': { 'signature': 'string $pathto [, string|array $files [, bool $overwrite = false]] | bool', 'return_type': 'bool'},
\     'isWritable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'offsetSet': { 'signature': 'string $offset, string $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $offset | bool', 'return_type': 'bool'},
\     'setAlias': { 'signature': 'string $alias | bool', 'return_type': 'bool'},
\     'setDefaultStub': { 'signature': '[ string $index [, string $webindex]] | bool', 'return_type': 'bool'},
\     'setMetadata': { 'signature': 'mixed $metadata | void', 'return_type': 'void'},
\     'setSignatureAlgorithm': { 'signature': 'int $sigtype [, string $privatekey] | void', 'return_type': 'void'},
\     'setStub': { 'signature': 'string $stub | bool', 'return_type': 'bool'},
\     'apiVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'canCompress': { 'signature': '[ int $type = 0] | bool', 'return_type': 'bool'},
\     'canWrite': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'compressAllFilesBZIP2': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'compressAllFilesGZ': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'createDefaultStub': { 'signature': '[ string $indexfile [, string $webindexfile]] | string', 'return_type': 'string'},
\     'getMetadata': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getModified': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getSignature': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStub': { 'signature': 'void | string', 'return_type': 'string'},
\     'getSupportedCompression': { 'signature': 'void | array', 'return_type': 'array'},
\     'getSupportedSignatures': { 'signature': 'void | array', 'return_type': 'array'},
\     'getVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasMetadata': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'interceptFileFuncs': { 'signature': 'void | void', 'return_type': 'void'},
\     'isBuffering': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isCompressed': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'isFileFormat': { 'signature': 'int $format | bool', 'return_type': 'bool'},
\     'isValidPharFilename': { 'signature': 'string $filename [, bool $executable = true] | bool', 'return_type': 'bool'},
\     'loadPhar': { 'signature': 'string $filename [, string $alias] | bool', 'return_type': 'bool'},
\     'mapPhar': { 'signature': '[ string $alias [, int $dataoffset = 0]] | bool', 'return_type': 'bool'},
\     'mount': { 'signature': 'string $pharpath, string $externalpath | void', 'return_type': 'void'},
\     'mungServer': { 'signature': 'array $munglist | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $offset | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'string $offset | int', 'return_type': 'int'},
\     'running': { 'signature': '[ bool $retphar = true] | string', 'return_type': 'string'},
\     'startBuffering': { 'signature': 'void | void', 'return_type': 'void'},
\     'stopBuffering': { 'signature': 'void | void', 'return_type': 'void'},
\     'uncompressAllFiles': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'unlinkArchive': { 'signature': 'string $archive | bool', 'return_type': 'bool'},
\     'webPhar': { 'signature': '[ string $alias [, string $index = "index.php" [, string $f404 [, array $mimetypes [, callable $rewrites]]]]] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'PharException': {
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
\'PharFileInfo': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'chmod': { 'signature': 'int $permissions | void', 'return_type': 'void'},
\     'compress': { 'signature': 'int $compression | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'string $entry', 'return_type': ''},
\     'decompress': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'delMetadata': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getCRC32': { 'signature': 'void | int', 'return_type': 'int'},
\     'getCompressedSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMetadata': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getPharFlags': { 'signature': 'void | int', 'return_type': 'int'},
\     'hasMetadata': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isCRCChecked': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isCompressed': { 'signature': '[ int $compression_type = 9021976] | bool', 'return_type': 'bool'},
\     'isCompressedBZIP2': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isCompressedGZ': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setCompressedBZIP2': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setCompressedGZ': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setMetadata': { 'signature': 'mixed $metadata | void', 'return_type': 'void'},
\     'setUncompressed': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'QuickHashIntHash': {
\   'constants': {
\     'CHECK_FOR_DUPES': '1',
\     'DO_NOT_USE_ZEND_ALLOC': '2',
\     'HASHER_NO_HASH': '256',
\     'HASHER_JENKINS1': '512',
\     'HASHER_JENKINS2': '1024',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'int $key [, int $value] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'int $size [, int $options]', 'return_type': ''},
\     'delete': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'exists': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'int $key | int', 'return_type': 'int'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'saveToFile': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'saveToString': { 'signature': 'void | string', 'return_type': 'string'},
\     'set': { 'signature': 'int $key, int $value | bool', 'return_type': 'bool'},
\     'update': { 'signature': 'int $key, int $value | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'loadFromFile': { 'signature': 'string $filename [, int $options] | QuickHashIntHash', 'return_type': 'QuickHashIntHash'},
\     'loadFromString': { 'signature': 'string $contents [, int $options] | QuickHashIntHash', 'return_type': 'QuickHashIntHash'},
\   },
\},
\'QuickHashIntSet': {
\   'constants': {
\     'CHECK_FOR_DUPES': '1',
\     'DO_NOT_USE_ZEND_ALLOC': '2',
\     'HASHER_NO_HASH': '256',
\     'HASHER_JENKINS1': '512',
\     'HASHER_JENKINS2': '1024',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'int $size [, int $options]', 'return_type': ''},
\     'delete': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'exists': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'saveToFile': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'saveToString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'loadFromFile': { 'signature': 'string $filename [, int $size [, int $options]] | QuickHashIntSet', 'return_type': 'QuickHashIntSet'},
\     'loadFromString': { 'signature': 'string $contents [, int $size [, int $options]] | QuickHashIntSet', 'return_type': 'QuickHashIntSet'},
\   },
\},
\'QuickHashIntStringHash': {
\   'constants': {
\     'CHECK_FOR_DUPES': '1',
\     'DO_NOT_USE_ZEND_ALLOC': '2',
\     'HASHER_NO_HASH': '256',
\     'HASHER_JENKINS1': '512',
\     'HASHER_JENKINS2': '1024',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'int $key, string $value | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'int $size [, int $options = 0]', 'return_type': ''},
\     'delete': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'exists': { 'signature': 'int $key | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'int $key | mixed', 'return_type': 'mixed'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'saveToFile': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'saveToString': { 'signature': 'void | string', 'return_type': 'string'},
\     'set': { 'signature': 'int $key, string $value | int', 'return_type': 'int'},
\     'update': { 'signature': 'int $key, string $value | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'loadFromFile': { 'signature': 'string $filename [, int $size = 0 [, int $options = 0]] | QuickHashIntStringHash', 'return_type': 'QuickHashIntStringHash'},
\     'loadFromString': { 'signature': 'string $contents [, int $size = 0 [, int $options = 0]] | QuickHashIntStringHash', 'return_type': 'QuickHashIntStringHash'},
\   },
\},
\'QuickHashStringIntHash': {
\   'constants': {
\     'CHECK_FOR_DUPES': '1',
\     'DO_NOT_USE_ZEND_ALLOC': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'string $key, int $value | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'int $size [, int $options = 0]', 'return_type': ''},
\     'delete': { 'signature': 'string $key | bool', 'return_type': 'bool'},
\     'exists': { 'signature': 'string $key | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'string $key | mixed', 'return_type': 'mixed'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'saveToFile': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'saveToString': { 'signature': 'void | string', 'return_type': 'string'},
\     'set': { 'signature': 'string $key, int $value | int', 'return_type': 'int'},
\     'update': { 'signature': 'string $key, int $value | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'loadFromFile': { 'signature': 'string $filename [, int $size = 0 [, int $options = 0]] | QuickHashStringIntHash', 'return_type': 'QuickHashStringIntHash'},
\     'loadFromString': { 'signature': 'string $contents [, int $size = 0 [, int $options = 0]] | QuickHashStringIntHash', 'return_type': 'QuickHashStringIntHash'},
\   },
\},
\'RRDCreator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addArchive': { 'signature': 'string $description | void', 'return_type': 'void'},
\     'addDataSource': { 'signature': 'string $description | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'string $path [, string $startTime [, int $step = 0]]', 'return_type': ''},
\     'save': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'RRDGraph': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $path', 'return_type': ''},
\     'save': { 'signature': 'void | array', 'return_type': 'array'},
\     'saveVerbose': { 'signature': 'void | array', 'return_type': 'array'},
\     'setOptions': { 'signature': 'array $options | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'RRDUpdater': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $path', 'return_type': ''},
\     'update': { 'signature': 'array $values [, string $time = time()] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'RangeException': {
\   'constants': {
\   },
\   'properties': {
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
\'RarArchive': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getEntries': { 'signature': 'void | array', 'return_type': 'array'},
\     'getEntry': { 'signature': 'string $entryname | RarEntry', 'return_type': 'RarEntry'},
\     'isBroken': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isSolid': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setAllowBroken': { 'signature': 'bool $allow_broken | bool', 'return_type': 'bool'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'open': { 'signature': 'string $filename [, string $password = NULL [, callable $volume_callback = NULL]] | RarArchive', 'return_type': 'RarArchive'},
\   },
\},
\'RarEntry': {
\   'constants': {
\     'HOST_MSDOS': '0',
\     'HOST_OS2': '1',
\     'HOST_WIN32': '2',
\     'HOST_UNIX': '3',
\     'HOST_MACOS': '4',
\     'HOST_BEOS': '5',
\     'ATTRIBUTE_WIN_READONLY': '1',
\     'ATTRIBUTE_WIN_HIDDEN': '2',
\     'ATTRIBUTE_WIN_SYSTEM': '4',
\     'ATTRIBUTE_WIN_DIRECTORY': '16',
\     'ATTRIBUTE_WIN_ARCHIVE': '32',
\     'ATTRIBUTE_WIN_DEVICE': '64',
\     'ATTRIBUTE_WIN_NORMAL': '128',
\     'ATTRIBUTE_WIN_TEMPORARY': '256',
\     'ATTRIBUTE_WIN_SPARSE_FILE': '512',
\     'ATTRIBUTE_WIN_REPARSE_POINT': '1024',
\     'ATTRIBUTE_WIN_COMPRESSED': '2048',
\     'ATTRIBUTE_WIN_OFFLINE': '4096',
\     'ATTRIBUTE_WIN_NOT_CONTENT_INDEXED': '8192',
\     'ATTRIBUTE_WIN_ENCRYPTED': '16384',
\     'ATTRIBUTE_WIN_VIRTUAL': '65536',
\     'ATTRIBUTE_UNIX_WORLD_EXECUTE': '1',
\     'ATTRIBUTE_UNIX_WORLD_WRITE': '2',
\     'ATTRIBUTE_UNIX_WORLD_READ': '4',
\     'ATTRIBUTE_UNIX_GROUP_EXECUTE': '8',
\     'ATTRIBUTE_UNIX_GROUP_WRITE': '16',
\     'ATTRIBUTE_UNIX_GROUP_READ': '32',
\     'ATTRIBUTE_UNIX_OWNER_EXECUTE': '64',
\     'ATTRIBUTE_UNIX_OWNER_WRITE': '128',
\     'ATTRIBUTE_UNIX_OWNER_READ': '256',
\     'ATTRIBUTE_UNIX_STICKY': '512',
\     'ATTRIBUTE_UNIX_SETGID': '1024',
\     'ATTRIBUTE_UNIX_SETUID': '2048',
\     'ATTRIBUTE_UNIX_FINAL_QUARTET': '61440',
\     'ATTRIBUTE_UNIX_FIFO': '4096',
\     'ATTRIBUTE_UNIX_CHAR_DEV': '8192',
\     'ATTRIBUTE_UNIX_DIRECTORY': '16384',
\     'ATTRIBUTE_UNIX_BLOCK_DEV': '24576',
\     'ATTRIBUTE_UNIX_REGULAR_FILE': '32768',
\     'ATTRIBUTE_UNIX_SYM_LINK': '40960',
\     'ATTRIBUTE_UNIX_SOCKET': '49152',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'extract': { 'signature': 'string $dir [, string $filepath = '''' [, string $password = NULL [, bool $extended_data = false]]] | bool', 'return_type': 'bool'},
\     'getAttr': { 'signature': 'void | int', 'return_type': 'int'},
\     'getCrc': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFileTime': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHostOs': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMethod': { 'signature': 'void | int', 'return_type': 'int'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPackedSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStream': { 'signature': '[ string $password] | resource', 'return_type': 'resource'},
\     'getUnpackedSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'getVersion': { 'signature': 'void | int', 'return_type': 'int'},
\     'isDirectory': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isEncrypted': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'RarException': {
\   'constants': {
\   },
\   'properties': {
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
\     'isUsingExceptions': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setUsingExceptions': { 'signature': 'bool $using_exceptions | void', 'return_type': 'void'},
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
\     'getSubIterator': { 'signature': 'void | RecursiveIterator', 'return_type': 'RecursiveIterator'},
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
\     'getSubIterator': { 'signature': 'void | RecursiveIterator', 'return_type': 'RecursiveIterator'},
\     'setMaxDepth': { 'signature': '[ string $max_depth = -1] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Reflection': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'export': { 'signature': 'Reflector $reflector [, bool $return = false] | string', 'return_type': 'string'},
\     'getModifierNames': { 'signature': 'int $modifiers | array', 'return_type': 'array'},
\   },
\},
\'ReflectionClass': {
\   'constants': {
\     'IS_IMPLICIT_ABSTRACT': '16',
\     'IS_EXPLICIT_ABSTRACT': '32',
\     'IS_FINAL': '64',
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'mixed $argument', 'return_type': ''},
\     'getConstant': { 'signature': 'string $name | mixed', 'return_type': 'mixed'},
\     'getConstants': { 'signature': 'void | array', 'return_type': 'array'},
\     'getConstructor': { 'signature': 'void | ReflectionMethod', 'return_type': 'ReflectionMethod'},
\     'getDefaultProperties': { 'signature': 'void | array', 'return_type': 'array'},
\     'getDocComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getEndLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getExtension': { 'signature': 'void | ReflectionExtension', 'return_type': 'ReflectionExtension'},
\     'getExtensionName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFileName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getInterfaceNames': { 'signature': 'void | array', 'return_type': 'array'},
\     'getInterfaces': { 'signature': 'void | array', 'return_type': 'array'},
\     'getMethod': { 'signature': 'string $name | ReflectionMethod', 'return_type': 'ReflectionMethod'},
\     'getMethods': { 'signature': '[ string $filter] | array', 'return_type': 'array'},
\     'getModifiers': { 'signature': 'void | int', 'return_type': 'int'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNamespaceName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getParentClass': { 'signature': 'void | object', 'return_type': 'object'},
\     'getProperties': { 'signature': '[ int $filter] | array', 'return_type': 'array'},
\     'getProperty': { 'signature': 'string $name | ReflectionProperty', 'return_type': 'ReflectionProperty'},
\     'getShortName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getStartLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStaticProperties': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStaticPropertyValue': { 'signature': 'string $name | mixed', 'return_type': 'mixed'},
\     'getTraitAliases': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTraitNames': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTraits': { 'signature': 'void | array', 'return_type': 'array'},
\     'hasConstant': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'hasMethod': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'hasProperty': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'implementsInterface': { 'signature': 'string $interface | bool', 'return_type': 'bool'},
\     'inNamespace': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isAbstract': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isCloneable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isFinal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isInstance': { 'signature': 'object $object | bool', 'return_type': 'bool'},
\     'isInstantiable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isInterface': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isInternal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isIterateable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isSubclassOf': { 'signature': 'string $class | bool', 'return_type': 'bool'},
\     'isTrait': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isUserDefined': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'newInstance': { 'signature': 'mixed $args [, mixed $...] | object', 'return_type': 'object'},
\     'newInstanceArgs': { 'signature': '[ array $args] | object', 'return_type': 'object'},
\     'newInstanceWithoutConstructor': { 'signature': 'void | object', 'return_type': 'object'},
\     'setStaticPropertyValue': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'export': { 'signature': 'mixed $argument [, bool $return = false] | string', 'return_type': 'string'},
\   },
\},
\'ReflectionException': {
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
\'ReflectionExtension': {
\   'constants': {
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'string $name', 'return_type': ''},
\     'getClasses': { 'signature': 'void | array', 'return_type': 'array'},
\     'getClassNames': { 'signature': 'void | array', 'return_type': 'array'},
\     'getConstants': { 'signature': 'void | array', 'return_type': 'array'},
\     'getDependencies': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFunctions': { 'signature': 'void | array', 'return_type': 'array'},
\     'getINIEntries': { 'signature': 'void | array', 'return_type': 'array'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'info': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPersistent': { 'signature': 'void | void', 'return_type': 'void'},
\     'isTemporary': { 'signature': 'void | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'export': { 'signature': 'string $name [, string $return = false] | string', 'return_type': 'string'},
\   },
\},
\'ReflectionFunction': {
\   'constants': {
\     'IS_DEPRECATED': '262144',
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'mixed $name', 'return_type': ''},
\     'getClosure': { 'signature': 'void | Closure', 'return_type': 'Closure'},
\     'invoke': { 'signature': '[ mixed $parameter [, mixed $...]] | mixed', 'return_type': 'mixed'},
\     'invokeArgs': { 'signature': 'array $args | mixed', 'return_type': 'mixed'},
\     'isDisabled': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__toString': { 'signature': 'void | void', 'return_type': 'void'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     'getClosureThis': { 'signature': 'void | object', 'return_type': 'object'},
\     'getDocComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getEndLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getExtension': { 'signature': 'void | ReflectionExtension', 'return_type': 'ReflectionExtension'},
\     'getExtensionName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFileName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNamespaceName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNumberOfParameters': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNumberOfRequiredParameters': { 'signature': 'void | int', 'return_type': 'int'},
\     'getParameters': { 'signature': 'void | array', 'return_type': 'array'},
\     'getShortName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getStartLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStaticVariables': { 'signature': 'void | array', 'return_type': 'array'},
\     'inNamespace': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isClosure': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isDeprecated': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isInternal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isUserDefined': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'returnsReference': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'export': { 'signature': 'string $name [, string $return] | string', 'return_type': 'string'},
\   },
\},
\'ReflectionFunctionAbstract': {
\   'constants': {
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     'getClosureThis': { 'signature': 'void | object', 'return_type': 'object'},
\     'getDocComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getEndLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getExtension': { 'signature': 'void | ReflectionExtension', 'return_type': 'ReflectionExtension'},
\     'getExtensionName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFileName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNamespaceName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNumberOfParameters': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNumberOfRequiredParameters': { 'signature': 'void | int', 'return_type': 'int'},
\     'getParameters': { 'signature': 'void | array', 'return_type': 'array'},
\     'getShortName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getStartLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStaticVariables': { 'signature': 'void | array', 'return_type': 'array'},
\     'inNamespace': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isClosure': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isDeprecated': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isInternal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isUserDefined': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'returnsReference': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__toString': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'ReflectionMethod': {
\   'constants': {
\     'IS_STATIC': '1',
\     'IS_PUBLIC': '256',
\     'IS_PROTECTED': '512',
\     'IS_PRIVATE': '1024',
\     'IS_ABSTRACT': '2',
\     'IS_FINAL': '4',
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': ''},
\     'class': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'mixed $class, string $name', 'return_type': ''},
\     'getClosure': { 'signature': 'string $object | Closure', 'return_type': 'Closure'},
\     'getDeclaringClass': { 'signature': 'void | ReflectionClass', 'return_type': 'ReflectionClass'},
\     'getModifiers': { 'signature': 'void | int', 'return_type': 'int'},
\     'getPrototype': { 'signature': 'void | ReflectionMethod', 'return_type': 'ReflectionMethod'},
\     'invoke': { 'signature': 'object $object [, mixed $parameter [, mixed $...]] | mixed', 'return_type': 'mixed'},
\     'invokeArgs': { 'signature': 'object $object, array $args | mixed', 'return_type': 'mixed'},
\     'isAbstract': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isConstructor': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isDestructor': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isFinal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isPrivate': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isProtected': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isPublic': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isStatic': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setAccessible': { 'signature': 'bool $accessible | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | void', 'return_type': 'void'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     'getClosureThis': { 'signature': 'void | object', 'return_type': 'object'},
\     'getDocComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getEndLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getExtension': { 'signature': 'void | ReflectionExtension', 'return_type': 'ReflectionExtension'},
\     'getExtensionName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFileName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNamespaceName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNumberOfParameters': { 'signature': 'void | int', 'return_type': 'int'},
\     'getNumberOfRequiredParameters': { 'signature': 'void | int', 'return_type': 'int'},
\     'getParameters': { 'signature': 'void | array', 'return_type': 'array'},
\     'getShortName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getStartLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStaticVariables': { 'signature': 'void | array', 'return_type': 'array'},
\     'inNamespace': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isClosure': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isDeprecated': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isInternal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isUserDefined': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'returnsReference': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'export': { 'signature': 'string $class, string $name [, bool $return = false] | string', 'return_type': 'string'},
\   },
\},
\'ReflectionObject': {
\   'constants': {
\     'IS_IMPLICIT_ABSTRACT': '16',
\     'IS_EXPLICIT_ABSTRACT': '32',
\     'IS_FINAL': '64',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'mixed $argument', 'return_type': ''},
\     'getConstant': { 'signature': 'string $name | mixed', 'return_type': 'mixed'},
\     'getConstants': { 'signature': 'void | array', 'return_type': 'array'},
\     'getConstructor': { 'signature': 'void | ReflectionMethod', 'return_type': 'ReflectionMethod'},
\     'getDefaultProperties': { 'signature': 'void | array', 'return_type': 'array'},
\     'getDocComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getEndLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getExtension': { 'signature': 'void | ReflectionExtension', 'return_type': 'ReflectionExtension'},
\     'getExtensionName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFileName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getInterfaceNames': { 'signature': 'void | array', 'return_type': 'array'},
\     'getInterfaces': { 'signature': 'void | array', 'return_type': 'array'},
\     'getMethod': { 'signature': 'string $name | ReflectionMethod', 'return_type': 'ReflectionMethod'},
\     'getMethods': { 'signature': '[ string $filter] | array', 'return_type': 'array'},
\     'getModifiers': { 'signature': 'void | int', 'return_type': 'int'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNamespaceName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getParentClass': { 'signature': 'void | object', 'return_type': 'object'},
\     'getProperties': { 'signature': '[ int $filter] | array', 'return_type': 'array'},
\     'getProperty': { 'signature': 'string $name | ReflectionProperty', 'return_type': 'ReflectionProperty'},
\     'getShortName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getStartLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStaticProperties': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStaticPropertyValue': { 'signature': 'string $name | mixed', 'return_type': 'mixed'},
\     'getTraitAliases': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTraitNames': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTraits': { 'signature': 'void | array', 'return_type': 'array'},
\     'hasConstant': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'hasMethod': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'hasProperty': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'implementsInterface': { 'signature': 'string $interface | bool', 'return_type': 'bool'},
\     'inNamespace': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isAbstract': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isCloneable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isFinal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isInstance': { 'signature': 'object $object | bool', 'return_type': 'bool'},
\     'isInstantiable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isInterface': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isInternal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isIterateable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isSubclassOf': { 'signature': 'string $class | bool', 'return_type': 'bool'},
\     'isTrait': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isUserDefined': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'newInstance': { 'signature': 'mixed $args [, mixed $...] | object', 'return_type': 'object'},
\     'newInstanceArgs': { 'signature': '[ array $args] | object', 'return_type': 'object'},
\     'newInstanceWithoutConstructor': { 'signature': 'void | object', 'return_type': 'object'},
\     'setStaticPropertyValue': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'export': { 'signature': 'mixed $argument [, bool $return = false] | string', 'return_type': 'string'},
\   },
\},
\'ReflectionParameter': {
\   'constants': {
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'allowsNull': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'canBePassedByValue': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'string $function, string $parameter', 'return_type': ''},
\     'getClass': { 'signature': 'void | ReflectionClass', 'return_type': 'ReflectionClass'},
\     'getDeclaringClass': { 'signature': 'void | ReflectionClass', 'return_type': 'ReflectionClass'},
\     'getDeclaringFunction': { 'signature': 'void | ReflectionFunction', 'return_type': 'ReflectionFunction'},
\     'getDefaultValue': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPosition': { 'signature': 'void | int', 'return_type': 'int'},
\     'isArray': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isDefaultValueAvailable': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isOptional': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isPassedByReference': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'export': { 'signature': 'string $function, string $parameter [, bool $return] | string', 'return_type': 'string'},
\   },
\},
\'ReflectionProperty': {
\   'constants': {
\     'IS_STATIC': '1',
\     'IS_PUBLIC': '256',
\     'IS_PROTECTED': '512',
\     'IS_PRIVATE': '1024',
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': ''},
\     'class': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'mixed $class, string $name', 'return_type': ''},
\     'getDeclaringClass': { 'signature': 'void | ReflectionClass', 'return_type': 'ReflectionClass'},
\     'getDocComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getModifiers': { 'signature': 'void | int', 'return_type': 'int'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getValue': { 'signature': 'object $object | mixed', 'return_type': 'mixed'},
\     'isDefault': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isPrivate': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isProtected': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isPublic': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isStatic': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setAccessible': { 'signature': 'bool $accessible | void', 'return_type': 'void'},
\     'setValue': { 'signature': 'object $object, mixed $value | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'export': { 'signature': 'mixed $class, string $name [, bool $return] | string', 'return_type': 'string'},
\   },
\},
\'ReflectionZendExtension': {
\   'constants': {
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'string $name', 'return_type': ''},
\     'getAuthor': { 'signature': 'void | string', 'return_type': 'string'},
\     'getCopyright': { 'signature': 'void | string', 'return_type': 'string'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getURL': { 'signature': 'void | string', 'return_type': 'string'},
\     'getVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'export': { 'signature': 'string $name [, string $return] | string', 'return_type': 'string'},
\   },
\},
\'Reflector': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'export': { 'signature': 'void | string', 'return_type': 'string'},
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
\'ResourceBundle': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $locale, string $bundlename [, bool $fallback]', 'return_type': ''},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'getErrorCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getErrorMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'get': { 'signature': 'string|int $index | mixed', 'return_type': 'mixed'},
\     'getLocales': { 'signature': 'string $bundlename | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\     'create': { 'signature': 'string $locale, string $bundlename [, bool $fallback] | ResourceBundle', 'return_type': 'ResourceBundle'},
\   },
\},
\'RuntimeException': {
\   'constants': {
\   },
\   'properties': {
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
\'SNMP': {
\   'constants': {
\     'ERRNO_NOERROR': '',
\     'ERRNO_GENERIC': '',
\     'ERRNO_TIMEOUT': '',
\     'ERRNO_ERROR_IN_REPLY': '',
\     'ERRNO_OID_NOT_INCREASING': '',
\     'ERRNO_OID_PARSING_ERROR': '',
\     'ERRNO_MULTIPLE_SET_QUERIES': '',
\     'ERRNO_ANY': '',
\     'VERSION_1': '',
\     'VERSION_2C': '',
\     'VERSION_2c': '1',
\     'VERSION_3': '',
\   },
\   'properties': {
\     'max_oids': { 'initializer': '', 'type': 'int'},
\     'valueretrieval': { 'initializer': '', 'type': 'int'},
\     'quick_print': { 'initializer': '', 'type': 'bool'},
\     'enum_print': { 'initializer': '', 'type': 'bool'},
\     'oid_output_format': { 'initializer': '', 'type': 'int'},
\     'oid_increasing_check': { 'initializer': '', 'type': 'bool'},
\     'exceptions_enabled': { 'initializer': '', 'type': 'int'},
\     'info': { 'initializer': '', 'type': 'array'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'int $version, string $hostname, string $community [, int $timeout = 1000000 [, int $retries = 5]]', 'return_type': ''},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'mixed $object_id [, bool $preserve_keys = false] | mixed', 'return_type': 'mixed'},
\     'getErrno': { 'signature': 'void | int', 'return_type': 'int'},
\     'getError': { 'signature': 'void | string', 'return_type': 'string'},
\     'getnext': { 'signature': 'mixed $object_id | mixed', 'return_type': 'mixed'},
\     'set': { 'signature': 'mixed $object_id, mixed $type, mixed $value | bool', 'return_type': 'bool'},
\     'setSecurity': { 'signature': 'string $sec_level [, string $auth_protocol = ] | bool', 'return_type': 'bool'},
\     'walk': { 'signature': 'string $object_id [, bool $suffix_as_key = FALSE [, int $max_repetitions [, int $non_repeaters]]] | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SNMPException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'string'},
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
\'SQLite3': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'busyTimeout': { 'signature': 'int $msecs | bool', 'return_type': 'bool'},
\     'changes': { 'signature': 'void | int', 'return_type': 'int'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'string $filename [, int $flags [, string $encryption_key]]', 'return_type': ''},
\     'createAggregate': { 'signature': 'string $name, mixed $step_callback, mixed $final_callback [, int $argument_count = -1] | bool', 'return_type': 'bool'},
\     'createFunction': { 'signature': 'string $name, mixed $callback [, int $argument_count = -1] | bool', 'return_type': 'bool'},
\     'escapeString': { 'signature': 'string $value | string', 'return_type': 'string'},
\     'exec': { 'signature': 'string $query | bool', 'return_type': 'bool'},
\     'lastErrorCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'lastErrorMsg': { 'signature': 'void | string', 'return_type': 'string'},
\     'lastInsertRowID': { 'signature': 'void | int', 'return_type': 'int'},
\     'loadExtension': { 'signature': 'string $shared_library | bool', 'return_type': 'bool'},
\     'open': { 'signature': 'string $filename [, int $flags = SQLITE3_OPEN_READWRITE | SQLITE3_OPEN_CREATE [, string $encryption_key]] | void', 'return_type': 'void'},
\     'prepare': { 'signature': 'string $query | SQLite3Stmt', 'return_type': 'SQLite3Stmt'},
\     'query': { 'signature': 'string $query | SQLite3Result', 'return_type': 'SQLite3Result'},
\     'querySingle': { 'signature': 'string $query [, bool $entire_row = false] | mixed', 'return_type': 'mixed'},
\     'version': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SQLite3Result': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'columnName': { 'signature': 'int $column_number | string', 'return_type': 'string'},
\     'columnType': { 'signature': 'int $column_number | int', 'return_type': 'int'},
\     'fetchArray': { 'signature': '[ int $mode = SQLITE3_BOTH] | array', 'return_type': 'array'},
\     'finalize': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'numColumns': { 'signature': 'void | int', 'return_type': 'int'},
\     'reset': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SQLite3Stmt': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'bindParam': { 'signature': 'string $sql_param, mixed &$param [, int $type] | bool', 'return_type': 'bool'},
\     'bindValue': { 'signature': 'string $sql_param, mixed $value [, int $type] | bool', 'return_type': 'bool'},
\     'clear': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'execute': { 'signature': 'void | SQLite3Result', 'return_type': 'SQLite3Result'},
\     'paramCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'reset': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SVM': {
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
\'SVMModel': {
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
\'SWFAction': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $script', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'SWFBitmap': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'mixed $file [, mixed $alphafile]', 'return_type': ''},
\     'getHeight': { 'signature': 'void | float', 'return_type': 'float'},
\     'getWidth': { 'signature': 'void | float', 'return_type': 'float'},
\   },
\   'static_methods': {
\   },
\},
\'SWFButton': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addAction': { 'signature': 'SWFAction $action, int $flags | void', 'return_type': 'void'},
\     'addASound': { 'signature': 'SWFSound $sound, int $flags | SWFSoundInstance', 'return_type': 'SWFSoundInstance'},
\     'addShape': { 'signature': 'SWFShape $shape, int $flags | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'setAction': { 'signature': 'SWFAction $action | void', 'return_type': 'void'},
\     'setDown': { 'signature': 'SWFShape $shape | void', 'return_type': 'void'},
\     'setHit': { 'signature': 'SWFShape $shape | void', 'return_type': 'void'},
\     'setMenu': { 'signature': 'int $flag | void', 'return_type': 'void'},
\     'setOver': { 'signature': 'SWFShape $shape | void', 'return_type': 'void'},
\     'setUp': { 'signature': 'SWFShape $shape | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SWFDisplayItem': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addAction': { 'signature': 'SWFAction $action, int $flags | void', 'return_type': 'void'},
\     'addColor': { 'signature': 'int $red, int $green, int $blue [, int $a] | void', 'return_type': 'void'},
\     'endMask': { 'signature': 'void | void', 'return_type': 'void'},
\     'getRot': { 'signature': 'void | float', 'return_type': 'float'},
\     'getX': { 'signature': 'void | float', 'return_type': 'float'},
\     'getXScale': { 'signature': 'void | float', 'return_type': 'float'},
\     'getXSkew': { 'signature': 'void | float', 'return_type': 'float'},
\     'getY': { 'signature': 'void | float', 'return_type': 'float'},
\     'getYScale': { 'signature': 'void | float', 'return_type': 'float'},
\     'getYSkew': { 'signature': 'void | float', 'return_type': 'float'},
\     'move': { 'signature': 'float $dx, float $dy | void', 'return_type': 'void'},
\     'moveTo': { 'signature': 'float $x, float $y | void', 'return_type': 'void'},
\     'multColor': { 'signature': 'float $red, float $green, float $blue [, float $a] | void', 'return_type': 'void'},
\     'remove': { 'signature': 'void | void', 'return_type': 'void'},
\     'rotate': { 'signature': 'float $angle | void', 'return_type': 'void'},
\     'rotateTo': { 'signature': 'float $angle | void', 'return_type': 'void'},
\     'scale': { 'signature': 'float $dx, float $dy | void', 'return_type': 'void'},
\     'scaleTo': { 'signature': 'float $x [, float $y] | void', 'return_type': 'void'},
\     'setDepth': { 'signature': 'int $depth | void', 'return_type': 'void'},
\     'setMaskLevel': { 'signature': 'int $level | void', 'return_type': 'void'},
\     'setMatrix': { 'signature': 'float $a, float $b, float $c, float $d, float $x, float $y | void', 'return_type': 'void'},
\     'setName': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'setRatio': { 'signature': 'float $ratio | void', 'return_type': 'void'},
\     'skewX': { 'signature': 'float $ddegrees | void', 'return_type': 'void'},
\     'skewXTo': { 'signature': 'float $degrees | void', 'return_type': 'void'},
\     'skewY': { 'signature': 'float $ddegrees | void', 'return_type': 'void'},
\     'skewYTo': { 'signature': 'float $degrees | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SWFFill': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'moveTo': { 'signature': 'float $x, float $y | void', 'return_type': 'void'},
\     'rotateTo': { 'signature': 'float $angle | void', 'return_type': 'void'},
\     'scaleTo': { 'signature': 'float $x [, float $y] | void', 'return_type': 'void'},
\     'skewXTo': { 'signature': 'float $x | void', 'return_type': 'void'},
\     'skewYTo': { 'signature': 'float $y | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SWFFont': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $filename', 'return_type': ''},
\     'getAscent': { 'signature': 'void | float', 'return_type': 'float'},
\     'getDescent': { 'signature': 'void | float', 'return_type': 'float'},
\     'getLeading': { 'signature': 'void | float', 'return_type': 'float'},
\     'getShape': { 'signature': 'int $code | string', 'return_type': 'string'},
\     'getUTF8Width': { 'signature': 'string $string | float', 'return_type': 'float'},
\     'getWidth': { 'signature': 'string $string | float', 'return_type': 'float'},
\   },
\   'static_methods': {
\   },
\},
\'SWFFontChar': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addChars': { 'signature': 'string $char | void', 'return_type': 'void'},
\     'addUTF8Chars': { 'signature': 'string $char | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SWFGradient': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addEntry': { 'signature': 'float $ratio, int $red, int $green, int $blue [, int $alpha = 255] | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'SWFMorph': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getShape1': { 'signature': 'void | SWFShape', 'return_type': 'SWFShape'},
\     'getShape2': { 'signature': 'void | SWFShape', 'return_type': 'SWFShape'},
\   },
\   'static_methods': {
\   },
\},
\'SWFMovie': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'object $instance | mixed', 'return_type': 'mixed'},
\     'addExport': { 'signature': 'SWFCharacter $char, string $name | void', 'return_type': 'void'},
\     'addFont': { 'signature': 'SWFFont $font | mixed', 'return_type': 'mixed'},
\     '__construct': { 'signature': '[ int $version]', 'return_type': ''},
\     'importChar': { 'signature': 'string $libswf, string $name | SWFSprite', 'return_type': 'SWFSprite'},
\     'importFont': { 'signature': 'string $libswf, string $name | SWFFontChar', 'return_type': 'SWFFontChar'},
\     'labelFrame': { 'signature': 'string $label | void', 'return_type': 'void'},
\     'nextFrame': { 'signature': 'void | void', 'return_type': 'void'},
\     'output': { 'signature': '[ int $compression] | int', 'return_type': 'int'},
\     'remove': { 'signature': 'object $instance | void', 'return_type': 'void'},
\     'save': { 'signature': 'string $filename [, int $compression = -1] | int', 'return_type': 'int'},
\     'saveToFile': { 'signature': 'resource $x [, int $compression = -1] | int', 'return_type': 'int'},
\     'setbackground': { 'signature': 'int $red, int $green, int $blue | void', 'return_type': 'void'},
\     'setDimension': { 'signature': 'float $width, float $height | void', 'return_type': 'void'},
\     'setFrames': { 'signature': 'int $number | void', 'return_type': 'void'},
\     'setRate': { 'signature': 'float $rate | void', 'return_type': 'void'},
\     'startSound': { 'signature': 'SWFSound $sound | SWFSoundInstance', 'return_type': 'SWFSoundInstance'},
\     'stopSound': { 'signature': 'SWFSound $sound | void', 'return_type': 'void'},
\     'streamMP3': { 'signature': 'mixed $mp3file [, float $skip = 0] | int', 'return_type': 'int'},
\     'writeExports': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SWFPrebuiltClip': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'mixed $file', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'SWFShape': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addFill': { 'signature': 'int $red, int $green, int $blue [, int $alpha = 255] | SWFFill', 'return_type': 'SWFFill'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'drawArc': { 'signature': 'float $r, float $startAngle, float $endAngle | void', 'return_type': 'void'},
\     'drawCircle': { 'signature': 'float $r | void', 'return_type': 'void'},
\     'drawCubic': { 'signature': 'float $bx, float $by, float $cx, float $cy, float $dx, float $dy | int', 'return_type': 'int'},
\     'drawCubicTo': { 'signature': 'float $bx, float $by, float $cx, float $cy, float $dx, float $dy | int', 'return_type': 'int'},
\     'drawCurve': { 'signature': 'float $controldx, float $controldy, float $anchordx, float $anchordy [, float $targetdx [, float $targetdy]] | int', 'return_type': 'int'},
\     'drawCurveTo': { 'signature': 'float $controlx, float $controly, float $anchorx, float $anchory [, float $targetx [, float $targety]] | int', 'return_type': 'int'},
\     'drawGlyph': { 'signature': 'SWFFont $font, string $character [, int $size] | void', 'return_type': 'void'},
\     'drawLine': { 'signature': 'float $dx, float $dy | void', 'return_type': 'void'},
\     'drawLineTo': { 'signature': 'float $x, float $y | void', 'return_type': 'void'},
\     'movePen': { 'signature': 'float $dx, float $dy | void', 'return_type': 'void'},
\     'movePenTo': { 'signature': 'float $x, float $y | void', 'return_type': 'void'},
\     'setLeftFill': { 'signature': 'SWFGradient $fill | void', 'return_type': 'void'},
\     'setLine': { 'signature': 'SWFShape $shape | void', 'return_type': 'void'},
\     'setRightFill': { 'signature': 'SWFGradient $fill | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SWFSound': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $filename [, int $flags = 0]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'SWFSoundInstance': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'loopCount': { 'signature': 'int $point | void', 'return_type': 'void'},
\     'loopInPoint': { 'signature': 'int $point | void', 'return_type': 'void'},
\     'loopOutPoint': { 'signature': 'int $point | void', 'return_type': 'void'},
\     'noMultiple': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SWFSprite': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'object $object | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'labelFrame': { 'signature': 'string $label | void', 'return_type': 'void'},
\     'nextFrame': { 'signature': 'void | void', 'return_type': 'void'},
\     'remove': { 'signature': 'object $object | void', 'return_type': 'void'},
\     'setFrames': { 'signature': 'int $number | void', 'return_type': 'void'},
\     'startSound': { 'signature': 'SWFSound $sount | SWFSoundInstance', 'return_type': 'SWFSoundInstance'},
\     'stopSound': { 'signature': 'SWFSound $sount | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SWFText': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addString': { 'signature': 'string $string | void', 'return_type': 'void'},
\     'addUTF8String': { 'signature': 'string $text | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getAscent': { 'signature': 'void | float', 'return_type': 'float'},
\     'getDescent': { 'signature': 'void | float', 'return_type': 'float'},
\     'getLeading': { 'signature': 'void | float', 'return_type': 'float'},
\     'getUTF8Width': { 'signature': 'string $string | float', 'return_type': 'float'},
\     'getWidth': { 'signature': 'string $string | float', 'return_type': 'float'},
\     'moveTo': { 'signature': 'float $x, float $y | void', 'return_type': 'void'},
\     'setColor': { 'signature': 'int $red, int $green, int $blue [, int $a = 255] | void', 'return_type': 'void'},
\     'setFont': { 'signature': 'SWFFont $font | void', 'return_type': 'void'},
\     'setHeight': { 'signature': 'float $height | void', 'return_type': 'void'},
\     'setSpacing': { 'signature': 'float $spacing | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SWFTextField': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addChars': { 'signature': 'string $chars | void', 'return_type': 'void'},
\     'addString': { 'signature': 'string $string | void', 'return_type': 'void'},
\     'align': { 'signature': 'int $alignement | void', 'return_type': 'void'},
\     '__construct': { 'signature': '[ int $flags]', 'return_type': ''},
\     'setBounds': { 'signature': 'float $width, float $height | void', 'return_type': 'void'},
\     'setColor': { 'signature': 'int $red, int $green, int $blue [, int $a = 255] | void', 'return_type': 'void'},
\     'setFont': { 'signature': 'SWFFont $font | void', 'return_type': 'void'},
\     'setHeight': { 'signature': 'float $height | void', 'return_type': 'void'},
\     'setIndentation': { 'signature': 'float $width | void', 'return_type': 'void'},
\     'setLeftMargin': { 'signature': 'float $width | void', 'return_type': 'void'},
\     'setLineSpacing': { 'signature': 'float $height | void', 'return_type': 'void'},
\     'setMargins': { 'signature': 'float $left, float $right | void', 'return_type': 'void'},
\     'setName': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'setPadding': { 'signature': 'float $padding | void', 'return_type': 'void'},
\     'setRightMargin': { 'signature': 'float $width | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SWFVideoStream': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $file]', 'return_type': ''},
\     'getNumFrames': { 'signature': 'void | int', 'return_type': 'int'},
\     'setDimension': { 'signature': 'int $x, int $y | void', 'return_type': 'void'},
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
\'SessionHandler': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'destroy': { 'signature': 'string $session_id | bool', 'return_type': 'bool'},
\     'gc': { 'signature': 'int $maxlifetime | bool', 'return_type': 'bool'},
\     'open': { 'signature': 'string $save_path, string $session_id | bool', 'return_type': 'bool'},
\     'read': { 'signature': 'string $session_id | string', 'return_type': 'string'},
\     'write': { 'signature': 'string $session_id, string $session_data | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SessionHandlerInterface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'destroy': { 'signature': 'string $session_id | bool', 'return_type': 'bool'},
\     'gc': { 'signature': 'string $maxlifetime | bool', 'return_type': 'bool'},
\     'open': { 'signature': 'string $save_path, string $name | bool', 'return_type': 'bool'},
\     'read': { 'signature': 'string $session_id | string', 'return_type': 'string'},
\     'write': { 'signature': 'string $session_id, string $session_data | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SimpleXMLElement': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $data [, int $options = 0 [, bool $data_is_url = false [, string $ns = "" [, bool $is_prefix = false]]]]', 'return_type': ''},
\     'addAttribute': { 'signature': 'string $name [, string $value [, string $namespace]] | void', 'return_type': 'void'},
\     'addChild': { 'signature': 'string $name [, string $value [, string $namespace]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'asXML': { 'signature': '[ string $filename] | mixed', 'return_type': 'mixed'},
\     'attributes': { 'signature': '[ string $ns = NULL [, bool $is_prefix = false]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'children': { 'signature': '[ string $ns [, bool $is_prefix = false]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDocNamespaces': { 'signature': '[ bool $recursive = false] | array', 'return_type': 'array'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNamespaces': { 'signature': '[ bool $recursive = false] | array', 'return_type': 'array'},
\     'registerXPathNamespace': { 'signature': 'string $prefix, string $ns | bool', 'return_type': 'bool'},
\     'xpath': { 'signature': 'string $path | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SimpleXMLIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getChildren': { 'signature': 'void | SimpleXMLIterator', 'return_type': 'SimpleXMLIterator'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'string $data [, int $options = 0 [, bool $data_is_url = false [, string $ns = "" [, bool $is_prefix = false]]]]', 'return_type': ''},
\     'addAttribute': { 'signature': 'string $name [, string $value [, string $namespace]] | void', 'return_type': 'void'},
\     'addChild': { 'signature': 'string $name [, string $value [, string $namespace]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'asXML': { 'signature': '[ string $filename] | mixed', 'return_type': 'mixed'},
\     'attributes': { 'signature': '[ string $ns = NULL [, bool $is_prefix = false]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'children': { 'signature': '[ string $ns [, bool $is_prefix = false]] | SimpleXMLElement', 'return_type': 'SimpleXMLElement'},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDocNamespaces': { 'signature': '[ bool $recursive = false] | array', 'return_type': 'array'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getNamespaces': { 'signature': '[ bool $recursive = false] | array', 'return_type': 'array'},
\     'registerXPathNamespace': { 'signature': 'string $prefix, string $ns | bool', 'return_type': 'bool'},
\     'xpath': { 'signature': 'string $path | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SoapClient': {
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
\'SoapFault': {
\   'constants': {
\   },
\   'properties': {
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
\'SoapHeader': {
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
\'SoapParam': {
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
\'SoapServer': {
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
\'SoapVar': {
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
\'SolrClient': {
\   'constants': {
\     'SEARCH_SERVLET_TYPE': '1',
\     'UPDATE_SERVLET_TYPE': '2',
\     'THREADS_SERVLET_TYPE': '4',
\     'PING_SERVLET_TYPE': '8',
\     'TERMS_SERVLET_TYPE': '16',
\     'DEFAULT_SEARCH_SERVLET': 'select',
\     'DEFAULT_UPDATE_SERVLET': 'update',
\     'DEFAULT_THREADS_SERVLET': 'admin/threads',
\     'DEFAULT_PING_SERVLET': 'admin/ping',
\     'DEFAULT_TERMS_SERVLET': 'terms',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addDocument': { 'signature': 'SolrInputDocument $doc [, bool $allowDups = false [, int $commitWithin = 0]] | SolrUpdateResponse', 'return_type': 'SolrUpdateResponse'},
\     'addDocuments': { 'signature': 'array $docs [, bool $allowDups = false [, int $commitWithin = 0]] | void', 'return_type': 'void'},
\     'commit': { 'signature': '[ int $maxSegments = "1" [, bool $waitFlush = true [, bool $waitSearcher = true]]] | SolrUpdateResponse', 'return_type': 'SolrUpdateResponse'},
\     '__construct': { 'signature': 'array $clientOptions', 'return_type': ''},
\     'deleteById': { 'signature': 'string $id | SolrUpdateResponse', 'return_type': 'SolrUpdateResponse'},
\     'deleteByIds': { 'signature': 'array $ids | SolrUpdateResponse', 'return_type': 'SolrUpdateResponse'},
\     'deleteByQueries': { 'signature': 'array $queries | SolrUpdateResponse', 'return_type': 'SolrUpdateResponse'},
\     'deleteByQuery': { 'signature': 'string $query | SolrUpdateResponse', 'return_type': 'SolrUpdateResponse'},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'getDebug': { 'signature': 'void | string', 'return_type': 'string'},
\     'getOptions': { 'signature': 'void | array', 'return_type': 'array'},
\     'optimize': { 'signature': '[ int $maxSegments = "1" [, bool $waitFlush = true [, bool $waitSearcher = true]]] | SolrUpdateResponse', 'return_type': 'SolrUpdateResponse'},
\     'ping': { 'signature': 'void | SolrPingResponse', 'return_type': 'SolrPingResponse'},
\     'query': { 'signature': 'SolrParams $query | SolrQueryResponse', 'return_type': 'SolrQueryResponse'},
\     'request': { 'signature': 'string $raw_request | void', 'return_type': 'void'},
\     'rollback': { 'signature': 'void | SolrUpdateResponse', 'return_type': 'SolrUpdateResponse'},
\     'setResponseWriter': { 'signature': 'string $responseWriter | void', 'return_type': 'void'},
\     'setServlet': { 'signature': 'int $type, string $value | bool', 'return_type': 'bool'},
\     'threads': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SolrClientException': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getInternalInfo': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SolrDocument': {
\   'constants': {
\     'SORT_DEFAULT': '1',
\     'SORT_ASC': '1',
\     'SORT_DESC': '2',
\     'SORT_FIELD_NAME': '1',
\     'SORT_FIELD_VALUE_COUNT': '2',
\     'SORT_FIELD_BOOST_VALUE': '4',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addField': { 'signature': 'string $fieldName, string $fieldValue | bool', 'return_type': 'bool'},
\     'clear': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'current': { 'signature': 'void | SolrDocumentField', 'return_type': 'SolrDocumentField'},
\     'deleteField': { 'signature': 'string $fieldName | bool', 'return_type': 'bool'},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'fieldExists': { 'signature': 'string $fieldName | bool', 'return_type': 'bool'},
\     '__get': { 'signature': 'string $fieldName | SolrDocumentField', 'return_type': 'SolrDocumentField'},
\     'getField': { 'signature': 'string $fieldName | SolrDocumentField', 'return_type': 'SolrDocumentField'},
\     'getFieldCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFieldNames': { 'signature': 'void | array', 'return_type': 'array'},
\     'getInputDocument': { 'signature': 'void | SolrInputDocument', 'return_type': 'SolrInputDocument'},
\     '__isset': { 'signature': 'string $fieldName | bool', 'return_type': 'bool'},
\     'key': { 'signature': 'void | string', 'return_type': 'string'},
\     'merge': { 'signature': 'SolrDocument $sourceDoc [, bool $overwrite = true] | bool', 'return_type': 'bool'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $fieldName | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'string $fieldName | SolrDocumentField', 'return_type': 'SolrDocumentField'},
\     'offsetSet': { 'signature': 'string $fieldName, string $fieldValue | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $fieldName | void', 'return_type': 'void'},
\     'reset': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'serialize': { 'signature': 'void | string', 'return_type': 'string'},
\     '__set': { 'signature': 'string $fieldName, string $fieldValue | bool', 'return_type': 'bool'},
\     'sort': { 'signature': 'int $sortOrderBy [, int $sortDirection = SolrDocument::SORT_ASC] | bool', 'return_type': 'bool'},
\     'toArray': { 'signature': 'void | array', 'return_type': 'array'},
\     'unserialize': { 'signature': 'string $serialized | void', 'return_type': 'void'},
\     '__unset': { 'signature': 'string $fieldName | bool', 'return_type': 'bool'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SolrDocumentField': {
\   'constants': {
\   },
\   'properties': {
\     'name': { 'initializer': '', 'type': 'string'},
\     'boost': { 'initializer': '', 'type': 'float'},
\     'values': { 'initializer': '', 'type': 'array'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SolrException': {
\   'constants': {
\   },
\   'properties': {
\     'sourceline': { 'initializer': '', 'type': 'integer'},
\     'sourcefile': { 'initializer': '', 'type': 'string'},
\     'zif_name': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getInternalInfo': { 'signature': 'void | array', 'return_type': 'array'},
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
\'SolrGenericResponse': {
\   'constants': {
\     'PARSE_SOLR_OBJ': '0',
\     'PARSE_SOLR_DOC': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'getDigestedResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHttpStatus': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHttpStatusMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequest': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequestHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponseHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequestUrl': { 'signature': 'void | string', 'return_type': 'string'},
\     'getResponse': { 'signature': 'void | SolrObject', 'return_type': 'SolrObject'},
\     'setParseMode': { 'signature': '[ int $parser_mode = 0] | bool', 'return_type': 'bool'},
\     'success': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SolrIllegalArgumentException': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getInternalInfo': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SolrIllegalOperationException': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getInternalInfo': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SolrInputDocument': {
\   'constants': {
\     'SORT_DEFAULT': '1',
\     'SORT_ASC': '1',
\     'SORT_DESC': '2',
\     'SORT_FIELD_NAME': '1',
\     'SORT_FIELD_VALUE_COUNT': '2',
\     'SORT_FIELD_BOOST_VALUE': '4',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addField': { 'signature': 'string $fieldName, string $fieldValue [, float $fieldBoostValue = 0.0] | bool', 'return_type': 'bool'},
\     'clear': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'deleteField': { 'signature': 'string $fieldName | bool', 'return_type': 'bool'},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'fieldExists': { 'signature': 'string $fieldName | bool', 'return_type': 'bool'},
\     'getBoost': { 'signature': 'void | float', 'return_type': 'float'},
\     'getField': { 'signature': 'string $fieldName | SolrDocumentField', 'return_type': 'SolrDocumentField'},
\     'getFieldBoost': { 'signature': 'string $fieldName | float', 'return_type': 'float'},
\     'getFieldCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFieldNames': { 'signature': 'void | array', 'return_type': 'array'},
\     'merge': { 'signature': 'SolrInputDocument $sourceDoc [, bool $overwrite = true] | bool', 'return_type': 'bool'},
\     'reset': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setBoost': { 'signature': 'float $documentBoostValue | bool', 'return_type': 'bool'},
\     'setFieldBoost': { 'signature': 'string $fieldName, float $fieldBoostValue | bool', 'return_type': 'bool'},
\     'sort': { 'signature': 'int $sortOrderBy [, int $sortDirection = SolrInputDocument::SORT_ASC] | bool', 'return_type': 'bool'},
\     'toArray': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'SolrModifiableParams': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'add': { 'signature': 'string $name, string $value | SolrParams', 'return_type': 'SolrParams'},
\     'addParam': { 'signature': 'string $name, string $value | SolrParams', 'return_type': 'SolrParams'},
\     'get': { 'signature': 'string $param_name | mixed', 'return_type': 'mixed'},
\     'getParam': { 'signature': '[ string $param_name] | mixed', 'return_type': 'mixed'},
\     'getParams': { 'signature': 'void | array', 'return_type': 'array'},
\     'getPreparedParams': { 'signature': 'void | array', 'return_type': 'array'},
\     'serialize': { 'signature': 'void | string', 'return_type': 'string'},
\     'set': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     'setParam': { 'signature': 'string $name, string $value | SolrParams', 'return_type': 'SolrParams'},
\     'toString': { 'signature': '[ bool $url_encode = false] | string', 'return_type': 'string'},
\     'unserialize': { 'signature': 'string $serialized | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SolrObject': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'getPropertyNames': { 'signature': 'void | array', 'return_type': 'array'},
\     'offsetExists': { 'signature': 'string $property_name | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'string $property_name | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'string $property_name, string $property_value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $property_name | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SolrParams': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'string $name, string $value | SolrParams', 'return_type': 'SolrParams'},
\     'addParam': { 'signature': 'string $name, string $value | SolrParams', 'return_type': 'SolrParams'},
\     'get': { 'signature': 'string $param_name | mixed', 'return_type': 'mixed'},
\     'getParam': { 'signature': '[ string $param_name] | mixed', 'return_type': 'mixed'},
\     'getParams': { 'signature': 'void | array', 'return_type': 'array'},
\     'getPreparedParams': { 'signature': 'void | array', 'return_type': 'array'},
\     'serialize': { 'signature': 'void | string', 'return_type': 'string'},
\     'set': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     'setParam': { 'signature': 'string $name, string $value | SolrParams', 'return_type': 'SolrParams'},
\     'toString': { 'signature': '[ bool $url_encode = false] | string', 'return_type': 'string'},
\     'unserialize': { 'signature': 'string $serialized | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'SolrPingResponse': {
\   'constants': {
\     'PARSE_SOLR_OBJ': '0',
\     'PARSE_SOLR_DOC': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'getResponse': { 'signature': 'void | SolrObject', 'return_type': 'SolrObject'},
\     'getDigestedResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHttpStatus': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHttpStatusMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequest': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequestHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponseHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequestUrl': { 'signature': 'void | string', 'return_type': 'string'},
\     'setParseMode': { 'signature': '[ int $parser_mode = 0] | bool', 'return_type': 'bool'},
\     'success': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SolrQuery': {
\   'constants': {
\     'ORDER_ASC': '0',
\     'ORDER_DESC': '1',
\     'FACET_SORT_INDEX': '0',
\     'FACET_SORT_COUNT': '1',
\     'TERMS_SORT_INDEX': '0',
\     'TERMS_SORT_COUNT': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addFacetDateField': { 'signature': 'string $dateField | SolrQuery', 'return_type': 'SolrQuery'},
\     'addFacetDateOther': { 'signature': 'string $value [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'addFacetField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'addFacetQuery': { 'signature': 'string $facetQuery | SolrQuery', 'return_type': 'SolrQuery'},
\     'addField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'addFilterQuery': { 'signature': 'string $fq | SolrQuery', 'return_type': 'SolrQuery'},
\     'addHighlightField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'addMltField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'addMltQueryField': { 'signature': 'string $field, float $boost | SolrQuery', 'return_type': 'SolrQuery'},
\     'addSortField': { 'signature': 'string $field [, int $order = SolrQuery::ORDER_DESC] | SolrQuery', 'return_type': 'SolrQuery'},
\     'addStatsFacet': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'addStatsField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFacet': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getFacetDateEnd': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getFacetDateFields': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFacetDateGap': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getFacetDateHardEnd': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getFacetDateOther': { 'signature': '[ string $field_override] | array', 'return_type': 'array'},
\     'getFacetDateStart': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getFacetFields': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFacetLimit': { 'signature': '[ string $field_override] | int', 'return_type': 'int'},
\     'getFacetMethod': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getFacetMinCount': { 'signature': '[ string $field_override] | int', 'return_type': 'int'},
\     'getFacetMissing': { 'signature': '[ string $field_override] | bool', 'return_type': 'bool'},
\     'getFacetOffset': { 'signature': '[ string $field_override] | int', 'return_type': 'int'},
\     'getFacetPrefix': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getFacetQueries': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFacetSort': { 'signature': '[ string $field_override] | int', 'return_type': 'int'},
\     'getFields': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFilterQueries': { 'signature': 'void | array', 'return_type': 'array'},
\     'getHighlight': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getHighlightAlternateField': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getHighlightFields': { 'signature': 'void | array', 'return_type': 'array'},
\     'getHighlightFormatter': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getHighlightFragmenter': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getHighlightFragsize': { 'signature': '[ string $field_override] | int', 'return_type': 'int'},
\     'getHighlightHighlightMultiTerm': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getHighlightMaxAlternateFieldLength': { 'signature': '[ string $field_override] | int', 'return_type': 'int'},
\     'getHighlightMaxAnalyzedChars': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHighlightMergeContiguous': { 'signature': '[ string $field_override] | bool', 'return_type': 'bool'},
\     'getHighlightRegexMaxAnalyzedChars': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHighlightRegexPattern': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHighlightRegexSlop': { 'signature': 'void | float', 'return_type': 'float'},
\     'getHighlightRequireFieldMatch': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getHighlightSimplePost': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getHighlightSimplePre': { 'signature': '[ string $field_override] | string', 'return_type': 'string'},
\     'getHighlightSnippets': { 'signature': '[ string $field_override] | int', 'return_type': 'int'},
\     'getHighlightUsePhraseHighlighter': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getMlt': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getMltBoost': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getMltCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMltFields': { 'signature': 'void | array', 'return_type': 'array'},
\     'getMltMaxNumQueryTerms': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMltMaxNumTokens': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMltMaxWordLength': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMltMinDocFrequency': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMltMinTermFrequency': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMltMinWordLength': { 'signature': 'void | int', 'return_type': 'int'},
\     'getMltQueryFields': { 'signature': 'void | array', 'return_type': 'array'},
\     'getQuery': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRows': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSortFields': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStart': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStats': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getStatsFacets': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStatsFields': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTerms': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getTermsField': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTermsIncludeLowerBound': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getTermsIncludeUpperBound': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getTermsLimit': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTermsLowerBound': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTermsMaxCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTermsMinCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTermsPrefix': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTermsReturnRaw': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getTermsSort': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTermsUpperBound': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTimeAllowed': { 'signature': 'void | int', 'return_type': 'int'},
\     'removeFacetDateField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeFacetDateOther': { 'signature': 'string $value [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeFacetField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeFacetQuery': { 'signature': 'string $value | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeFilterQuery': { 'signature': 'string $fq | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeHighlightField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeMltField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeMltQueryField': { 'signature': 'string $queryField | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeSortField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeStatsFacet': { 'signature': 'string $value | SolrQuery', 'return_type': 'SolrQuery'},
\     'removeStatsField': { 'signature': 'string $field | SolrQuery', 'return_type': 'SolrQuery'},
\     'setEchoHandler': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setEchoParams': { 'signature': 'string $type | SolrQuery', 'return_type': 'SolrQuery'},
\     'setExplainOther': { 'signature': 'string $query | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacet': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetDateEnd': { 'signature': 'string $value [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetDateGap': { 'signature': 'string $value [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetDateHardEnd': { 'signature': 'bool $value [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetDateStart': { 'signature': 'string $value [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetEnumCacheMinDefaultFrequency': { 'signature': 'int $frequency [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetLimit': { 'signature': 'int $limit [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetMethod': { 'signature': 'string $method [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetMinCount': { 'signature': 'int $mincount [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetMissing': { 'signature': 'bool $flag [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetOffset': { 'signature': 'int $offset [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetPrefix': { 'signature': 'string $prefix [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setFacetSort': { 'signature': 'int $facetSort [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlight': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightAlternateField': { 'signature': 'string $field [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightFormatter': { 'signature': 'string $formatter [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightFragmenter': { 'signature': 'string $fragmenter [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightFragsize': { 'signature': 'int $size [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightHighlightMultiTerm': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightMaxAlternateFieldLength': { 'signature': 'int $fieldLength [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightMaxAnalyzedChars': { 'signature': 'int $value | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightMergeContiguous': { 'signature': 'bool $flag [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightRegexMaxAnalyzedChars': { 'signature': 'int $maxAnalyzedChars | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightRegexPattern': { 'signature': 'string $value | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightRegexSlop': { 'signature': 'float $factor | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightRequireFieldMatch': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightSimplePost': { 'signature': 'string $simplePost [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightSimplePre': { 'signature': 'string $simplePre [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightSnippets': { 'signature': 'int $value [, string $field_override] | SolrQuery', 'return_type': 'SolrQuery'},
\     'setHighlightUsePhraseHighlighter': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setMlt': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setMltBoost': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setMltCount': { 'signature': 'int $count | SolrQuery', 'return_type': 'SolrQuery'},
\     'setMltMaxNumQueryTerms': { 'signature': 'int $value | SolrQuery', 'return_type': 'SolrQuery'},
\     'setMltMaxNumTokens': { 'signature': 'int $value | SolrQuery', 'return_type': 'SolrQuery'},
\     'setMltMaxWordLength': { 'signature': 'int $maxWordLength | SolrQuery', 'return_type': 'SolrQuery'},
\     'setMltMinDocFrequency': { 'signature': 'int $minDocFrequency | SolrQuery', 'return_type': 'SolrQuery'},
\     'setMltMinTermFrequency': { 'signature': 'int $minTermFrequency | SolrQuery', 'return_type': 'SolrQuery'},
\     'setMltMinWordLength': { 'signature': 'int $minWordLength | SolrQuery', 'return_type': 'SolrQuery'},
\     'setOmitHeader': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setQuery': { 'signature': 'string $query | SolrQuery', 'return_type': 'SolrQuery'},
\     'setRows': { 'signature': 'int $rows | SolrQuery', 'return_type': 'SolrQuery'},
\     'setShowDebugInfo': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setStart': { 'signature': 'int $start | SolrQuery', 'return_type': 'SolrQuery'},
\     'setStats': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTerms': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsField': { 'signature': 'string $fieldname | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsIncludeLowerBound': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsIncludeUpperBound': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsLimit': { 'signature': 'int $limit | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsLowerBound': { 'signature': 'string $lowerBound | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsMaxCount': { 'signature': 'int $frequency | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsMinCount': { 'signature': 'int $frequency | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsPrefix': { 'signature': 'string $prefix | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsReturnRaw': { 'signature': 'bool $flag | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsSort': { 'signature': 'int $sortType | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTermsUpperBound': { 'signature': 'string $upperBound | SolrQuery', 'return_type': 'SolrQuery'},
\     'setTimeAllowed': { 'signature': 'int $timeAllowed | SolrQuery', 'return_type': 'SolrQuery'},
\   },
\   'static_methods': {
\   },
\},
\'SolrQueryResponse': {
\   'constants': {
\     'PARSE_SOLR_OBJ': '0',
\     'PARSE_SOLR_DOC': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'getDigestedResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHttpStatus': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHttpStatusMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequest': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequestHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponseHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequestUrl': { 'signature': 'void | string', 'return_type': 'string'},
\     'getResponse': { 'signature': 'void | SolrObject', 'return_type': 'SolrObject'},
\     'setParseMode': { 'signature': '[ int $parser_mode = 0] | bool', 'return_type': 'bool'},
\     'success': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SolrResponse': {
\   'constants': {
\     'PARSE_SOLR_OBJ': '0',
\     'PARSE_SOLR_DOC': '1',
\   },
\   'properties': {
\     'http_status': { 'initializer': '', 'type': 'integer'},
\     'parser_mode': { 'initializer': '', 'type': 'integer'},
\     'success': { 'initializer': '', 'type': 'bool'},
\     'http_status_message': { 'initializer': '', 'type': 'string'},
\     'http_request_url': { 'initializer': '', 'type': 'string'},
\     'http_raw_request_headers': { 'initializer': '', 'type': 'string'},
\     'http_raw_request': { 'initializer': '', 'type': 'string'},
\     'http_raw_response_headers': { 'initializer': '', 'type': 'string'},
\     'http_raw_response': { 'initializer': '', 'type': 'string'},
\     'http_digested_response': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getDigestedResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHttpStatus': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHttpStatusMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequest': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequestHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponseHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequestUrl': { 'signature': 'void | string', 'return_type': 'string'},
\     'getResponse': { 'signature': 'void | SolrObject', 'return_type': 'SolrObject'},
\     'setParseMode': { 'signature': '[ int $parser_mode = 0] | bool', 'return_type': 'bool'},
\     'success': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SolrUpdateResponse': {
\   'constants': {
\     'PARSE_SOLR_OBJ': '0',
\     'PARSE_SOLR_DOC': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'getDigestedResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHttpStatus': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHttpStatusMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequest': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawRequestHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRawResponseHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequestUrl': { 'signature': 'void | string', 'return_type': 'string'},
\     'getResponse': { 'signature': 'void | SolrObject', 'return_type': 'SolrObject'},
\     'setParseMode': { 'signature': '[ int $parser_mode = 0] | bool', 'return_type': 'bool'},
\     'success': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'SolrUtils': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'digestXmlResponse': { 'signature': 'string $xmlresponse [, int $parse_mode = 0] | SolrObject', 'return_type': 'SolrObject'},
\     'escapeQueryChars': { 'signature': 'string $str | string', 'return_type': 'string'},
\     'getSolrVersion': { 'signature': 'void | string', 'return_type': 'string'},
\     'queryPhrase': { 'signature': 'string $str | string', 'return_type': 'string'},
\   },
\},
\'SphinxClient': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addQuery': { 'signature': 'string $query [, string $index = "*" [, string $comment = ""]] | int', 'return_type': 'int'},
\     'buildExcerpts': { 'signature': 'array $docs, string $index, string $words [, array $opts] | array', 'return_type': 'array'},
\     'buildKeywords': { 'signature': 'string $query, string $index, bool $hits | array', 'return_type': 'array'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'escapeString': { 'signature': 'string $string | string', 'return_type': 'string'},
\     'getLastError': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLastWarning': { 'signature': 'void | string', 'return_type': 'string'},
\     'open': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'query': { 'signature': 'string $query [, string $index = "*" [, string $comment = ""]] | array', 'return_type': 'array'},
\     'resetFilters': { 'signature': 'void | void', 'return_type': 'void'},
\     'resetGroupBy': { 'signature': 'void | void', 'return_type': 'void'},
\     'runQueries': { 'signature': 'void | array', 'return_type': 'array'},
\     'setArrayResult': { 'signature': '[ bool $array_result = false] | bool', 'return_type': 'bool'},
\     'setConnectTimeout': { 'signature': 'float $timeout | bool', 'return_type': 'bool'},
\     'setFieldWeights': { 'signature': 'array $weights | bool', 'return_type': 'bool'},
\     'setFilter': { 'signature': 'string $attribute, array $values [, bool $exclude = false] | bool', 'return_type': 'bool'},
\     'setFilterFloatRange': { 'signature': 'string $attribute, float $min, float $max [, bool $exclude = false] | bool', 'return_type': 'bool'},
\     'setFilterRange': { 'signature': 'string $attribute, int $min, int $max [, bool $exclude = false] | bool', 'return_type': 'bool'},
\     'setGeoAnchor': { 'signature': 'string $attrlat, string $attrlong, float $latitude, float $longitude | bool', 'return_type': 'bool'},
\     'setGroupBy': { 'signature': 'string $attribute, int $func [, string $groupsort = "@group desc"] | bool', 'return_type': 'bool'},
\     'setGroupDistinct': { 'signature': 'string $attribute | bool', 'return_type': 'bool'},
\     'setIDRange': { 'signature': 'int $min, int $max | bool', 'return_type': 'bool'},
\     'setIndexWeights': { 'signature': 'array $weights | bool', 'return_type': 'bool'},
\     'setLimits': { 'signature': 'int $offset, int $limit [, int $max_matches = 0 [, int $cutoff = 0]] | bool', 'return_type': 'bool'},
\     'setMatchMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\     'setMaxQueryTime': { 'signature': 'int $qtime | bool', 'return_type': 'bool'},
\     'setOverride': { 'signature': 'string $attribute, int $type, array $values | bool', 'return_type': 'bool'},
\     'setRankingMode': { 'signature': 'int $ranker | bool', 'return_type': 'bool'},
\     'setRetries': { 'signature': 'int $count [, int $delay = 0] | bool', 'return_type': 'bool'},
\     'setSelect': { 'signature': 'string $clause | bool', 'return_type': 'bool'},
\     'setServer': { 'signature': 'string $server, int $port | bool', 'return_type': 'bool'},
\     'setSortMode': { 'signature': 'int $mode [, string $sortby] | bool', 'return_type': 'bool'},
\     'status': { 'signature': 'void | array', 'return_type': 'array'},
\     'updateAttributes': { 'signature': 'string $index, array $attributes, array $values [, bool $mva = false] | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'SplBool': {
\   'constants': {
\     '__default': 'false',
\     'false': 'false',
\     'true': 'true',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getConstList': { 'signature': '[ bool $include_default = false] | array', 'return_type': 'array'},
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
\'SplEnum': {
\   'constants': {
\     '__default': 'null',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getConstList': { 'signature': '[ bool $include_default = false] | array', 'return_type': 'array'},
\     '__construct': { 'signature': '[ mixed $initial_value [, bool $strict]]', 'return_type': ''},
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
\'SplFloat': {
\   'constants': {
\     '__default': '0',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ mixed $initial_value [, bool $strict]]', 'return_type': ''},
\   },
\   'static_methods': {
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
\'SplInt': {
\   'constants': {
\     '__default': '0',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ mixed $initial_value [, bool $strict]]', 'return_type': ''},
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
\'SplString': {
\   'constants': {
\     '__default': '0',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ mixed $initial_value [, bool $strict]]', 'return_type': ''},
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
\'SplType': {
\   'constants': {
\     '__default': 'null',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ mixed $initial_value [, bool $strict]]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'Spoofchecker': {
\   'constants': {
\     'SINGLE_SCRIPT_CONFUSABLE': '1',
\     'MIXED_SCRIPT_CONFUSABLE': '2',
\     'WHOLE_SCRIPT_CONFUSABLE': '4',
\     'ANY_CASE': '8',
\     'SINGLE_SCRIPT': '16',
\     'INVISIBLE': '32',
\     'CHAR_LIMIT': '64',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'areConfusable': { 'signature': 'string $s1, string $s2 [, string &$error] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'isSuspicious': { 'signature': 'string $text [, string &$error] | bool', 'return_type': 'bool'},
\     'setAllowedLocales': { 'signature': 'string $locale_list | void', 'return_type': 'void'},
\     'setChecks': { 'signature': 'string $checks | void', 'return_type': 'void'},
\   },
\   'static_methods': {
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
\     'isRunning': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isTerminated': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isWaiting': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'lock': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'notify': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'run': { 'signature': 'void | void', 'return_type': 'void'},
\     'synchronized': { 'signature': 'Closure $block [, mixed $...] | mixed', 'return_type': 'mixed'},
\     'unlock': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'wait': { 'signature': '[ string $timeout] | boolean', 'return_type': 'boolean'},
\   },
\   'static_methods': {
\   },
\},
\'Stomp': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'abort': { 'signature': 'string $transaction_id [, array $headers] | bool', 'return_type': 'bool'},
\     'ack': { 'signature': 'mixed $msg [, array $headers] | bool', 'return_type': 'bool'},
\     'begin': { 'signature': 'string $transaction_id [, array $headers] | bool', 'return_type': 'bool'},
\     'commit': { 'signature': 'string $transaction_id [, array $headers] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': '[ string $broker = ini_get("stomp.default_broker_uri") [, string $username [, string $password [, array $headers]]]]', 'return_type': ''},
\     '__destruct': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'error': { 'signature': 'void | string', 'return_type': 'string'},
\     'getReadTimeout': { 'signature': 'void | array', 'return_type': 'array'},
\     'getSessionId': { 'signature': 'void | string', 'return_type': 'string'},
\     'hasFrame': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'readFrame': { 'signature': '[ string $class_name = "stompFrame"] | stompframe', 'return_type': 'stompframe'},
\     'send': { 'signature': 'string $destination, mixed $msg [, array $headers] | bool', 'return_type': 'bool'},
\     'setReadTimeout': { 'signature': 'int $seconds [, int $microseconds] | void', 'return_type': 'void'},
\     'subscribe': { 'signature': 'string $destination [, array $headers] | bool', 'return_type': 'bool'},
\     'unsubscribe': { 'signature': 'string $destination [, array $headers] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'StompException': {
\   'constants': {
\   },
\   'properties': {
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
\     'getDetails': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\   },
\},
\'StompFrame': {
\   'constants': {
\   },
\   'properties': {
\     'command': { 'initializer': '', 'type': ''},
\     'headers': { 'initializer': '', 'type': ''},
\     'body': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $command [, array $headers [, string $body]]]', 'return_type': ''},
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
\     'getCreatorId': { 'signature': 'void | long', 'return_type': 'long'},
\     'getThreadId': { 'signature': 'void | long', 'return_type': 'long'},
\     'isJoined': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isRunning': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isStarted': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isTerminated': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isWaiting': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'join': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'lock': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'notify': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'run': { 'signature': 'void | void', 'return_type': 'void'},
\     'start': { 'signature': '[ long $options] | boolean', 'return_type': 'boolean'},
\     'synchronized': { 'signature': 'Closure $block [, mixed $...] | mixed', 'return_type': 'mixed'},
\     'unlock': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'wait': { 'signature': '[ long $timeout] | boolean', 'return_type': 'boolean'},
\   },
\   'static_methods': {
\   },
\},
\'TokyoTyrant': {
\   'constants': {
\     'RDBDEF_PORT': '1978',
\     'RDBQC_STREQ': '0',
\     'RDBQC_STRINC': '1',
\     'RDBQC_STRBW': '2',
\     'RDBQC_STREW': '3',
\     'RDBQC_STRAND': '4',
\     'RDBQC_STROR': '5',
\     'RDBQC_STROREQ': '6',
\     'RDBQC_STRRX': '7',
\     'RDBQC_NUMEQ': '8',
\     'RDBQC_NUMGT': '9',
\     'RDBQC_NUMGE': '10',
\     'RDBQC_NUMLT': '11',
\     'RDBQC_NUMLE': '12',
\     'RDBQC_NUMBT': '13',
\     'RDBQC_NUMOREQ': '14',
\     'RDBQC_NEGATE': '16777216',
\     'RDBQC_NOIDX': '33554432',
\     'RDBQO_STRASC': '0',
\     'RDBQO_STRDESC': '1',
\     'RDBQO_NUMASC': '2',
\     'RDBQO_NUMDESC': '3',
\     'RDBIT_LEXICAL': '0',
\     'RDBIT_DECIMAL': '1',
\     'RDBIT_TOKEN': '2',
\     'RDBIT_QGRAM': '3',
\     'RDBIT_OPT': '9998',
\     'RDBIT_VOID': '9999',
\     'RDBIT_KEEP': '16777216',
\     'RDBQCFTS_PH': '15',
\     'RDBQCFTS_AND': '16',
\     'RDBQCFTS_OR': '17',
\     'RDBQCFTS_EX': '18',
\     'RDBXO_LCKREC': '1',
\     'RDBXOLCK_GLB': '2',
\     'RDBREC_INT': '1',
\     'RDBREC_DBL': '2',
\     'RDBMS_UNION': '0',
\     'RDBMS_ISECT': '1',
\     'RDBMS_DIFF': '2',
\     'RDBT_RECON': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'string $key, number $increment [, int $type = 0] | number', 'return_type': 'number'},
\     'connect': { 'signature': 'string $host [, int $port = TokyoTyrant::RDBDEF_PORT [, array $options]] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'connectUri': { 'signature': 'string $uri | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     '__construct': { 'signature': '[ string $host [, int $port = TokyoTyrant::RDBDEF_PORT [, array $options]]]', 'return_type': ''},
\     'copy': { 'signature': 'string $path | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'ext': { 'signature': 'string $name, int $options, string $key, string $value | string', 'return_type': 'string'},
\     'fwmKeys': { 'signature': 'string $prefix, int $max_recs | array', 'return_type': 'array'},
\     'get': { 'signature': 'mixed $keys | mixed', 'return_type': 'mixed'},
\     'getIterator': { 'signature': 'void | TokyoTyrantIterator', 'return_type': 'TokyoTyrantIterator'},
\     'num': { 'signature': 'void | int', 'return_type': 'int'},
\     'out': { 'signature': 'mixed $keys | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'put': { 'signature': 'mixed $keys [, string $value = NULL] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putCat': { 'signature': 'mixed $keys [, string $value] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putKeep': { 'signature': 'mixed $keys [, string $value] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putNr': { 'signature': 'mixed $keys [, string $value = NULL] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putShl': { 'signature': 'string $key, string $value, int $width | mixed', 'return_type': 'mixed'},
\     'restore': { 'signature': 'string $log_dir, int $timestamp [, bool $check_consistency = true] | mixed', 'return_type': 'mixed'},
\     'setMaster': { 'signature': 'string $host, int $port, int $timestamp [, bool $check_consistency = true] | mixed', 'return_type': 'mixed'},
\     'size': { 'signature': 'string $key | int', 'return_type': 'int'},
\     'stat': { 'signature': 'void | array', 'return_type': 'array'},
\     'sync': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'tune': { 'signature': 'float $timeout [, int $options = TokyoTyrant::RDBT_RECON] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'vanish': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\   },
\   'static_methods': {
\   },
\},
\'TokyoTyrantIterator': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $host [, int $port = TokyoTyrant::RDBDEF_PORT [, array $options]]]', 'return_type': ''},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'key': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'next': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'add': { 'signature': 'string $key, number $increment [, int $type = 0] | number', 'return_type': 'number'},
\     'connect': { 'signature': 'string $host [, int $port = TokyoTyrant::RDBDEF_PORT [, array $options]] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'connectUri': { 'signature': 'string $uri | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'copy': { 'signature': 'string $path | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'ext': { 'signature': 'string $name, int $options, string $key, string $value | string', 'return_type': 'string'},
\     'fwmKeys': { 'signature': 'string $prefix, int $max_recs | array', 'return_type': 'array'},
\     'get': { 'signature': 'mixed $keys | mixed', 'return_type': 'mixed'},
\     'getIterator': { 'signature': 'void | TokyoTyrantIterator', 'return_type': 'TokyoTyrantIterator'},
\     'num': { 'signature': 'void | int', 'return_type': 'int'},
\     'out': { 'signature': 'mixed $keys | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'put': { 'signature': 'mixed $keys [, string $value = NULL] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putCat': { 'signature': 'mixed $keys [, string $value] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putKeep': { 'signature': 'mixed $keys [, string $value] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putNr': { 'signature': 'mixed $keys [, string $value = NULL] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putShl': { 'signature': 'string $key, string $value, int $width | mixed', 'return_type': 'mixed'},
\     'restore': { 'signature': 'string $log_dir, int $timestamp [, bool $check_consistency = true] | mixed', 'return_type': 'mixed'},
\     'setMaster': { 'signature': 'string $host, int $port, int $timestamp [, bool $check_consistency = true] | mixed', 'return_type': 'mixed'},
\     'size': { 'signature': 'string $key | int', 'return_type': 'int'},
\     'stat': { 'signature': 'void | array', 'return_type': 'array'},
\     'sync': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'tune': { 'signature': 'float $timeout [, int $options = TokyoTyrant::RDBT_RECON] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'vanish': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\   },
\   'static_methods': {
\   },
\},
\'TokyoTyrantQuery': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addCond': { 'signature': 'string $name, int $op, string $expr | mixed', 'return_type': 'mixed'},
\     '__construct': { 'signature': 'TokyoTyrantTable $table', 'return_type': ''},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | array', 'return_type': 'array'},
\     'hint': { 'signature': 'void | string', 'return_type': 'string'},
\     'key': { 'signature': 'void | string', 'return_type': 'string'},
\     'metaSearch': { 'signature': 'array $queries, int $type | array', 'return_type': 'array'},
\     'next': { 'signature': 'void | array', 'return_type': 'array'},
\     'out': { 'signature': 'void | TokyoTyrantQuery', 'return_type': 'TokyoTyrantQuery'},
\     'rewind': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'search': { 'signature': 'void | array', 'return_type': 'array'},
\     'setLimit': { 'signature': '[ int $max [, int $skip]] | mixed', 'return_type': 'mixed'},
\     'setOrder': { 'signature': 'string $name, int $type | mixed', 'return_type': 'mixed'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'TokyoTyrantTable': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'string $key, number $increment [, int $type = 0] | number', 'return_type': 'number'},
\     'genUid': { 'signature': 'void | int', 'return_type': 'int'},
\     'get': { 'signature': 'mixed $keys | mixed', 'return_type': 'mixed'},
\     'getIterator': { 'signature': 'void | TokyoTyrantIterator', 'return_type': 'TokyoTyrantIterator'},
\     'getQuery': { 'signature': 'void | TokyoTyrantQuery', 'return_type': 'TokyoTyrantQuery'},
\     'out': { 'signature': 'mixed $keys | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'put': { 'signature': 'mixed $keys [, string $value = NULL] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putCat': { 'signature': 'mixed $keys [, string $value] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putKeep': { 'signature': 'mixed $keys [, string $value] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putNr': { 'signature': 'mixed $keys [, string $value = NULL] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'putShl': { 'signature': 'string $key, string $value, int $width | mixed', 'return_type': 'mixed'},
\     'setIndex': { 'signature': 'string $column, int $type | mixed', 'return_type': 'mixed'},
\     'connect': { 'signature': 'string $host [, int $port = TokyoTyrant::RDBDEF_PORT [, array $options]] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'connectUri': { 'signature': 'string $uri | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     '__construct': { 'signature': '[ string $host [, int $port = TokyoTyrant::RDBDEF_PORT [, array $options]]]', 'return_type': ''},
\     'copy': { 'signature': 'string $path | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'ext': { 'signature': 'string $name, int $options, string $key, string $value | string', 'return_type': 'string'},
\     'fwmKeys': { 'signature': 'string $prefix, int $max_recs | array', 'return_type': 'array'},
\     'num': { 'signature': 'void | int', 'return_type': 'int'},
\     'restore': { 'signature': 'string $log_dir, int $timestamp [, bool $check_consistency = true] | mixed', 'return_type': 'mixed'},
\     'setMaster': { 'signature': 'string $host, int $port, int $timestamp [, bool $check_consistency = true] | mixed', 'return_type': 'mixed'},
\     'size': { 'signature': 'string $key | int', 'return_type': 'int'},
\     'stat': { 'signature': 'void | array', 'return_type': 'array'},
\     'sync': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'tune': { 'signature': 'float $timeout [, int $options = TokyoTyrant::RDBT_RECON] | TokyoTyrant', 'return_type': 'TokyoTyrant'},
\     'vanish': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\   },
\   'static_methods': {
\   },
\},
\'Transliterator': {
\   'constants': {
\     'FORWARD': '0',
\     'REVERSE': '1',
\   },
\   'properties': {
\     'id': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'createInverse': { 'signature': 'void | Transliterator', 'return_type': 'Transliterator'},
\     'getErrorCode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getErrorMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'transliterate': { 'signature': 'string $subject [, int $start [, int $end]] | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'create': { 'signature': 'string $id [, int $direction] | Transliterator', 'return_type': 'Transliterator'},
\     'createFromRules': { 'signature': 'string $rules [, string $direction] | Transliterator', 'return_type': 'Transliterator'},
\     'listIDs': { 'signature': 'void | array', 'return_type': 'array'},
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
\'UnderflowException': {
\   'constants': {
\   },
\   'properties': {
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
\'V8Js': {
\   'constants': {
\     'V8_VERSION': '',
\     'FLAG_NONE': '1',
\     'FLAG_FORCE_ARRAY': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $object_name = "PHP" [, array $variables = array() [, array $extensions = array() [, bool $report_uncaught_exceptions = TRUE]]]]', 'return_type': ''},
\     'executeString': { 'signature': 'string $script [, string $identifier = "V8Js::executeString()" [, int $flags = V8Js::FLAG_NONE]] | mixed', 'return_type': 'mixed'},
\     'getPendingException': { 'signature': 'void | V8JsException', 'return_type': 'V8JsException'},
\   },
\   'static_methods': {
\     'getExtensions': { 'signature': 'void | array', 'return_type': 'array'},
\     'registerExtension': { 'signature': 'string $extension_name, string $script [, array $dependencies = array() [, bool $auto_enable = FALSE]] | bool', 'return_type': 'bool'},
\   },
\},
\'V8JsException': {
\   'constants': {
\   },
\   'properties': {
\     'JsFileName': { 'initializer': '', 'type': ''},
\     'JsLineNumber': { 'initializer': '', 'type': ''},
\     'JsSourceLine': { 'initializer': '', 'type': ''},
\     'JsTrace': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getJsFileName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getJsLineNumber': { 'signature': 'void | int', 'return_type': 'int'},
\     'getJsSourceLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getJsTrace': { 'signature': 'void | string', 'return_type': 'string'},
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
\'VarnishAdmin': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'auth': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'ban': { 'signature': 'string $vcl_regex | int', 'return_type': 'int'},
\     'banUrl': { 'signature': 'string $vcl_regex | int', 'return_type': 'int'},
\     'clearPanic': { 'signature': 'void | int', 'return_type': 'int'},
\     'connect': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': '[ array $args]', 'return_type': ''},
\     'disconnect': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getPanic': { 'signature': 'void | string', 'return_type': 'string'},
\     'getParams': { 'signature': 'void | array', 'return_type': 'array'},
\     'isRunning': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setCompat': { 'signature': 'int $compat | void', 'return_type': 'void'},
\     'setHost': { 'signature': 'string $host | void', 'return_type': 'void'},
\     'setIdent': { 'signature': 'string $ident | void', 'return_type': 'void'},
\     'setParam': { 'signature': 'string $name, string|integer $value | int', 'return_type': 'int'},
\     'setPort': { 'signature': 'int $port | void', 'return_type': 'void'},
\     'setSecret': { 'signature': 'string $secret | void', 'return_type': 'void'},
\     'setTimeout': { 'signature': 'int $timeout | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | int', 'return_type': 'int'},
\     'stop': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'VarnishLog': {
\   'constants': {
\     'TAG_Debug': '0',
\     'TAG_Error': '1',
\     'TAG_CLI': '2',
\     'TAG_StatSess': '3',
\     'TAG_ReqEnd': '4',
\     'TAG_SessionOpen': '5',
\     'TAG_SessionClose': '6',
\     'TAG_BackendOpen': '7',
\     'TAG_BackendXID': '8',
\     'TAG_BackendReuse': '9',
\     'TAG_BackendClose': '10',
\     'TAG_HttpGarbage': '11',
\     'TAG_Backend': '12',
\     'TAG_Length': '13',
\     'TAG_FetchError': '14',
\     'TAG_RxRequest': '15',
\     'TAG_RxResponse': '16',
\     'TAG_RxStatus': '17',
\     'TAG_RxURL': '18',
\     'TAG_RxProtocol': '19',
\     'TAG_RxHeader': '20',
\     'TAG_TxRequest': '21',
\     'TAG_TxResponse': '22',
\     'TAG_TxStatus': '23',
\     'TAG_TxURL': '24',
\     'TAG_TxProtocol': '25',
\     'TAG_TxHeader': '26',
\     'TAG_ObjRequest': '27',
\     'TAG_ObjResponse': '28',
\     'TAG_ObjStatus': '29',
\     'TAG_ObjURL': '30',
\     'TAG_ObjProtocol': '31',
\     'TAG_ObjHeader': '32',
\     'TAG_LostHeader': '33',
\     'TAG_TTL': '34',
\     'TAG_Fetch_Body': '35',
\     'TAG_VCL_acl': '36',
\     'TAG_VCL_call': '37',
\     'TAG_VCL_trace': '38',
\     'TAG_VCL_return': '39',
\     'TAG_VCL_error': '40',
\     'TAG_ReqStart': '41',
\     'TAG_Hit': '42',
\     'TAG_HitPass': '43',
\     'TAG_ExpBan': '44',
\     'TAG_ExpKill': '45',
\     'TAG_WorkThread': '46',
\     'TAG_ESI_xmlerror': '47',
\     'TAG_Hash': '48',
\     'TAG_Backend_health': '49',
\     'TAG_VCL_Log': '50',
\     'TAG_Gzip': '51',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ array $args]', 'return_type': ''},
\     'getLine': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\     'getTagName': { 'signature': 'int $index | string', 'return_type': 'string'},
\   },
\},
\'VarnishStat': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ array $args]', 'return_type': ''},
\     'getSnapshot': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'WeakMap': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'count': { 'signature': 'void | int', 'return_type': 'int'},
\     'current': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'key': { 'signature': 'void | object', 'return_type': 'object'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'object $object | bool', 'return_type': 'bool'},
\     'offsetGet': { 'signature': 'object $object | mixed', 'return_type': 'mixed'},
\     'offsetSet': { 'signature': 'object $object, mixed $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'object $object | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'WeakRef': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ object $object]', 'return_type': ''},
\     'acquire': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get': { 'signature': 'void | object', 'return_type': 'object'},
\     'release': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'valid': { 'signature': 'void | bool', 'return_type': 'bool'},
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
\     'getCreatorId': { 'signature': 'void | long', 'return_type': 'long'},
\     'getStacked': { 'signature': 'void | int', 'return_type': 'int'},
\     'getThreadId': { 'signature': 'void | long', 'return_type': 'long'},
\     'isShutdown': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'isWorking': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'run': { 'signature': 'void | void', 'return_type': 'void'},
\     'shutdown': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'stack': { 'signature': 'Stackable $work | int', 'return_type': 'int'},
\     'start': { 'signature': '[ long $options] | boolean', 'return_type': 'boolean'},
\     'unstack': { 'signature': '[ Stackable $work] | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'XMLReader': {
\   'constants': {
\     'NONE': '0',
\     'ELEMENT': '1',
\     'ATTRIBUTE': '2',
\     'TEXT': '3',
\     'CDATA': '4',
\     'ENTITY_REF': '5',
\     'ENTITY': '6',
\     'PI': '7',
\     'COMMENT': '8',
\     'DOC': '9',
\     'DOC_TYPE': '10',
\     'DOC_FRAGMENT': '11',
\     'NOTATION': '12',
\     'WHITESPACE': '13',
\     'SIGNIFICANT_WHITESPACE': '14',
\     'END_ELEMENT': '15',
\     'END_ENTITY': '16',
\     'XML_DECLARATION': '17',
\     'LOADDTD': '1',
\     'DEFAULTATTRS': '2',
\     'VALIDATE': '3',
\     'SUBST_ENTITIES': '4',
\   },
\   'properties': {
\     'attributeCount': { 'initializer': '', 'type': 'int'},
\     'baseURI': { 'initializer': '', 'type': 'string'},
\     'depth': { 'initializer': '', 'type': 'int'},
\     'hasAttributes': { 'initializer': '', 'type': 'bool'},
\     'hasValue': { 'initializer': '', 'type': 'bool'},
\     'isDefault': { 'initializer': '', 'type': 'bool'},
\     'isEmptyElement': { 'initializer': '', 'type': 'bool'},
\     'localName': { 'initializer': '', 'type': 'string'},
\     'name': { 'initializer': '', 'type': 'string'},
\     'namespaceURI': { 'initializer': '', 'type': 'string'},
\     'nodeType': { 'initializer': '', 'type': 'int'},
\     'prefix': { 'initializer': '', 'type': 'string'},
\     'value': { 'initializer': '', 'type': 'string'},
\     'xmlLang': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'expand': { 'signature': '[ DOMNode $basenode] | DOMNode', 'return_type': 'DOMNode'},
\     'getAttribute': { 'signature': 'string $name | string', 'return_type': 'string'},
\     'getAttributeNo': { 'signature': 'int $index | string', 'return_type': 'string'},
\     'getAttributeNs': { 'signature': 'string $localName, string $namespaceURI | string', 'return_type': 'string'},
\     'getParserProperty': { 'signature': 'int $property | bool', 'return_type': 'bool'},
\     'isValid': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'lookupNamespace': { 'signature': 'string $prefix | bool', 'return_type': 'bool'},
\     'moveToAttribute': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'moveToAttributeNo': { 'signature': 'int $index | bool', 'return_type': 'bool'},
\     'moveToAttributeNs': { 'signature': 'string $localName, string $namespaceURI | bool', 'return_type': 'bool'},
\     'moveToElement': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'moveToFirstAttribute': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'moveToNextAttribute': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'next': { 'signature': '[ string $localname] | bool', 'return_type': 'bool'},
\     'open': { 'signature': 'string $URI [, string $encoding [, int $options = 0]] | bool', 'return_type': 'bool'},
\     'read': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'readInnerXML': { 'signature': 'void | string', 'return_type': 'string'},
\     'readOuterXML': { 'signature': 'void | string', 'return_type': 'string'},
\     'readString': { 'signature': 'void | string', 'return_type': 'string'},
\     'setParserProperty': { 'signature': 'int $property, bool $value | bool', 'return_type': 'bool'},
\     'setRelaxNGSchema': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'setRelaxNGSchemaSource': { 'signature': 'string $source | bool', 'return_type': 'bool'},
\     'setSchema': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'xml': { 'signature': 'string $source [, string $encoding [, int $options = 0]] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
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
\'Yaf_Action_Abstract': {
\   'constants': {
\   },
\   'properties': {
\     '_controller': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'execute': { 'signature': '[ mixed $arg [, mixed $...]] | mixed', 'return_type': 'mixed'},
\     'getController': { 'signature': 'void | Yaf_Controller_Abstract', 'return_type': 'Yaf_Controller_Abstract'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'display': { 'signature': 'string $tpl [, array $parameters] | bool', 'return_type': 'bool'},
\     'forward': { 'signature': 'string $action [, array $paramters] | void', 'return_type': 'void'},
\     'getInvokeArg': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'getInvokeArgs': { 'signature': 'void | void', 'return_type': 'void'},
\     'getModuleName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequest': { 'signature': 'void | Yaf_Request_Abstract', 'return_type': 'Yaf_Request_Abstract'},
\     'getResponse': { 'signature': 'void | Yaf_Response_Abstract', 'return_type': 'Yaf_Response_Abstract'},
\     'getView': { 'signature': 'void | Yaf_View_Interface', 'return_type': 'Yaf_View_Interface'},
\     'getViewpath': { 'signature': 'void | void', 'return_type': 'void'},
\     'init': { 'signature': 'void | void', 'return_type': 'void'},
\     'initView': { 'signature': '[ array $options] | void', 'return_type': 'void'},
\     'redirect': { 'signature': 'string $url | bool', 'return_type': 'bool'},
\     'render': { 'signature': 'string $tpl [, array $parameters] | string', 'return_type': 'string'},
\     'setViewpath': { 'signature': 'string $view_directory | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Application': {
\   'constants': {
\   },
\   'properties': {
\     'config': { 'initializer': '', 'type': ''},
\     'dispatcher': { 'initializer': '', 'type': ''},
\     '_modules': { 'initializer': '', 'type': ''},
\     '_running': { 'initializer': '', 'type': ''},
\     '_environ': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\     '$_app': { 'initializer': '', 'type': ''},
\   },
\   'methods': {
\     'bootstrap': { 'signature': '[ Yaf_Bootstrap_Abstract $bootstrap] | void', 'return_type': 'void'},
\     'clearLastError': { 'signature': 'void | Yaf_Application', 'return_type': 'Yaf_Application'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'mixed $config [, string $envrion]', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'environ': { 'signature': 'void | void', 'return_type': 'void'},
\     'execute': { 'signature': 'callable $entry, string $... | void', 'return_type': 'void'},
\     'getAppDirectory': { 'signature': 'void | Yaf_Application', 'return_type': 'Yaf_Application'},
\     'getConfig': { 'signature': 'void | Yaf_Config_Abstract', 'return_type': 'Yaf_Config_Abstract'},
\     'getDispatcher': { 'signature': 'void | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'getLastErrorMsg': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLastErrorNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getModules': { 'signature': 'void | array', 'return_type': 'array'},
\     'run': { 'signature': 'void | void', 'return_type': 'void'},
\     'setAppDirectory': { 'signature': 'string $directory | Yaf_Application', 'return_type': 'Yaf_Application'},
\     '__sleep': { 'signature': 'void | void', 'return_type': 'void'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'app': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\},
\'Yaf_Bootstrap_Abstract': {
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
\'Yaf_Config_Abstract': {
\   'constants': {
\   },
\   'properties': {
\     '_config': { 'initializer': '', 'type': ''},
\     '_readonly': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'get': { 'signature': 'string $name, mixed $value | mixed', 'return_type': 'mixed'},
\     'readonly': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'set': { 'signature': 'void | Yaf_Config_Abstract', 'return_type': 'Yaf_Config_Abstract'},
\     'toArray': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Config_Ini': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $config_file [, string $section]', 'return_type': ''},
\     'count': { 'signature': 'void | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | void', 'return_type': 'void'},
\     '__get': { 'signature': '[ string $name] | void', 'return_type': 'void'},
\     '__isset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | void', 'return_type': 'void'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetGet': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetSet': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'readonly': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     '__set': { 'signature': 'string $name, mixed $value | void', 'return_type': 'void'},
\     'toArray': { 'signature': 'void | array', 'return_type': 'array'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\     'get': { 'signature': 'string $name, mixed $value | mixed', 'return_type': 'mixed'},
\     'set': { 'signature': 'void | Yaf_Config_Abstract', 'return_type': 'Yaf_Config_Abstract'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Config_Simple': {
\   'constants': {
\   },
\   'properties': {
\     '_readonly': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $config_file [, string $section]', 'return_type': ''},
\     'count': { 'signature': 'void | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | void', 'return_type': 'void'},
\     '__get': { 'signature': '[ string $name] | void', 'return_type': 'void'},
\     '__isset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | void', 'return_type': 'void'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetGet': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetSet': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'readonly': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     '__set': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     'toArray': { 'signature': 'void | array', 'return_type': 'array'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\     'get': { 'signature': 'string $name, mixed $value | mixed', 'return_type': 'mixed'},
\     'set': { 'signature': 'void | Yaf_Config_Abstract', 'return_type': 'Yaf_Config_Abstract'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Controller_Abstract': {
\   'constants': {
\   },
\   'properties': {
\     'actions': { 'initializer': '', 'type': ''},
\     '_module': { 'initializer': '', 'type': ''},
\     '_name': { 'initializer': '', 'type': ''},
\     '_request': { 'initializer': '', 'type': ''},
\     '_response': { 'initializer': '', 'type': ''},
\     '_invoke_args': { 'initializer': '', 'type': ''},
\     '_view': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'display': { 'signature': 'string $tpl [, array $parameters] | bool', 'return_type': 'bool'},
\     'forward': { 'signature': 'string $action [, array $paramters] | void', 'return_type': 'void'},
\     'getInvokeArg': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'getInvokeArgs': { 'signature': 'void | void', 'return_type': 'void'},
\     'getModuleName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequest': { 'signature': 'void | Yaf_Request_Abstract', 'return_type': 'Yaf_Request_Abstract'},
\     'getResponse': { 'signature': 'void | Yaf_Response_Abstract', 'return_type': 'Yaf_Response_Abstract'},
\     'getView': { 'signature': 'void | Yaf_View_Interface', 'return_type': 'Yaf_View_Interface'},
\     'getViewpath': { 'signature': 'void | void', 'return_type': 'void'},
\     'init': { 'signature': 'void | void', 'return_type': 'void'},
\     'initView': { 'signature': '[ array $options] | void', 'return_type': 'void'},
\     'redirect': { 'signature': 'string $url | bool', 'return_type': 'bool'},
\     'render': { 'signature': 'string $tpl [, array $parameters] | string', 'return_type': 'string'},
\     'setViewpath': { 'signature': 'string $view_directory | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Dispatcher': {
\   'constants': {
\   },
\   'properties': {
\     '_router': { 'initializer': '', 'type': ''},
\     '_view': { 'initializer': '', 'type': ''},
\     '_request': { 'initializer': '', 'type': ''},
\     '_plugins': { 'initializer': '', 'type': ''},
\     '_auto_render': { 'initializer': '', 'type': ''},
\     '_return_response': { 'initializer': '', 'type': ''},
\     '_instantly_flush': { 'initializer': '', 'type': ''},
\     '_default_module': { 'initializer': '', 'type': ''},
\     '_default_controller': { 'initializer': '', 'type': ''},
\     '_default_action': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\     '$_instance': { 'initializer': '', 'type': ''},
\   },
\   'methods': {
\     'autoRender': { 'signature': '[ bool $flag] | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'catchException': { 'signature': '[ bool $flag] | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'disableView': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'dispatch': { 'signature': 'Yaf_Request_Abstract $request | Yaf_Response_Abstract', 'return_type': 'Yaf_Response_Abstract'},
\     'enableView': { 'signature': 'void | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'flushInstantly': { 'signature': '[ bool $flag] | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'getApplication': { 'signature': 'void | Yaf_Application', 'return_type': 'Yaf_Application'},
\     'getRequest': { 'signature': 'void | Yaf_Request_Abstract', 'return_type': 'Yaf_Request_Abstract'},
\     'getRouter': { 'signature': 'void | Yaf_Router', 'return_type': 'Yaf_Router'},
\     'initView': { 'signature': 'string $templates_dir [, array $options] | Yaf_View_Interface', 'return_type': 'Yaf_View_Interface'},
\     'registerPlugin': { 'signature': 'Yaf_Plugin_Abstract $plugin | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'returnResponse': { 'signature': 'bool $flag | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setDefaultAction': { 'signature': 'string $action | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setDefaultController': { 'signature': 'string $controller | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setDefaultModule': { 'signature': 'string $module | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setErrorHandler': { 'signature': 'call $callback, int $error_types | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setRequest': { 'signature': 'Yaf_Request_Abstract $request | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setView': { 'signature': 'Yaf_View_Interface $view | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     '__sleep': { 'signature': 'void | void', 'return_type': 'void'},
\     'throwException': { 'signature': '[ bool $flag] | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getInstance': { 'signature': 'void | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\   },
\},
\'Yaf_Exception': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': ''},
\     'code': { 'initializer': '', 'type': ''},
\     'previous': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | Exception', 'return_type': 'Exception'},
\     'getMessage': { 'signature': 'void | string', 'return_type': 'string'},
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
\'Yaf_Exception_DispatchFailed': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Exception_LoadFailed': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Exception_LoadFailed_Action': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Exception_LoadFailed_Controller': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Exception_LoadFailed_Module': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Exception_LoadFailed_View': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Exception_RouterFailed': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Exception_StartupError': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Exception_TypeError': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Loader': {
\   'constants': {
\   },
\   'properties': {
\     '_local_ns': { 'initializer': '', 'type': ''},
\     '_library': { 'initializer': '', 'type': ''},
\     '_global_library': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\     '$_instance': { 'initializer': '', 'type': ''},
\   },
\   'methods': {
\     'autoload': { 'signature': 'void | void', 'return_type': 'void'},
\     'clearLocalNamespace': { 'signature': 'void | void', 'return_type': 'void'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getLibraryPath': { 'signature': '[ bool $is_global = false] | Yaf_Loader', 'return_type': 'Yaf_Loader'},
\     'getLocalNamespace': { 'signature': 'void | void', 'return_type': 'void'},
\     'isLocalName': { 'signature': 'void | void', 'return_type': 'void'},
\     'registerLocalNamespace': { 'signature': 'mixed $prefix | void', 'return_type': 'void'},
\     'setLibraryPath': { 'signature': 'string $directory [, bool $is_global = false] | Yaf_Loader', 'return_type': 'Yaf_Loader'},
\     '__sleep': { 'signature': 'void | void', 'return_type': 'void'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getInstance': { 'signature': 'void | void', 'return_type': 'void'},
\     'import': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\},
\'Yaf_Plugin_Abstract': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'dispatchLoopShutdown': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'dispatchLoopStartup': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'postDispatch': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'preDispatch': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'preResponse': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'routerShutdown': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'routerStartup': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Registry': {
\   'constants': {
\   },
\   'properties': {
\     '_entries': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\     '$_instance': { 'initializer': '', 'type': ''},
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\   },
\   'static_methods': {
\     'del': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'get': { 'signature': 'string $name | mixed', 'return_type': 'mixed'},
\     'has': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'set': { 'signature': 'string $name, string $value | bool', 'return_type': 'bool'},
\   },
\},
\'Yaf_Request_Abstract': {
\   'constants': {
\     'SCHEME_HTTP': 'http',
\     'SCHEME_HTTPS': 'https',
\   },
\   'properties': {
\     'module': { 'initializer': '', 'type': ''},
\     'controller': { 'initializer': '', 'type': ''},
\     'action': { 'initializer': '', 'type': ''},
\     'method': { 'initializer': '', 'type': ''},
\     'params': { 'initializer': '', 'type': ''},
\     'language': { 'initializer': '', 'type': ''},
\     '_exception': { 'initializer': '', 'type': ''},
\     '_base_uri': { 'initializer': '', 'type': ''},
\     'uri': { 'initializer': '', 'type': ''},
\     'dispatched': { 'initializer': '', 'type': ''},
\     'routed': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getActionName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getBaseUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getControllerName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getEnv': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getException': { 'signature': 'void | void', 'return_type': 'void'},
\     'getLanguage': { 'signature': 'void | void', 'return_type': 'void'},
\     'getMethod': { 'signature': 'void | void', 'return_type': 'void'},
\     'getModuleName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getParam': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getParams': { 'signature': 'void | void', 'return_type': 'void'},
\     'getRequestUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getServer': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'isCli': { 'signature': 'void | void', 'return_type': 'void'},
\     'isDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'isGet': { 'signature': 'void | void', 'return_type': 'void'},
\     'isHead': { 'signature': 'void | void', 'return_type': 'void'},
\     'isOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPost': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPut': { 'signature': 'void | void', 'return_type': 'void'},
\     'isRouted': { 'signature': 'void | void', 'return_type': 'void'},
\     'isXmlHttpRequest': { 'signature': 'void | void', 'return_type': 'void'},
\     'setActionName': { 'signature': 'string $action | void', 'return_type': 'void'},
\     'setBaseUri': { 'signature': 'string $uir | bool', 'return_type': 'bool'},
\     'setControllerName': { 'signature': 'string $controller | void', 'return_type': 'void'},
\     'setDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'setModuleName': { 'signature': 'string $module | void', 'return_type': 'void'},
\     'setParam': { 'signature': 'string $name [, string $value] | void', 'return_type': 'void'},
\     'setRequestUri': { 'signature': 'string $uir | void', 'return_type': 'void'},
\     'setRouted': { 'signature': '[ string $flag] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Request_Http': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'get': { 'signature': 'string $name [, string $default] | mixed', 'return_type': 'mixed'},
\     'getCookie': { 'signature': 'string $name [, string $default] | mixed', 'return_type': 'mixed'},
\     'getFiles': { 'signature': 'void | void', 'return_type': 'void'},
\     'getPost': { 'signature': 'string $name [, string $default] | mixed', 'return_type': 'mixed'},
\     'getQuery': { 'signature': 'string $name [, string $default] | mixed', 'return_type': 'mixed'},
\     'getRequest': { 'signature': 'void | void', 'return_type': 'void'},
\     'isXmlHttpRequest': { 'signature': 'void | void', 'return_type': 'void'},
\     'getActionName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getBaseUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getControllerName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getEnv': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getException': { 'signature': 'void | void', 'return_type': 'void'},
\     'getLanguage': { 'signature': 'void | void', 'return_type': 'void'},
\     'getMethod': { 'signature': 'void | void', 'return_type': 'void'},
\     'getModuleName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getParam': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getParams': { 'signature': 'void | void', 'return_type': 'void'},
\     'getRequestUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getServer': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'isCli': { 'signature': 'void | void', 'return_type': 'void'},
\     'isDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'isGet': { 'signature': 'void | void', 'return_type': 'void'},
\     'isHead': { 'signature': 'void | void', 'return_type': 'void'},
\     'isOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPost': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPut': { 'signature': 'void | void', 'return_type': 'void'},
\     'isRouted': { 'signature': 'void | void', 'return_type': 'void'},
\     'setActionName': { 'signature': 'string $action | void', 'return_type': 'void'},
\     'setBaseUri': { 'signature': 'string $uir | bool', 'return_type': 'bool'},
\     'setControllerName': { 'signature': 'string $controller | void', 'return_type': 'void'},
\     'setDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'setModuleName': { 'signature': 'string $module | void', 'return_type': 'void'},
\     'setParam': { 'signature': 'string $name [, string $value] | void', 'return_type': 'void'},
\     'setRequestUri': { 'signature': 'string $uir | void', 'return_type': 'void'},
\     'setRouted': { 'signature': '[ string $flag] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Request_Simple': {
\   'constants': {
\     'SCHEME_HTTP': 'http',
\     'SCHEME_HTTPS': 'https',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'get': { 'signature': 'void | void', 'return_type': 'void'},
\     'getCookie': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFiles': { 'signature': 'void | void', 'return_type': 'void'},
\     'getPost': { 'signature': 'void | void', 'return_type': 'void'},
\     'getQuery': { 'signature': 'void | void', 'return_type': 'void'},
\     'getRequest': { 'signature': 'void | void', 'return_type': 'void'},
\     'isXmlHttpRequest': { 'signature': 'void | void', 'return_type': 'void'},
\     'getActionName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getBaseUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getControllerName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getEnv': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getException': { 'signature': 'void | void', 'return_type': 'void'},
\     'getLanguage': { 'signature': 'void | void', 'return_type': 'void'},
\     'getMethod': { 'signature': 'void | void', 'return_type': 'void'},
\     'getModuleName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getParam': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getParams': { 'signature': 'void | void', 'return_type': 'void'},
\     'getRequestUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getServer': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'isCli': { 'signature': 'void | void', 'return_type': 'void'},
\     'isDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'isGet': { 'signature': 'void | void', 'return_type': 'void'},
\     'isHead': { 'signature': 'void | void', 'return_type': 'void'},
\     'isOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPost': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPut': { 'signature': 'void | void', 'return_type': 'void'},
\     'isRouted': { 'signature': 'void | void', 'return_type': 'void'},
\     'setActionName': { 'signature': 'string $action | void', 'return_type': 'void'},
\     'setBaseUri': { 'signature': 'string $uir | bool', 'return_type': 'bool'},
\     'setControllerName': { 'signature': 'string $controller | void', 'return_type': 'void'},
\     'setDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'setModuleName': { 'signature': 'string $module | void', 'return_type': 'void'},
\     'setParam': { 'signature': 'string $name [, string $value] | void', 'return_type': 'void'},
\     'setRequestUri': { 'signature': 'string $uir | void', 'return_type': 'void'},
\     'setRouted': { 'signature': '[ string $flag] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Response_Abstract': {
\   'constants': {
\     'DEFAULT_BODY': '"content"',
\   },
\   'properties': {
\     '_header': { 'initializer': '', 'type': ''},
\     '_body': { 'initializer': '', 'type': ''},
\     '_sendheader': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'appendBody': { 'signature': 'string $content [, string $key] | bool', 'return_type': 'bool'},
\     'clearBody': { 'signature': '[ string $key] | bool', 'return_type': 'bool'},
\     'clearHeaders': { 'signature': 'void | void', 'return_type': 'void'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'getBody': { 'signature': '[ string $key] | mixed', 'return_type': 'mixed'},
\     'getHeader': { 'signature': 'void | void', 'return_type': 'void'},
\     'prependBody': { 'signature': 'string $content [, string $key] | bool', 'return_type': 'bool'},
\     'response': { 'signature': 'void | void', 'return_type': 'void'},
\     'setAllHeaders': { 'signature': 'void | void', 'return_type': 'void'},
\     'setBody': { 'signature': 'string $content [, string $key] | bool', 'return_type': 'bool'},
\     'setHeader': { 'signature': 'void | void', 'return_type': 'void'},
\     'setRedirect': { 'signature': 'void | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Route_Interface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Route_Map': {
\   'constants': {
\   },
\   'properties': {
\     '_ctl_router': { 'initializer': '', 'type': ''},
\     '_delimeter': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $controller_prefer = false [, string $delimiter = '''']]', 'return_type': ''},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Route_Regex': {
\   'constants': {
\   },
\   'properties': {
\     '_route': { 'initializer': '', 'type': ''},
\     '_default': { 'initializer': '', 'type': ''},
\     '_maps': { 'initializer': '', 'type': ''},
\     '_verify': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $match, array $route [, array $map [, array $verify]]', 'return_type': ''},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Route_Rewrite': {
\   'constants': {
\   },
\   'properties': {
\     '_route': { 'initializer': '', 'type': ''},
\     '_default': { 'initializer': '', 'type': ''},
\     '_verify': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $match, array $route [, array $verify]', 'return_type': ''},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Route_Simple': {
\   'constants': {
\   },
\   'properties': {
\     'controller': { 'initializer': '', 'type': ''},
\     'module': { 'initializer': '', 'type': ''},
\     'action': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $module_name, string $controller_name, string $action_name', 'return_type': ''},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Route_Static': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'match': { 'signature': 'string $uri | void', 'return_type': 'void'},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Route_Supervar': {
\   'constants': {
\   },
\   'properties': {
\     '_var_name': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $supervar_name', 'return_type': ''},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Router': {
\   'constants': {
\   },
\   'properties': {
\     '_routes': { 'initializer': '', 'type': ''},
\     '_current': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addConfig': { 'signature': 'Yaf_Config_Abstract $config | bool', 'return_type': 'bool'},
\     'addRoute': { 'signature': 'string $name, Yaf_Route_Abstract $route | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getCurrentRoute': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRoute': { 'signature': 'string $name | Yaf_Route_Interface', 'return_type': 'Yaf_Route_Interface'},
\     'getRoutes': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_Session': {
\   'constants': {
\   },
\   'properties': {
\     '_session': { 'initializer': '', 'type': ''},
\     '_started': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\     '$_instance': { 'initializer': '', 'type': ''},
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'count': { 'signature': 'void | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | void', 'return_type': 'void'},
\     'del': { 'signature': 'string $name | void', 'return_type': 'void'},
\     '__get': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'has': { 'signature': 'string $name | void', 'return_type': 'void'},
\     '__isset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | void', 'return_type': 'void'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetGet': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetSet': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     '__set': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     '__sleep': { 'signature': 'void | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     '__unset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getInstance': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\},
\'Yaf_View_Interface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'assign': { 'signature': 'string $name [, string $value] | bool', 'return_type': 'bool'},
\     'display': { 'signature': 'string $tpl [, array $tpl_vars] | bool', 'return_type': 'bool'},
\     'getScriptPath': { 'signature': 'void | void', 'return_type': 'void'},
\     'render': { 'signature': 'string $tpl [, array $tpl_vars] | string', 'return_type': 'string'},
\     'setScriptPath': { 'signature': 'string $template_dir | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'Yaf_View_Simple': {
\   'constants': {
\   },
\   'properties': {
\     '_tpl_vars': { 'initializer': '', 'type': ''},
\     '_tpl_dir': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'assign': { 'signature': 'string $name [, mixed $value] | bool', 'return_type': 'bool'},
\     'assignRef': { 'signature': 'string $name, mixed &$value | bool', 'return_type': 'bool'},
\     'clear': { 'signature': '[ string $name] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'string $tempalte_dir [, array $options]', 'return_type': ''},
\     'display': { 'signature': 'string $tpl [, array $tpl_vars] | bool', 'return_type': 'bool'},
\     'eval': { 'signature': 'string $tpl_content [, array $tpl_vars] | string', 'return_type': 'string'},
\     '__get': { 'signature': '[ string $name] | void', 'return_type': 'void'},
\     'getScriptPath': { 'signature': 'void | string', 'return_type': 'string'},
\     '__isset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'render': { 'signature': 'string $tpl [, array $tpl_vars] | string', 'return_type': 'string'},
\     '__set': { 'signature': 'string $name, mixed $value | void', 'return_type': 'void'},
\     'setScriptPath': { 'signature': 'string $template_dir | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'ZipArchive': {
\   'constants': {
\     'CHECKCONS': '',
\     'CM_BZIP2': '',
\     'CM_DEFAULT': '',
\     'CM_DEFLATE': '',
\     'CM_DEFLATE64': '',
\     'CM_IMPLODE': '',
\     'CM_PKWARE_IMPLODE': '',
\     'CM_REDUCE_1': '',
\     'CM_REDUCE_2': '',
\     'CM_REDUCE_3': '',
\     'CM_REDUCE_4': '',
\     'CM_SHRINK': '',
\     'CM_STORE': '',
\     'CREATE': '',
\     'ER_CHANGED': '',
\     'ER_CLOSE': '',
\     'ER_COMPNOTSUPP': '',
\     'ER_CRC': '',
\     'ER_DELETED': '',
\     'ER_EOF': '',
\     'ER_EXISTS': '',
\     'ER_INCONS': '',
\     'ER_INTERNAL': '',
\     'ER_INVAL': '',
\     'ER_MEMORY': '',
\     'ER_MULTIDISK': '',
\     'ER_NOENT': '',
\     'ER_NOZIP': '',
\     'ER_OK': '',
\     'ER_OPEN': '',
\     'ER_READ': '',
\     'ER_REMOVE': '',
\     'ER_RENAME': '',
\     'ER_SEEK': '',
\     'ER_TMPOPEN': '',
\     'ER_WRITE': '',
\     'ER_ZIPCLOSED': '',
\     'ER_ZLIB': '',
\     'EXCL': '',
\     'FL_COMPRESSED': '',
\     'FL_NOCASE': '',
\     'FL_NODIR': '',
\     'FL_UNCHANGED': '',
\     'OVERWRITE': '',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addEmptyDir': { 'signature': 'string $dirname | bool', 'return_type': 'bool'},
\     'addFile': { 'signature': 'string $filename [, string $localname = NULL [, int $start = 0 [, int $length = 0]]] | bool', 'return_type': 'bool'},
\     'addFromString': { 'signature': 'string $localname, string $contents | bool', 'return_type': 'bool'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'deleteIndex': { 'signature': 'int $index | bool', 'return_type': 'bool'},
\     'deleteName': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'extractTo': { 'signature': 'string $destination [, mixed $entries] | bool', 'return_type': 'bool'},
\     'getArchiveComment': { 'signature': '[ int $flags] | string', 'return_type': 'string'},
\     'getCommentIndex': { 'signature': 'int $index [, int $flags] | string', 'return_type': 'string'},
\     'getCommentName': { 'signature': 'string $name [, int $flags] | string', 'return_type': 'string'},
\     'getFromIndex': { 'signature': 'int $index [, int $length = 0 [, int $flags]] | mixed', 'return_type': 'mixed'},
\     'getFromName': { 'signature': 'string $name [, int $length = 0 [, int $flags]] | mixed', 'return_type': 'mixed'},
\     'getNameIndex': { 'signature': 'int $index [, int $flags] | string', 'return_type': 'string'},
\     'getStatusString': { 'signature': 'void | string', 'return_type': 'string'},
\     'getStream': { 'signature': 'string $name | resource', 'return_type': 'resource'},
\     'locateName': { 'signature': 'string $name [, int $flags] | mixed', 'return_type': 'mixed'},
\     'open': { 'signature': 'string $filename [, int $flags] | mixed', 'return_type': 'mixed'},
\     'renameIndex': { 'signature': 'int $index, string $newname | bool', 'return_type': 'bool'},
\     'renameName': { 'signature': 'string $name, string $newname | bool', 'return_type': 'bool'},
\     'setArchiveComment': { 'signature': 'string $comment | mixed', 'return_type': 'mixed'},
\     'setCommentIndex': { 'signature': 'int $index, string $comment | mixed', 'return_type': 'mixed'},
\     'setCommentName': { 'signature': 'string $name, string $comment | mixed', 'return_type': 'mixed'},
\     'statIndex': { 'signature': 'int $index [, int $flags] | mixed', 'return_type': 'mixed'},
\     'statName': { 'signature': 'string $name [, int $flags] | mixed', 'return_type': 'mixed'},
\     'unchangeAll': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'unchangeArchive': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'unchangeIndex': { 'signature': 'int $index | mixed', 'return_type': 'mixed'},
\     'unchangeName': { 'signature': 'string $name | mixed', 'return_type': 'mixed'},
\   },
\   'static_methods': {
\   },
\},
\'chdb': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $pathname', 'return_type': ''},
\     'get': { 'signature': 'string $key | string', 'return_type': 'string'},
\   },
\   'static_methods': {
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
\'libXMLError': {
\   'constants': {
\   },
\   'properties': {
\     'level': { 'initializer': '', 'type': 'int'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'column': { 'initializer': '', 'type': 'int'},
\     'message': { 'initializer': '', 'type': 'string'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'mysqli': {
\   'constants': {
\   },
\   'properties': {
\     'affected_rows': { 'initializer': '', 'type': 'int'},
\     'client_info': { 'initializer': '', 'type': 'string'},
\     'client_version': { 'initializer': '', 'type': 'int'},
\     'connect_errno': { 'initializer': '', 'type': 'string'},
\     'connect_error': { 'initializer': '', 'type': 'string'},
\     'errno': { 'initializer': '', 'type': 'int'},
\     'error_list': { 'initializer': '', 'type': 'array'},
\     'error': { 'initializer': '', 'type': 'string'},
\     'field_count': { 'initializer': '', 'type': 'int'},
\     'host_info': { 'initializer': '', 'type': 'string'},
\     'protocol_version': { 'initializer': '', 'type': 'string'},
\     'server_info': { 'initializer': '', 'type': 'string'},
\     'server_version': { 'initializer': '', 'type': 'int'},
\     'info': { 'initializer': '', 'type': 'string'},
\     'insert_id': { 'initializer': '', 'type': 'mixed'},
\     'sqlstate': { 'initializer': '', 'type': 'string'},
\     'thread_id': { 'initializer': '', 'type': 'int'},
\     'warning_count': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $host = ini_get("mysqli.default_host") [, string $username = ini_get("mysqli.default_user") [, string $passwd = ini_get("mysqli.default_pw") [, string $dbname = "" [, int $port = ini_get("mysqli.default_port") [, string $socket = ini_get("mysqli.default_socket")]]]]]]', 'return_type': ''},
\     'autocommit': { 'signature': 'bool $mode | bool', 'return_type': 'bool'},
\     'change_user': { 'signature': 'string $user, string $password, string $database | bool', 'return_type': 'bool'},
\     'character_set_name': { 'signature': 'void | string', 'return_type': 'string'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'commit': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'debug': { 'signature': 'string $message | bool', 'return_type': 'bool'},
\     'dump_debug_info': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get_charset': { 'signature': 'void | object', 'return_type': 'object'},
\     'get_client_info': { 'signature': 'void | string', 'return_type': 'string'},
\     'get_connection_stats': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'get_warnings': { 'signature': 'void | mysqli_warning', 'return_type': 'mysqli_warning'},
\     'init': { 'signature': 'void | mysqli', 'return_type': 'mysqli'},
\     'kill': { 'signature': 'int $processid | bool', 'return_type': 'bool'},
\     'more_results': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'multi_query': { 'signature': 'string $query | bool', 'return_type': 'bool'},
\     'next_result': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'options': { 'signature': 'int $option, mixed $value | bool', 'return_type': 'bool'},
\     'ping': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'poll': { 'signature': 'array &$read, array &$error, array &$reject, int $sec [, int $usec] | int', 'return_type': 'int'},
\     'prepare': { 'signature': 'string $query | mysqli_stmt', 'return_type': 'mysqli_stmt'},
\     'query': { 'signature': 'string $query [, int $resultmode = MYSQLI_STORE_RESULT] | mixed', 'return_type': 'mixed'},
\     'real_connect': { 'signature': '[ string $host [, string $username [, string $passwd [, string $dbname [, int $port [, string $socket [, int $flags]]]]]]] | bool', 'return_type': 'bool'},
\     'escape_string': { 'signature': 'string $escapestr | string', 'return_type': 'string'},
\     'real_query': { 'signature': 'string $query | bool', 'return_type': 'bool'},
\     'reap_async_query': { 'signature': 'void | mysqli_result', 'return_type': 'mysqli_result'},
\     'refresh': { 'signature': 'int $options | bool', 'return_type': 'bool'},
\     'rollback': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rpl_query_type': { 'signature': 'string $query | int', 'return_type': 'int'},
\     'select_db': { 'signature': 'string $dbname | bool', 'return_type': 'bool'},
\     'send_query': { 'signature': 'string $query | bool', 'return_type': 'bool'},
\     'set_charset': { 'signature': 'string $charset | bool', 'return_type': 'bool'},
\     'set_local_infile_handler': { 'signature': 'mysqli $link, callable $read_func | bool', 'return_type': 'bool'},
\     'ssl_set': { 'signature': 'string $key, string $cert, string $ca, string $capath, string $cipher | bool', 'return_type': 'bool'},
\     'stat': { 'signature': 'void | string', 'return_type': 'string'},
\     'stmt_init': { 'signature': 'void | mysqli_stmt', 'return_type': 'mysqli_stmt'},
\     'store_result': { 'signature': 'void | mysqli_result', 'return_type': 'mysqli_result'},
\     'use_result': { 'signature': 'void | mysqli_result', 'return_type': 'mysqli_result'},
\   },
\   'static_methods': {
\   },
\},
\'mysqli_driver': {
\   'constants': {
\   },
\   'properties': {
\     'client_info': { 'initializer': '', 'type': 'string'},
\     'client_version': { 'initializer': '', 'type': 'string'},
\     'driver_version': { 'initializer': '', 'type': 'string'},
\     'embedded': { 'initializer': '', 'type': 'string'},
\     'reconnect': { 'initializer': '', 'type': 'bool'},
\     'report_mode': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'embedded_server_end': { 'signature': 'void | void', 'return_type': 'void'},
\     'embedded_server_start': { 'signature': 'bool $start, array $arguments, array $groups | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'mysqli_result': {
\   'constants': {
\   },
\   'properties': {
\     'current_field': { 'initializer': '', 'type': 'int'},
\     'field_count': { 'initializer': '', 'type': 'int'},
\     'lengths': { 'initializer': '', 'type': 'array'},
\     'num_rows': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'data_seek': { 'signature': 'int $offset | bool', 'return_type': 'bool'},
\     'fetch_all': { 'signature': '[ int $resulttype = MYSQLI_NUM] | mixed', 'return_type': 'mixed'},
\     'fetch_array': { 'signature': '[ int $resulttype = MYSQLI_BOTH] | mixed', 'return_type': 'mixed'},
\     'fetch_assoc': { 'signature': 'void | array', 'return_type': 'array'},
\     'fetch_field_direct': { 'signature': 'int $fieldnr | object', 'return_type': 'object'},
\     'fetch_field': { 'signature': 'void | object', 'return_type': 'object'},
\     'fetch_fields': { 'signature': 'void | array', 'return_type': 'array'},
\     'fetch_object': { 'signature': '[ string $class_name [, array $params]] | object', 'return_type': 'object'},
\     'fetch_row': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'field_seek': { 'signature': 'int $fieldnr | bool', 'return_type': 'bool'},
\     'free': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'mysqli_sql_exception': {
\   'constants': {
\   },
\   'properties': {
\     'code': { 'initializer': '', 'type': ''},
\     'sqlstate': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'mysqli_stmt': {
\   'constants': {
\   },
\   'properties': {
\     'affected_rows': { 'initializer': '', 'type': 'int'},
\     'errno': { 'initializer': '', 'type': 'int'},
\     'error_list': { 'initializer': '', 'type': 'array'},
\     'error': { 'initializer': '', 'type': 'string'},
\     'field_count': { 'initializer': '', 'type': 'int'},
\     'insert_id': { 'initializer': '', 'type': 'int'},
\     'num_rows': { 'initializer': '', 'type': 'int'},
\     'param_count': { 'initializer': '', 'type': 'int'},
\     'sqlstate': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'attr_get': { 'signature': 'int $attr | int', 'return_type': 'int'},
\     'attr_set': { 'signature': 'int $attr, int $mode | bool', 'return_type': 'bool'},
\     'bind_param': { 'signature': 'string $types, mixed &$var1 [, mixed &$...] | bool', 'return_type': 'bool'},
\     'bind_result': { 'signature': 'mixed &$var1 [, mixed &$...] | bool', 'return_type': 'bool'},
\     'close': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'data_seek': { 'signature': 'int $offset | void', 'return_type': 'void'},
\     'execute': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'fetch': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'free_result': { 'signature': 'void | void', 'return_type': 'void'},
\     'get_result': { 'signature': 'void | mysqli_result', 'return_type': 'mysqli_result'},
\     'get_warnings': { 'signature': 'mysqli_stmt $stmt | object', 'return_type': 'object'},
\     'prepare': { 'signature': 'string $query | mixed', 'return_type': 'mixed'},
\     'reset': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'result_metadata': { 'signature': 'void | mysqli_result', 'return_type': 'mysqli_result'},
\     'send_long_data': { 'signature': 'int $param_nr, string $data | bool', 'return_type': 'bool'},
\     'store_result': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'mysqli_warning': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': ''},
\     'sqlstate': { 'initializer': '', 'type': ''},
\     'errno': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'php_user_filter': {
\   'constants': {
\   },
\   'properties': {
\     'filtername': { 'initializer': '', 'type': ''},
\     'params': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'filter': { 'signature': 'resource $in, resource $out, int &$consumed, bool $closing | int', 'return_type': 'int'},
\     'onClose': { 'signature': 'void | void', 'return_type': 'void'},
\     'onCreate': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'streamWrapper': {
\   'constants': {
\   },
\   'properties': {
\     'context': { 'initializer': '', 'type': 'resource'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void', 'return_type': ''},
\     'dir_closedir': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'dir_opendir': { 'signature': 'string $path, int $options | bool', 'return_type': 'bool'},
\     'dir_readdir': { 'signature': 'void | string', 'return_type': 'string'},
\     'dir_rewinddir': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'mkdir': { 'signature': 'string $path, int $mode, int $options | bool', 'return_type': 'bool'},
\     'rename': { 'signature': 'string $path_from, string $path_to | bool', 'return_type': 'bool'},
\     'rmdir': { 'signature': 'string $path, int $options | bool', 'return_type': 'bool'},
\     'stream_cast': { 'signature': 'int $cast_as | resource', 'return_type': 'resource'},
\     'stream_close': { 'signature': 'void | void', 'return_type': 'void'},
\     'stream_eof': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'stream_flush': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'stream_lock': { 'signature': 'int $operation | bool', 'return_type': 'bool'},
\     'stream_metadata': { 'signature': 'string $path, int $option, mixed $value | bool', 'return_type': 'bool'},
\     'stream_open': { 'signature': 'string $path, string $mode, int $options, string &$opened_path | bool', 'return_type': 'bool'},
\     'stream_read': { 'signature': 'int $count | string', 'return_type': 'string'},
\     'stream_seek': { 'signature': 'int $offset [, int $whence = SEEK_SET] | bool', 'return_type': 'bool'},
\     'stream_set_option': { 'signature': 'int $option, int $arg1, int $arg2 | bool', 'return_type': 'bool'},
\     'stream_stat': { 'signature': 'void | array', 'return_type': 'array'},
\     'stream_tell': { 'signature': 'void | int', 'return_type': 'int'},
\     'stream_truncate': { 'signature': 'int $new_size | bool', 'return_type': 'bool'},
\     'stream_write': { 'signature': 'string $data | int', 'return_type': 'int'},
\     'unlink': { 'signature': 'string $path | bool', 'return_type': 'bool'},
\     'url_stat': { 'signature': 'string $path, int $flags | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'tidy': {
\   'constants': {
\   },
\   'properties': {
\     'errorBuffer': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'body': { 'signature': 'void | tidyNode', 'return_type': 'tidyNode'},
\     'cleanRepair': { 'signature': 'void | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': '[ string $filename [, mixed $config [, string $encoding [, bool $use_include_path]]]]', 'return_type': ''},
\     'diagnose': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'getConfig': { 'signature': 'void | array', 'return_type': 'array'},
\     'getHtmlVer': { 'signature': 'void | int', 'return_type': 'int'},
\     'getOpt': { 'signature': 'string $option | mixed', 'return_type': 'mixed'},
\     'getOptDoc': { 'signature': 'string $optname | string', 'return_type': 'string'},
\     'getRelease': { 'signature': 'void | string', 'return_type': 'string'},
\     'getStatus': { 'signature': 'void | int', 'return_type': 'int'},
\     'head': { 'signature': 'void | tidyNode', 'return_type': 'tidyNode'},
\     'html': { 'signature': 'void | tidyNode', 'return_type': 'tidyNode'},
\     'isXhtml': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isXml': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'parseFile': { 'signature': 'string $filename [, mixed $config [, string $encoding [, bool $use_include_path = false]]] | bool', 'return_type': 'bool'},
\     'parseString': { 'signature': 'string $input [, mixed $config [, string $encoding]] | bool', 'return_type': 'bool'},
\     'repairFile': { 'signature': 'string $filename [, mixed $config [, string $encoding [, bool $use_include_path = false]]] | string', 'return_type': 'string'},
\     'repairString': { 'signature': 'string $data [, mixed $config [, string $encoding]] | string', 'return_type': 'string'},
\     'root': { 'signature': 'void | tidyNode', 'return_type': 'tidyNode'},
\   },
\   'static_methods': {
\   },
\},
\'tidyNode': {
\   'constants': {
\   },
\   'properties': {
\     'value': { 'initializer': '', 'type': ''},
\     'name': { 'initializer': '', 'type': ''},
\     'type': { 'initializer': '', 'type': ''},
\     'line': { 'initializer': '', 'type': ''},
\     'column': { 'initializer': '', 'type': ''},
\     'proprietary': { 'initializer': '', 'type': ''},
\     'id': { 'initializer': '', 'type': ''},
\     'attribute': { 'initializer': '', 'type': ''},
\     'child': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getParent': { 'signature': 'void | tidyNode', 'return_type': 'tidyNode'},
\     'hasChildren': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'hasSiblings': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isAsp': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isComment': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isHtml': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isJste': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isPhp': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isText': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'tokyotyrantexception': {
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
\}

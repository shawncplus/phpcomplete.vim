call extend(g:php_builtin_classes, {
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
\     'get': { 'signature': '[ int $flags = ini_get("amqp.auto_ack")] | mixed', 'return_type': 'mixed'},
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
\})

call extend(g:php_builtin_classes, {
\'ZMQ': {
\   'constants': {
\     'SOCKET_PAIR': '',
\     'SOCKET_PUB': '',
\     'SOCKET_SUB': '',
\     'SOCKET_REQ': '',
\     'SOCKET_REP': '',
\     'SOCKET_XREQ': '',
\     'SOCKET_XREP': '',
\     'SOCKET_PUSH': '',
\     'SOCKET_PULL': '',
\     'SOCKET_ROUTER': '',
\     'SOCKET_DEALER': '',
\     'SOCKET_XPUB': '',
\     'SOCKET_XSUB': '',
\     'SOCKET_STREAM': '',
\     'SOCKOPT_HWM': '',
\     'SOCKOPT_SNDHWM': '',
\     'SOCKOPT_RCVHWM': '',
\     'SOCKOPT_AFFINITY': '',
\     'SOCKOPT_IDENTITY': '',
\     'SOCKOPT_SUBSCRIBE': '',
\     'SOCKOPT_UNSUBSCRIBE': '',
\     'SOCKOPT_RATE': '',
\     'SOCKOPT_RECOVERY_IVL': '',
\     'SOCKOPT_RECONNECT_IVL': '',
\     'SOCKOPT_RECONNECT_IVL_MAX': '',
\     'SOCKOPT_MCAST_LOOP': '',
\     'SOCKOPT_SNDBUF': '',
\     'SOCKOPT_RCVBUF': '',
\     'SOCKOPT_RCVMORE': '',
\     'SOCKOPT_TYPE': '',
\     'SOCKOPT_LINGER': '',
\     'SOCKOPT_BACKLOG': '',
\     'SOCKOPT_MAXMSGSIZE': '',
\     'SOCKOPT_SNDTIMEO': '',
\     'SOCKOPT_RCVTIMEO': '',
\     'SOCKOPT_IPV4ONLY': '',
\     'SOCKOPT_LAST_ENDPOINT': '',
\     'SOCKOPT_TCP_KEEPALIVE_IDLE': '',
\     'SOCKOPT_TCP_KEEPALIVE_CNT': '',
\     'SOCKOPT_TCP_KEEPALIVE_INTVL': '',
\     'SOCKOPT_TCP_ACCEPT_FILTER': '',
\     'SOCKOPT_DELAY_ATTACH_ON_CONNECT': '',
\     'SOCKOPT_XPUB_VERBOSE': '',
\     'SOCKOPT_ROUTER_RAW': '',
\     'SOCKOPT_IPV6': '',
\     'CTXOPT_MAX_SOCKETS': '',
\     'POLL_IN': '',
\     'POLL_OUT': '',
\     'MODE_NOBLOCK': '',
\     'MODE_DONTWAIT': '',
\     'MODE_SNDMORE': '',
\     'ERR_INTERNAL': '',
\     'ERR_EAGAIN': '',
\     'ERR_ENOTSUP': '',
\     'ERR_EFSM': '',
\     'ERR_ETERM': '',
\     'DEVICE_FORWARDER': '',
\     'DEVICE_QUEUE': '',
\     'DEVICE_STREAMER': '',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'ZMQContext': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ integer $io_threads = 1 [, boolean $is_persistent = true]]', 'return_type': ''},
\     'getOpt': { 'signature': 'string $key | mixed', 'return_type': 'mixed'},
\     'getSocket': { 'signature': 'integer $type [, string $persistent_id = null [, callback $on_new_socket = null]] | ZMQSocket', 'return_type': 'ZMQSocket'},
\     'isPersistent': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'setOpt': { 'signature': 'integer $key, mixed $value | ZMQContext', 'return_type': 'ZMQContext'},
\   },
\   'static_methods': {
\   },
\},
\'ZMQDevice': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'ZMQSocket $frontend, ZMQSocket $backend [, ZMQSocket $listener]', 'return_type': ''},
\     'getIdleTimeout': { 'signature': 'void | ZMQDevice', 'return_type': 'ZMQDevice'},
\     'getTimerTimeout': { 'signature': 'void | ZMQDevice', 'return_type': 'ZMQDevice'},
\     'run': { 'signature': 'void | void', 'return_type': 'void'},
\     'setIdleCallback': { 'signature': 'callable $cb_func, integer $timeout [, mixed $user_data] | ZMQDevice', 'return_type': 'ZMQDevice'},
\     'setIdleTimeout': { 'signature': 'integer $timeout | ZMQDevice', 'return_type': 'ZMQDevice'},
\     'setTimerCallback': { 'signature': 'callable $cb_func, integer $timeout [, mixed $user_data] | ZMQDevice', 'return_type': 'ZMQDevice'},
\     'setTimerTimeout': { 'signature': 'integer $timeout | ZMQDevice', 'return_type': 'ZMQDevice'},
\   },
\   'static_methods': {
\   },
\},
\'ZMQPoll': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'mixed $entry, integer $type | string', 'return_type': 'string'},
\     'clear': { 'signature': 'void | ZMQPoll', 'return_type': 'ZMQPoll'},
\     'count': { 'signature': 'void | integer', 'return_type': 'integer'},
\     'getLastErrors': { 'signature': 'void | array', 'return_type': 'array'},
\     'poll': { 'signature': 'array &$readable, array &$writable [, integer $timeout = -1] | integer', 'return_type': 'integer'},
\     'remove': { 'signature': 'mixed $item | boolean', 'return_type': 'boolean'},
\   },
\   'static_methods': {
\   },
\},
\'ZMQSocket': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'bind': { 'signature': 'string $dsn [, boolean $force = false] | ZMQSocket', 'return_type': 'ZMQSocket'},
\     'connect': { 'signature': 'string $dsn | ZMQSocket', 'return_type': 'ZMQSocket'},
\     '__construct': { 'signature': 'ZMQContext $context, int $type [, string $persistent_id = null [, callback $on_new_socket = null]]', 'return_type': ''},
\     'getEndpoints': { 'signature': 'void | array', 'return_type': 'array'},
\     'getPersistentId': { 'signature': 'void | string', 'return_type': 'string'},
\     'getSocketType': { 'signature': 'void | integer', 'return_type': 'integer'},
\     'getSockOpt': { 'signature': 'string $key | mixed', 'return_type': 'mixed'},
\     'isPersistent': { 'signature': 'void | boolean', 'return_type': 'boolean'},
\     'recv': { 'signature': '[ integer $mode = 0] | string', 'return_type': 'string'},
\     'recvMulti': { 'signature': '[ integer $mode = 0] | string', 'return_type': 'string'},
\     'send': { 'signature': 'array $message [, integer $mode = 0] | ZMQSocket', 'return_type': 'ZMQSocket'},
\     'setSockOpt': { 'signature': 'integer $key, mixed $value | ZMQSocket', 'return_type': 'ZMQSocket'},
\     'unbind': { 'signature': 'string $dsn | ZMQSocket', 'return_type': 'ZMQSocket'},
\   },
\   'static_methods': {
\   },
\},
\})

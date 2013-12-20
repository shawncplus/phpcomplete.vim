call extend(g:php_builtin_classes, {
\'mongo': {
\   'name': 'Mongo',
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
\     'killCursor': { 'signature': 'string $server_hash, int|MongoInt64 $id | bool', 'return_type': 'bool'},
\     'listDBs': { 'signature': 'void | array', 'return_type': 'array'},
\     'selectCollection': { 'signature': 'string $db, string $collection | MongoCollection', 'return_type': 'MongoCollection'},
\     'selectDB': { 'signature': 'string $name | MongoDB', 'return_type': 'MongoDB'},
\     'setReadPreference': { 'signature': 'string $read_preference [, array $tags] | bool', 'return_type': 'bool'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'getPoolSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'setPoolSize': { 'signature': 'int $size | bool', 'return_type': 'bool'},
\     'getConnections': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\},
\'mongobindata': {
\   'name': 'MongoBinData',
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
\'mongoclient': {
\   'name': 'MongoClient',
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
\     'killCursor': { 'signature': 'string $server_hash, int|MongoInt64 $id | bool', 'return_type': 'bool'},
\     'listDBs': { 'signature': 'void | array', 'return_type': 'array'},
\     'selectCollection': { 'signature': 'string $db, string $collection | MongoCollection', 'return_type': 'MongoCollection'},
\     'selectDB': { 'signature': 'string $name | MongoDB', 'return_type': 'MongoDB'},
\     'setReadPreference': { 'signature': 'string $read_preference [, array $tags] | bool', 'return_type': 'bool'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'getConnections': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\},
\'mongocode': {
\   'name': 'MongoCode',
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
\'mongocollection': {
\   'name': 'MongoCollection',
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
\     'createDBRef': { 'signature': 'mixed $document_or_id | array', 'return_type': 'array'},
\     'deleteIndex': { 'signature': 'string|array $keys | array', 'return_type': 'array'},
\     'deleteIndexes': { 'signature': 'void | array', 'return_type': 'array'},
\     'distinct': { 'signature': 'string $key [, array $query] | array', 'return_type': 'array'},
\     'drop': { 'signature': 'void | array', 'return_type': 'array'},
\     'ensureIndex': { 'signature': 'string|array $key|keys [, array $options = array()] | bool', 'return_type': 'bool'},
\     'find': { 'signature': '[ array $query = array() [, array $fields = array()]] | MongoCursor', 'return_type': 'MongoCursor'},
\     'findAndModify': { 'signature': 'array $query [, array $update [, array $fields [, array $options]]] | array', 'return_type': 'array'},
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
\'mongoconnectionexception': {
\   'name': 'MongoConnectionException',
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
\'mongocursor': {
\   'name': 'MongoCursor',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\     '$slaveOkay': { 'initializer': 'FALSE', 'type': 'boolean'},
\     '$timeout': { 'initializer': '30000', 'type': 'integer'},
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
\     'hint': { 'signature': 'mixed $index | MongoCursor', 'return_type': 'MongoCursor'},
\     'immortal': { 'signature': '[ bool $liveForever = true] | MongoCursor', 'return_type': 'MongoCursor'},
\     'info': { 'signature': 'void | array', 'return_type': 'array'},
\     'key': { 'signature': 'void | string', 'return_type': 'string'},
\     'limit': { 'signature': 'int $num | MongoCursor', 'return_type': 'MongoCursor'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'partial': { 'signature': '[ bool $okay = true] | MongoCursor', 'return_type': 'MongoCursor'},
\     'reset': { 'signature': 'void | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     'setFlag': { 'signature': 'int $flag [, bool $set = true] | MongoCursor', 'return_type': 'MongoCursor'},
\     'setReadPreference': { 'signature': 'string $read_preference [, array $tags] | MongoCursor', 'return_type': 'MongoCursor'},
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
\'mongocursorexception': {
\   'name': 'MongoCursorException',
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
\'mongocursortimeoutexception': {
\   'name': 'MongoCursorTimeoutException',
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
\'mongodate': {
\   'name': 'MongoDate',
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
\'mongodb': {
\   'name': 'MongoDB',
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
\     'createCollection': { 'signature': 'string $name [, array $options] | MongoCollection', 'return_type': 'MongoCollection'},
\     'createDBRef': { 'signature': 'string $collection, mixed $document_or_id | array', 'return_type': 'array'},
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
\'mongodbref': {
\   'name': 'MongoDBRef',
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
\'mongoexception': {
\   'name': 'MongoException',
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
\'mongogridfsexception': {
\   'name': 'MongoGridFSException',
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
\'mongogridfsfile': {
\   'name': 'MongoGridFSFile',
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
\'mongoid': {
\   'name': 'MongoId',
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
\'mongoint32': {
\   'name': 'MongoInt32',
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
\'mongoint64': {
\   'name': 'MongoInt64',
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
\'mongolog': {
\   'name': 'MongoLog',
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
\'mongomaxkey': {
\   'name': 'MongoMaxKey',
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
\'mongominkey': {
\   'name': 'MongoMinKey',
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
\'mongopool': {
\   'name': 'MongoPool',
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
\'mongoregex': {
\   'name': 'MongoRegex',
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
\'mongoresultexception': {
\   'name': 'MongoResultException',
\   'constants': {
\   },
\   'properties': {
\     'document': { 'initializer': '', 'type': ''},
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getDocument': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'mongotimestamp': {
\   'name': 'MongoTimestamp',
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
\})

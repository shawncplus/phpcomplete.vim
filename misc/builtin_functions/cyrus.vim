call extend(g:php_builtin_functions, {
\ 'cyrus_authenticate(': 'resource $connection [, string $mechlist [, string $service [, string $user [, int $minssf [, int $maxssf [, string $authname [, string $password]]]]]]] | void',
\ 'cyrus_bind(': 'resource $connection, array $callbacks | bool',
\ 'cyrus_close(': 'resource $connection | bool',
\ 'cyrus_connect(': '[ string $host [, string $port [, int $flags]]] | resource',
\ 'cyrus_query(': 'resource $connection, string $query | array',
\ 'cyrus_unbind(': 'resource $connection, string $trigger_name | bool',
\ })

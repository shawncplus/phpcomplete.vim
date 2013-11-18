call extend(g:php_builtin_functions, {
\ 'dio_close(': 'resource $fd | void',
\ 'dio_fcntl(': 'resource $fd, int $cmd [, mixed $args] | mixed',
\ 'dio_open(': 'string $filename, int $flags [, int $mode = 0] | resource',
\ 'dio_read(': 'resource $fd [, int $len = 1024] | string',
\ 'dio_seek(': 'resource $fd, int $pos [, int $whence = SEEK_SET] | int',
\ 'dio_stat(': 'resource $fd | array',
\ 'dio_tcsetattr(': 'resource $fd, array $options | bool',
\ 'dio_truncate(': 'resource $fd, int $offset | bool',
\ 'dio_write(': 'resource $fd, string $data [, int $len = 0] | int',
\ })

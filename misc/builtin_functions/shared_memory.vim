call extend(g:php_builtin_functions, {
\ 'shmop_close(': 'int $shmid | void',
\ 'shmop_delete(': 'int $shmid | bool',
\ 'shmop_open(': 'int $key, string $flags, int $mode, int $size | int',
\ 'shmop_read(': 'int $shmid, int $start, int $count | string',
\ 'shmop_size(': 'int $shmid | int',
\ 'shmop_write(': 'int $shmid, string $data, int $offset | int',
\ })

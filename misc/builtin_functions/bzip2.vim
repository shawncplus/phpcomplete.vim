call extend(g:php_builtin_functions, {
\ 'bzclose(': 'resource $bz | int',
\ 'bzcompress(': 'string $source [, int $blocksize = 4 [, int $workfactor = 0]] | mixed',
\ 'bzdecompress(': 'string $source [, int $small = 0] | mixed',
\ 'bzerrno(': 'resource $bz | int',
\ 'bzerror(': 'resource $bz | array',
\ 'bzerrstr(': 'resource $bz | string',
\ 'bzflush(': 'resource $bz | int',
\ 'bzopen(': 'string $filename, string $mode | resource',
\ 'bzread(': 'resource $bz [, int $length = 1024] | string',
\ 'bzwrite(': 'resource $bz, string $data [, int $length] | int',
\ })

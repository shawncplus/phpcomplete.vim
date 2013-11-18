call extend(g:php_builtin_functions, {
\ 'chdir(': 'string $directory | bool',
\ 'chroot(': 'string $directory | bool',
\ 'closedir(': '[ resource $dir_handle] | void',
\ 'dir(': 'string $directory [, resource $context] | Directory',
\ 'getcwd(': 'void | string',
\ 'opendir(': 'string $path [, resource $context] | resource',
\ 'readdir(': '[ resource $dir_handle] | string',
\ 'rewinddir(': '[ resource $dir_handle] | void',
\ 'scandir(': 'string $directory [, int $sorting_order = SCANDIR_SORT_ASCENDING [, resource $context]] | array',
\ })

call extend(g:php_builtin_functions, {
\ 'inotify_add_watch(': 'resource $inotify_instance, string $pathname, int $mask | int',
\ 'inotify_init(': 'void | resource',
\ 'inotify_queue_len(': 'resource $inotify_instance | int',
\ 'inotify_read(': 'resource $inotify_instance | array',
\ 'inotify_rm_watch(': 'resource $inotify_instance, int $watch_descriptor | bool',
\ })

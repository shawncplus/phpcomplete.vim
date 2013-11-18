call extend(g:php_builtin_functions, {
\ 'fam_cancel_monitor(': 'resource $fam, resource $fam_monitor | bool',
\ 'fam_close(': 'resource $fam | void',
\ 'fam_monitor_collection(': 'resource $fam, string $dirname, int $depth, string $mask | resource',
\ 'fam_monitor_directory(': 'resource $fam, string $dirname | resource',
\ 'fam_monitor_file(': 'resource $fam, string $filename | resource',
\ 'fam_next_event(': 'resource $fam | array',
\ 'fam_open(': '[ string $appname] | resource',
\ 'fam_pending(': 'resource $fam | int',
\ 'fam_resume_monitor(': 'resource $fam, resource $fam_monitor | bool',
\ 'fam_suspend_monitor(': 'resource $fam, resource $fam_monitor | bool',
\ })

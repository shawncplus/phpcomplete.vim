call extend(g:php_builtin_functions, {
\ 'escapeshellarg(': 'string $arg | string',
\ 'escapeshellcmd(': 'string $command | string',
\ 'exec(': 'string $command [, array &$output [, int &$return_var]] | string',
\ 'passthru(': 'string $command [, int &$return_var] | void',
\ 'proc_close(': 'resource $process | int',
\ 'proc_get_status(': 'resource $process | array',
\ 'proc_nice(': 'int $increment | bool',
\ 'proc_open(': 'string $cmd, array $descriptorspec, array &$pipes [, string $cwd [, array $env [, array $other_options]]] | resource',
\ 'proc_terminate(': 'resource $process [, int $signal = 15] | bool',
\ 'shell_exec(': 'string $cmd | string',
\ 'system(': 'string $command [, int &$return_var] | string',
\ })

call extend(g:php_builtin_functions, {
\ 'ereg_replace(': 'string $pattern, string $replacement, string $string | string',
\ 'ereg(': 'string $pattern, string $string [, array &$regs] | int',
\ 'eregi_replace(': 'string $pattern, string $replacement, string $string | string',
\ 'eregi(': 'string $pattern, string $string [, array &$regs] | int',
\ 'split(': 'string $pattern, string $string [, int $limit = -1] | array',
\ 'spliti(': 'string $pattern, string $string [, int $limit = -1] | array',
\ 'sql_regcase(': 'string $string | string',
\ })

call extend(g:php_builtin_functions, {
\ 'preg_filter(': 'mixed $pattern, mixed $replacement, mixed $subject [, int $limit = -1 [, int &$count]] | mixed',
\ 'preg_grep(': 'string $pattern, array $input [, int $flags = 0] | array',
\ 'preg_last_error(': 'void | int',
\ 'preg_match_all(': 'string $pattern, string $subject [, array &$matches [, int $flags = PREG_PATTERN_ORDER [, int $offset = 0]]] | int',
\ 'preg_match(': 'string $pattern, string $subject [, array &$matches [, int $flags = 0 [, int $offset = 0]]] | int',
\ 'preg_quote(': 'string $str [, string $delimiter = NULL] | string',
\ 'preg_replace_callback(': 'mixed $pattern, callable $callback, mixed $subject [, int $limit = -1 [, int &$count]] | mixed',
\ 'preg_replace(': 'mixed $pattern, mixed $replacement, mixed $subject [, int $limit = -1 [, int &$count]] | mixed',
\ 'preg_split(': 'string $pattern, string $subject [, int $limit = -1 [, int $flags = 0]] | array',
\ })

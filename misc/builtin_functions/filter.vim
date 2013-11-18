call extend(g:php_builtin_functions, {
\ 'filter_has_var(': 'int $type, string $variable_name | bool',
\ 'filter_id(': 'string $filtername | int',
\ 'filter_input_array(': 'int $type [, mixed $definition [, bool $add_empty = true]] | mixed',
\ 'filter_input(': 'int $type, string $variable_name [, int $filter = FILTER_DEFAULT [, mixed $options]] | mixed',
\ 'filter_list(': 'void | array',
\ 'filter_var_array(': 'array $data [, mixed $definition [, bool $add_empty = true]] | mixed',
\ 'filter_var(': 'mixed $variable [, int $filter = FILTER_DEFAULT [, mixed $options]] | mixed',
\ })

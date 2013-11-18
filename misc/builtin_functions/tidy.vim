call extend(g:php_builtin_functions, {
\ 'ob_tidyhandler(': 'string $input [, int $mode] | string',
\ 'tidy_access_count(': 'tidy $object | int',
\ 'tidy_config_count(': 'tidy $object | int',
\ 'tidy_error_count(': 'tidy $object | int',
\ 'tidy_get_output(': 'tidy $object | string',
\ 'tidy_load_config(': 'string $filename, string $encoding | void',
\ 'tidy_reset_config(': 'void | bool',
\ 'tidy_save_config(': 'string $filename | bool',
\ 'tidy_set_encoding(': 'string $encoding | bool',
\ 'tidy_setopt(': 'string $option, mixed $value | bool',
\ 'tidy_warning_count(': 'tidy $object | int',
\ })

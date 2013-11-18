call extend(g:php_builtin_functions, {
\ 'bbcode_add_element(': 'resource $bbcode_container, string $tag_name, array $tag_rules | bool',
\ 'bbcode_add_smiley(': 'resource $bbcode_container, string $smiley, string $replace_by | bool',
\ 'bbcode_create(': '[ array $bbcode_initial_tags = NULL] | resource',
\ 'bbcode_destroy(': 'resource $bbcode_container | bool',
\ 'bbcode_parse(': 'resource $bbcode_container, string $to_parse | string',
\ 'bbcode_set_arg_parser(': 'resource $bbcode_container, resource $bbcode_arg_parser | bool',
\ 'bbcode_set_flags(': 'resource $bbcode_container, int $flags [, int $mode = BBCODE_SET_FLAGS_SET] | bool',
\ })

call extend(g:php_builtin_functions, {
\ 'aggregate_info(': 'object $object | array',
\ 'aggregate_methods_by_list(': 'object $object, string $class_name, array $methods_list [, bool $exclude = false] | void',
\ 'aggregate_methods_by_regexp(': 'object $object, string $class_name, string $regexp [, bool $exclude = false] | void',
\ 'aggregate_methods(': 'object $object, string $class_name | void',
\ 'aggregate_properties_by_list(': 'object $object, string $class_name, array $properties_list [, bool $exclude = false] | void',
\ 'aggregate_properties_by_regexp(': 'object $object, string $class_name, string $regexp [, bool $exclude = false] | void',
\ 'aggregate_properties(': 'object $object, string $class_name | void',
\ 'aggregate(': 'object $object, string $class_name | void',
\ 'aggregation_info(': 'aggregation_info — Alias of aggregate_info()',
\ 'deaggregate(': 'object $object [, string $class_name] | void',
\ })

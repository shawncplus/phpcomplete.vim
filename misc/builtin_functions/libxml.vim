call extend(g:php_builtin_functions, {
\ 'libxml_clear_errors(': 'void | void',
\ 'libxml_disable_entity_loader(': '[ bool $disable = true] | bool',
\ 'libxml_get_errors(': 'void | array',
\ 'libxml_get_last_error(': 'void | LibXMLError',
\ 'libxml_set_external_entity_loader(': 'callable $resolver_function | void',
\ 'libxml_set_streams_context(': 'resource $streams_context | void',
\ 'libxml_use_internal_errors(': '[ bool $use_errors = false] | bool',
\ })

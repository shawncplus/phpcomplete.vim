call extend(g:php_builtin_functions, {
\ 'finfo_buffer(': 'resource $finfo [, string $string = NULL [, int $options = FILEINFO_NONE [, resource $context = NULL]]] | string',
\ 'finfo_close(': 'resource $finfo | bool',
\ 'finfo_file(': 'resource $finfo [, string $file_name = NULL [, int $options = FILEINFO_NONE [, resource $context = NULL]]] | string',
\ 'finfo_open(': '[ int $options = FILEINFO_NONE [, string $magic_file = NULL]] | resource',
\ 'finfo_set_flags(': 'resource $finfo, int $options | bool',
\ 'mime_content_type(': 'string $filename | string',
\ })

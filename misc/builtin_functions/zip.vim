call extend(g:php_builtin_functions, {
\ 'zip_close(': 'resource $zip | void',
\ 'zip_entry_close(': 'resource $zip_entry | bool',
\ 'zip_entry_compressedsize(': 'resource $zip_entry | int',
\ 'zip_entry_compressionmethod(': 'resource $zip_entry | string',
\ 'zip_entry_filesize(': 'resource $zip_entry | int',
\ 'zip_entry_name(': 'resource $zip_entry | string',
\ 'zip_entry_open(': 'resource $zip, resource $zip_entry [, string $mode] | bool',
\ 'zip_entry_read(': 'resource $zip_entry [, int $length = 1024] | string',
\ 'zip_open(': 'string $filename | resource',
\ 'zip_read(': 'resource $zip | resource',
\ })

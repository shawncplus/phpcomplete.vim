call extend(g:php_builtin_functions, {
\ 'exif_imagetype(': 'string $filename | int',
\ 'exif_read_data(': 'string $filename [, string $sections = NULL [, bool $arrays = false [, bool $thumbnail = false]]] | array',
\ 'exif_tagname(': 'int $index | string',
\ 'exif_thumbnail(': 'string $filename [, int &$width [, int &$height [, int &$imagetype]]] | string',
\ 'read_exif_data(': 'read_exif_data — Alias of exif_read_data()',
\ })

call extend(g:php_builtin_functions, {
\ 'id3_get_frame_long_name(': 'string $frameId | string',
\ 'id3_get_frame_short_name(': 'string $frameId | string',
\ 'id3_get_genre_id(': 'string $genre | int',
\ 'id3_get_genre_list(': 'void | array',
\ 'id3_get_genre_name(': 'int $genre_id | string',
\ 'id3_get_tag(': 'string $filename [, int $version = ID3_BEST] | array',
\ 'id3_get_version(': 'string $filename | int',
\ 'id3_remove_tag(': 'string $filename [, int $version = ID3_V1_0] | bool',
\ 'id3_set_tag(': 'string $filename, array $tag [, int $version = ID3_V1_0] | bool',
\ })

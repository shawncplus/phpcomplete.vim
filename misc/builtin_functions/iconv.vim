call extend(g:php_builtin_functions, {
\ 'iconv_get_encoding(': '[ string $type = "all"] | mixed',
\ 'iconv_mime_decode_headers(': 'string $encoded_headers [, int $mode = 0 [, string $charset = ini_get("iconv.internal_encoding")]] | array',
\ 'iconv_mime_decode(': 'string $encoded_header [, int $mode = 0 [, string $charset = ini_get("iconv.internal_encoding")]] | string',
\ 'iconv_mime_encode(': 'string $field_name, string $field_value [, array $preferences = NULL] | string',
\ 'iconv_set_encoding(': 'string $type, string $charset | bool',
\ 'iconv_strlen(': 'string $str [, string $charset = ini_get("iconv.internal_encoding")] | int',
\ 'iconv_strpos(': 'string $haystack, string $needle [, int $offset = 0 [, string $charset = ini_get("iconv.internal_encoding")]] | int',
\ 'iconv_strrpos(': 'string $haystack, string $needle [, string $charset = ini_get("iconv.internal_encoding")] | int',
\ 'iconv_substr(': 'string $str, int $offset [, int $length = iconv_strlen($str, $charset) [, string $charset = ini_get("iconv.internal_encoding")]] | string',
\ 'iconv(': 'string $in_charset, string $out_charset, string $str | string',
\ 'ob_iconv_handler(': 'string $contents, int $status | string',
\ })

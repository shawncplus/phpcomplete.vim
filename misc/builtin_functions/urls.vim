call extend(g:php_builtin_functions, {
\ 'base64_decode(': 'string $data [, bool $strict = false] | string',
\ 'base64_encode(': 'string $data | string',
\ 'get_headers(': 'string $url [, int $format = 0] | array',
\ 'get_meta_tags(': 'string $filename [, bool $use_include_path = false] | array',
\ 'http_build_query(': 'mixed $query_data [, string $numeric_prefix [, string $arg_separator [, int $enc_type = PHP_QUERY_RFC1738]]] | string',
\ 'parse_url(': 'string $url [, int $component = -1] | mixed',
\ 'rawurldecode(': 'string $str | string',
\ 'rawurlencode(': 'string $str | string',
\ 'urldecode(': 'string $str | string',
\ 'urlencode(': 'string $str | string',
\ })

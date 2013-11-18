call extend(g:php_builtin_functions, {
\ 'bind_textdomain_codeset(': 'string $domain, string $codeset | string',
\ 'bindtextdomain(': 'string $domain, string $directory | string',
\ 'dcgettext(': 'string $domain, string $message, int $category | string',
\ 'dcngettext(': 'string $domain, string $msgid1, string $msgid2, int $n, int $category | string',
\ 'dgettext(': 'string $domain, string $message | string',
\ 'dngettext(': 'string $domain, string $msgid1, string $msgid2, int $n | string',
\ 'gettext(': 'string $message | string',
\ 'ngettext(': 'string $msgid1, string $msgid2, int $n | string',
\ 'textdomain(': 'string $text_domain | string',
\ })

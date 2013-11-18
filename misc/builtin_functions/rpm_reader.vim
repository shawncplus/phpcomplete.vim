call extend(g:php_builtin_functions, {
\ 'rpm_close(': 'resource $rpmr | bool',
\ 'rpm_get_tag(': 'resource $rpmr, int $tagnum | mixed',
\ 'rpm_is_valid(': 'string $filename | bool',
\ 'rpm_open(': 'string $filename | resource',
\ 'rpm_version(': 'void | string',
\ })

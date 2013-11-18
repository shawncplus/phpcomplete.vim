call extend(g:php_builtin_functions, {
\ 'kadm5_chpass_principal(': 'resource $handle, string $principal, string $password | bool',
\ 'kadm5_create_principal(': 'resource $handle, string $principal [, string $password [, array $options]] | bool',
\ 'kadm5_delete_principal(': 'resource $handle, string $principal | bool',
\ 'kadm5_destroy(': 'resource $handle | bool',
\ 'kadm5_flush(': 'resource $handle | bool',
\ 'kadm5_get_policies(': 'resource $handle | array',
\ 'kadm5_get_principal(': 'resource $handle, string $principal | array',
\ 'kadm5_get_principals(': 'resource $handle | array',
\ 'kadm5_init_with_password(': 'string $admin_server, string $realm, string $principal, string $password | resource',
\ 'kadm5_modify_principal(': 'resource $handle, string $principal, array $options | bool',
\ })

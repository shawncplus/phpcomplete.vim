call extend(g:php_builtin_functions, {
\ 'classkit_import(': 'string $filename | array',
\ 'classkit_method_add(': 'string $classname, string $methodname, string $args, string $code [, int $flags = CLASSKIT_ACC_PUBLIC] | bool',
\ 'classkit_method_copy(': 'string $dClass, string $dMethod, string $sClass [, string $sMethod] | bool',
\ 'classkit_method_redefine(': 'string $classname, string $methodname, string $args, string $code [, int $flags = CLASSKIT_ACC_PUBLIC] | bool',
\ 'classkit_method_remove(': 'string $classname, string $methodname | bool',
\ 'classkit_method_rename(': 'string $classname, string $methodname, string $newname | bool',
\ })

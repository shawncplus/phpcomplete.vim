fun! SetUp()
    " disable builtin information
    let g:php_builtin_classnames = {}
    let g:php_builtin_classes = {}
    " disable tag files
    exe ':set tags='
endf

fun! TestCase_return_VIMPHP_BUILTINOBJECT_when_classname_in_builtin_classes()
    call SetUp()

    let g:php_builtin_classnames = {'DateTime': ''}
    let g:php_builtin_classes = {
                \'datetime':{}
                \}
    let res = phpcomplete#GetClassLocation('DateTime', '')
    call VUAssertEquals('VIMPHP_BUILTINOBJECT', res)

    let res = phpcomplete#GetClassLocation('DateTime', '\')
    call VUAssertEquals('VIMPHP_BUILTINOBJECT', res)
endf

fun! TestCase_return_current_file_path_when_classname_found_in_previous_lines_of_current_buffer()
    call SetUp()

    let path = expand('%:p:h').'/'.'fixtures/GetClassLocation/foo.class.php'
    below 1new
    exe ":silent! edit ".path
    exe ':6'

    let res = phpcomplete#GetClassLocation('Foo', '')
    call VUAssertEquals(path, res)

    silent! bw! %
endf

fun! TestCase_return_class_location_from_tags()
    call SetUp()
    exe ':set tags='.expand('%:p:h').'/'.'fixtures/GetClassLocation/tags'

    let path = expand('%:p:h').'/'.'fixtures/GetClassLocation/empty.php'
    below 1new
    exe ":silent! edit ".path
    exe ':3'

    let res = phpcomplete#GetClassLocation('Foo', '')
    call VUAssertEquals('fixtures/GetClassLocation/foo.class.php', res)

    let res = phpcomplete#GetClassLocation('FooInterface', '')
    call VUAssertEquals('fixtures/GetClassLocation/foo.class.php', res)

    silent! bw! %
endf

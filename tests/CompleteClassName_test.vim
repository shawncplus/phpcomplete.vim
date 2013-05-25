fun! TestCase_complete_classes_from_current_file()
    " disable builtin information
    let g:php_builtin_classes = { }
    " disable tag files
    exe ':set tags='

    let path =  expand('%:p:h')."/".'fixtures/CompleteClassName/foo.class.php'
    below 1new
    exe ":edit ".path

    let res = phpcomplete#CompleteClassName('')
    call VUAssertEquals([
                \ {'word': 'BarClass', 'menu': '', 'kind': 'c'},
                \ {'word': 'FooClass', 'menu': '', 'kind': 'c'}],
                \ res)
    bw! %
endf

fun! TestCase_complete_classes_from_tags()
    " set tags to a fixture
    exe ':set tags='.expand('%:p:h').'/'.'fixtures/CompleteClassName/TAGS'

    " disable builtin information
    let g:php_builtin_classes = { }

    " open an empty file so no 'local' class will be picked up
    let path =  expand('%:p:h')."/".'fixtures/CompleteClassName/empty.php'
    below 1new
    exe ":edit ".path


    let res = phpcomplete#CompleteClassName('')
    call VUAssertEquals([
                \ {'word': 'TagClass', 'menu': '', 'kind': 'c'}],
                \ res)
    bw! %
endf

fun! TestCase_complete_classes_from_built_in_classes()
    " disable tags
    exe ':set tags='

    " open an empty file so no 'local' class will be picked up
    let path =  expand('%:p:h')."/".'fixtures/CompleteClassName/empty.php'
    below 1new
    exe ":edit ".path

    " set up example built-in list
    let g:php_builtin_classes = {
    \'DateTime': {
    \   'methods': {
    \   },
    \ },
    \}

    let res = phpcomplete#CompleteClassName('')
    call VUAssertEquals([
                \ {'word': 'Datetime', 'menu': '', 'kind': 'c'}],
                \ res)
    bw! %
endf

fun! TestCase_adds_arguments_of_constructors_for_built_in_classes()
    " disable tags
    exe ':set tags='

    " open an empty file so no 'local' class will be picked up
    let path =  expand('%:p:h')."/".'fixtures/CompleteClassName/empty.php'
    below 1new
    exe ":edit ".path

    " set up example built-in list
    let g:php_builtin_classes = {
    \'DateTime': {
    \   'methods': {
    \     '__construct': { 'signature': '[ string $time = "now" [, DateTimeZone $timezone = NULL]]', 'return_type': ''},
    \   },
    \ },
    \}

    let res = phpcomplete#CompleteClassName('')
    call VUAssertEquals([
                \ {'word': 'Datetime', 'menu': '[ string $time = "now" [, DateTimeZone $timezone = NULL]]', 'kind': 'c'}],
                \ res)
    bw! %
endf

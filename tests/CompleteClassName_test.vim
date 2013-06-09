fun! SetUp()
    let g:phpcomplete_min_num_of_chars_for_namespace_completion = 1
    " disable builtin information
    let g:php_builtin_classes = { }
    " disable tag files
    exe ':set tags='
endf

fun! TestCase_complete_classes_from_current_file()
    call SetUp()

    let path =  expand('%:p:h')."/".'fixtures/CompleteClassName/foo.class.php'
    below 1new
    exe ":edit ".path

    let res = phpcomplete#CompleteClassName('', '\')
    call VUAssertEquals([
                \ {'word': 'BarClass', 'kind': 'c'},
                \ {'word': 'FooClass', 'kind': 'c'}],
                \ res)
    bw! %
endf

fun! TestCase_complete_classes_from_tags()
    call SetUp()

    " set tags to a fixture
    exe ':set tags='.expand('%:p:h').'/'.'fixtures/CompleteClassName/tags'

    " open an empty file so no 'local' class will be picked up
    let path = expand('%:p:h')."/".'fixtures/CompleteClassName/empty.php'
    below 1new
    exe ":edit ".path


    let res = phpcomplete#CompleteClassName('T', '\')
    call VUAssertEquals([
                \ {'word': 'TagClass', 'menu': 'fixtures/CompleteClassName/tagclass.php', 'info': 'fixtures/CompleteClassName/tagclass.php', 'kind': 'c'}],
                \ res)
    bw! %
endf

fun! TestCase_complete_classes_from_built_in_classes()
    call SetUp()

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

    let res = phpcomplete#CompleteClassName('', '\')
    call VUAssertEquals([
                \ {'word': 'Datetime', 'menu': '', 'kind': 'c'}],
                \ res)

    " user typed \ and hits <c-x><c-o> in a file starting with "namespace NS1;"
    let res = phpcomplete#CompleteClassName('\', 'NS1')
    call VUAssertEquals([
                \ {'word': '\Datetime', 'menu': '', 'kind': 'c'}],
                \ res)
    bw! %
endf

fun! TestCase_adds_arguments_of_constructors_for_built_in_classes()
    call SetUp()

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

    let res = phpcomplete#CompleteClassName('', '\')
    call VUAssertEquals([
                \ {'word': 'Datetime', 'menu': '[ string $time = "now" [, DateTimeZone $timezone = NULL]]', 'kind': 'c'}],
                \ res)
    bw! %
endf

fun! TestCase_filters_class_names_with_the_namespaces_typed_in_base()
    call SetUp()

    " set tags to a fixture
    exe ':set tags='.expand('%:p:h').'/'.'fixtures/CompleteClassName/tags'

    let res = phpcomplete#CompleteClassName('NS1\N', '\')
    call VUAssertEquals([
                \ {'word': 'NS1\NameSpacedFoo', 'menu': 'fixtures/CompleteClassName/namespaced.foo.php', 'info': 'fixtures/CompleteClassName/namespaced.foo.php', 'kind': 'c'}],
                \ res)
endf

fun! TestCase_filters_class_names_with_the_current_namespace_but_doesnt_add_the_current_namespace()
    call SetUp()

    " set tags to a fixture
    exe ':set tags='.expand('%:p:h').'/'.'fixtures/CompleteClassName/tags'

    let res = phpcomplete#CompleteClassName('N', 'NS1')
    call VUAssertEquals([
                \ {'word': 'NameSpacedFoo', 'menu': 'fixtures/CompleteClassName/namespaced.foo.php', 'info': 'fixtures/CompleteClassName/namespaced.foo.php', 'kind': 'c'}],
                \ res)
endf

fun! TestCase_removes_current_namespace_from_the_base_is_the_same_of_the_returned_completion()
    call SetUp()

    " set tags to a fixture
    exe ':set tags='.expand('%:p:h').'/'.'fixtures/CompleteClassName/tags'

    let res = phpcomplete#CompleteClassName('\NS1\N', 'NS1')
    call VUAssertEquals([
                \ {'word': 'NameSpacedFoo', 'menu': 'fixtures/CompleteClassName/namespaced.foo.php', 'info': 'fixtures/CompleteClassName/namespaced.foo.php', 'kind': 'c'}],
                \ res)
endf

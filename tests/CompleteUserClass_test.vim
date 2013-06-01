fun! SetUp()
    let g:fixture_class_content = readfile(expand('%:p:h').'/'.'fixtures/CompleteUserClass/user.class.php')[2:]
    let g:phpcomplete_relax_static_constraint = 0
endf

fun! TestCase_returns_everyting_instance_related_when_scope_is_in_class()
    call SetUp()

    let ret = phpcomplete#CompleteUserClass('$u->', '', g:fixture_class_content, '\\(public\\|private\\|protected\\)')
    call VUAssertEquals([
                \{'word': 'A_CONST', 'info': 'A_CONST', 'menu': '', 'kind': 'd'},
                \{'word': '__construct(', 'info': '__construct()', 'menu': ')', 'kind': 'f'},
                \{'word': 'private_method(', 'info': 'private_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \{'word': 'private_property', 'info': ' ', 'menu': ' ', 'kind': 'v'},
                \{'word': 'protected_method(', 'info': 'protected_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \{'word': 'protected_property', 'info': ' ', 'menu': ' ', 'kind': 'v'},
                \{'word': 'public_method(', 'info': 'public_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \{'word': 'public_property1', 'info': ' ', 'menu': ' ', 'kind': 'v'},
                \{'word': 'public_property2', 'info': ' ', 'menu': ' ', 'kind': 'v'}],
                \ ret)
endfun

fun! TestCase_returns_everyting_instance_related_when_scope_is_out_of_class()
    call SetUp()

    let ret = phpcomplete#CompleteUserClass('$u->', '', g:fixture_class_content, 'public')
    call VUAssertEquals([
                \{'word': 'A_CONST', 'info': 'A_CONST', 'menu': '', 'kind': 'd'},
                \{'word': '__construct(', 'info': '__construct()', 'menu': ')', 'kind': 'f'},
                \{'word': 'public_method(', 'info': 'public_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \{'word': 'public_property1', 'info': ' ', 'menu': ' ', 'kind': 'v'},
                \{'word': 'public_property2', 'info': ' ', 'menu': ' ', 'kind': 'v'}],
                \ ret)
endfun

fun! TestCase_returns_everyting_static_when_scope_is_in_class()
    call SetUp()

    let ret = phpcomplete#CompleteUserClass('UserClass::', '', g:fixture_class_content, '\\(public\\|private\\|protected\\)')
    call VUAssertEquals([
                \ {'word': 'A_CONST', 'info': 'A_CONST', 'menu': '', 'kind': 'd'},
                \ {'word': 'private_static_method(', 'info': 'private_static_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': '$private_static_property', 'info': ' ', 'menu': ' ', 'kind': 'v'},
                \ {'word': 'protected_static_method(', 'info': 'protected_static_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': '$protected_static_property', 'info': ' ', 'menu': ' ', 'kind': 'v'},
                \ {'word': 'public_static_method(', 'info': 'public_static_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': '$public_static_property', 'info': ' ', 'menu': ' ', 'kind': 'v'},
                \ {'word': 'static_public_method(', 'info': 'static_public_method($foo)', 'menu': '$foo)', 'kind': 'f'}],
                \ ret)
endfun

fun! TestCase_returns_everyting_static_when_scope_is_out_of_class()
    call SetUp()

    let ret = phpcomplete#CompleteUserClass('UserClass::', '', g:fixture_class_content, 'public')
    call VUAssertEquals([
                \ {'word': 'A_CONST', 'info': 'A_CONST', 'menu': '', 'kind': 'd'},
                \ {'word': 'public_static_method(', 'info': 'public_static_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': '$public_static_property', 'info': ' ', 'menu': ' ', 'kind': 'v'},
                \ {'word': 'static_public_method(', 'info': 'static_public_method($foo)', 'menu': '$foo)', 'kind': 'f'}],
                \ ret)
endfun

fun! TestCase_returns_non_explicit_static_methods_when_phpcomplete_relax_static_constraint_enabled()
    call SetUp()
    let g:phpcomplete_relax_static_constraint = 1
    let ret = phpcomplete#CompleteUserClass('UserClass::', '', g:fixture_class_content, 'public')
    call VUAssertEquals([
                \ {'word': 'A_CONST', 'info': 'A_CONST', 'menu': '', 'kind': 'd'},
                \ {'word': '__construct(', 'info': '__construct()', 'menu': ')', 'kind': 'f'},
                \ {'word': 'public_method(', 'info': 'public_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': 'public_static_method(', 'info': 'public_static_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': '$public_static_property', 'info': ' ', 'menu': ' ', 'kind': 'v'},
                \ {'word': 'static_public_method(', 'info': 'static_public_method($foo)', 'menu': '$foo)', 'kind': 'f'}],
                \ ret)
endfun

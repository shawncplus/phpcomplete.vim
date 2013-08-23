fun! SetUp()
    let g:fixture_class_content = readfile(expand('%:p:h').'/'.'fixtures/CompleteUserClass/user_extended.class.php')[2:]
    let g:commented_fixture_class_content = readfile(expand('%:p:h').'/'.'fixtures/CompleteUserClass/commented_foo.class.php')[2:]
    let g:phpcomplete_relax_static_constraint = 0
    let g:phpcomplete_parse_docblock_comments = 0
endf

fun! TestCase_returns_everyting_instance_related_when_scope_is_in_class()
    call SetUp()

    let ret = phpcomplete#CompleteUserClass('$u->', '', g:fixture_class_content, '\\(public\\|private\\|protected\\)')
    call VUAssertEquals([
                \{'word': 'A_CONST', 'info': 'A_CONST', 'menu': '', 'kind': 'd'},
                \{'word': '__construct(', 'info': '__construct()', 'menu': ')', 'kind': 'f'},
                \{'word': 'final_private_method(', 'info': 'final_private_method($foo = null)', 'menu': '$foo = null)', 'kind': 'f'},
                \{'word': 'private_method(', 'info': 'private_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \{'word': 'private_property', 'info': '', 'menu': '', 'kind': 'v'},
                \{'word': 'protected_method(', 'info': 'protected_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \{'word': 'protected_property', 'info': '', 'menu': '', 'kind': 'v'},
                \{'word': 'public_final_method(', 'info': 'public_final_method($foo, $anotherfoo = '''')', 'menu': '$foo, $anotherfoo = '''')', 'kind': 'f'},
                \{'word': 'public_method(', 'info': 'public_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \{'word': 'public_method_with_amp(', 'info': 'public_method_with_amp($foo)', 'menu': '$foo)', 'kind': 'f'},
                \{'word': 'public_property1', 'info': '', 'menu': '', 'kind': 'v'},
                \{'word': 'public_property2', 'info': '', 'menu': '', 'kind': 'v'}],
                \ ret)
endfun

fun! TestCase_returns_everyting_instance_related_when_scope_is_out_of_class()
    call SetUp()

    let ret = phpcomplete#CompleteUserClass('$u->', '', g:fixture_class_content, 'public')
    call VUAssertEquals([
                \{'word': 'A_CONST', 'info': 'A_CONST', 'menu': '', 'kind': 'd'},
                \{'word': '__construct(', 'info': '__construct()', 'menu': ')', 'kind': 'f'},
                \{'word': 'public_final_method(', 'info': 'public_final_method($foo, $anotherfoo = '''')', 'menu': '$foo, $anotherfoo = '''')', 'kind': 'f'},
                \{'word': 'public_method(', 'info': 'public_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \{'word': 'public_method_with_amp(', 'info': 'public_method_with_amp($foo)', 'menu': '$foo)', 'kind': 'f'},
                \{'word': 'public_property1', 'info': '', 'menu': '', 'kind': 'v'},
                \{'word': 'public_property2', 'info': '', 'menu': '', 'kind': 'v'}],
                \ ret)
endfun

fun! TestCase_returns_everyting_static_when_scope_is_in_class()
    call SetUp()

    let ret = phpcomplete#CompleteUserClass('UserClass::', '', g:fixture_class_content, '\\(public\\|private\\|protected\\)')
    call VUAssertEquals([
                \ {'word': '$private_static_property', 'info': '', 'menu': '', 'kind': 'v'},
                \ {'word': '$protected_static_property', 'info': '', 'menu': '', 'kind': 'v'},
                \ {'word': '$public_static_property', 'info': '', 'menu': '', 'kind': 'v'},
                \ {'word': 'A_CONST', 'info': 'A_CONST', 'menu': '', 'kind': 'd'},
                \ {'word': 'final_static_public_method(', 'info': 'final_static_public_method()', 'menu': ')', 'kind': 'f'},
                \ {'word': 'private_static_method(', 'info': 'private_static_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': 'protected_static_method(', 'info': 'protected_static_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': 'public_final_static_method(', 'info': 'public_final_static_method( $foo, $anotherfoo = array() )', 'menu': ' $foo, $anotherfoo = array() )', 'kind': 'f'},
                \ {'word': 'public_static_method(', 'info': 'public_static_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': 'static_final_protected_method(', 'info': 'static_final_protected_method()', 'menu': ')', 'kind': 'f'},
                \ {'word': 'static_public_method(', 'info': 'static_public_method($foo)', 'menu': '$foo)', 'kind': 'f'}],
                \ ret)
endfun

fun! TestCase_filters_for_instane_level_prefix()
    call SetUp()

    let ret = phpcomplete#CompleteUserClass('$u->', 'public_', g:fixture_class_content, '\\(public\\|private\\|protected\\)')
    call VUAssertEquals([
                \ {'word': 'public_final_method(', 'info': 'public_final_method($foo, $anotherfoo = '''')', 'menu': '$foo, $anotherfoo = '''')', 'kind': 'f'},
                \ {'word': 'public_method(', 'info': 'public_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': 'public_method_with_amp(', 'info': 'public_method_with_amp($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': 'public_property1', 'info': '', 'menu': '', 'kind': 'v'},
                \ {'word': 'public_property2', 'info': '', 'menu': '', 'kind': 'v'}],
                \ ret)
endfun

fun! TestCase_filters_for_static_property_names()
    call SetUp()

    let ret = phpcomplete#CompleteUserClass('UserClass::', '$private_', g:fixture_class_content, '\\(public\\|private\\|protected\\)')
    call VUAssertEquals([
                \ {'word': '$private_static_property', 'info': '', 'menu': '', 'kind': 'v'}],
                \ ret)
endfun

fun! TestCase_returns_everyting_static_when_scope_is_out_of_class()
    call SetUp()

    let ret = phpcomplete#CompleteUserClass('UserClass::', '', g:fixture_class_content, 'public')
    call VUAssertEquals([
                \ {'word': '$public_static_property', 'info': '', 'menu': '', 'kind': 'v'},
                \ {'word': 'A_CONST', 'info': 'A_CONST', 'menu': '', 'kind': 'd'},
                \ {'word': 'final_static_public_method(', 'info': 'final_static_public_method()', 'menu': ')', 'kind': 'f'},
                \ {'word': 'public_final_static_method(', 'info': 'public_final_static_method( $foo, $anotherfoo = array() )', 'menu': ' $foo, $anotherfoo = array() )', 'kind': 'f'},
                \ {'word': 'public_static_method(', 'info': 'public_static_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': 'static_public_method(', 'info': 'static_public_method($foo)', 'menu': '$foo)', 'kind': 'f'}],
                \ ret)
endfun

fun! TestCase_returns_non_explicit_static_methods_when_phpcomplete_relax_static_constraint_enabled()
    call SetUp()
    let g:phpcomplete_relax_static_constraint = 1
    let ret = phpcomplete#CompleteUserClass('UserClass::', '', g:fixture_class_content, 'public')
    call VUAssertEquals([
                \ {'word': '$public_static_property', 'info': '', 'menu': '', 'kind': 'v'},
                \ {'word': 'A_CONST', 'info': 'A_CONST', 'menu': '', 'kind': 'd'},
                \ {'word': '__construct(', 'info': '__construct()', 'menu': ')', 'kind': 'f'},
                \ {'word': 'final_static_public_method(', 'info': 'final_static_public_method()', 'menu': ')', 'kind': 'f'},
                \ {'word': 'public_final_method(', 'info': 'public_final_method($foo, $anotherfoo = '''')', 'menu': '$foo, $anotherfoo = '''')', 'kind': 'f'},
                \ {'word': 'public_final_static_method(', 'info': 'public_final_static_method( $foo, $anotherfoo = array() )', 'menu': ' $foo, $anotherfoo = array() )', 'kind': 'f'},
                \ {'word': 'public_method(', 'info': 'public_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': 'public_method_with_amp(', 'info': 'public_method_with_amp($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': 'public_static_method(', 'info': 'public_static_method($foo)', 'menu': '$foo)', 'kind': 'f'},
                \ {'word': 'static_public_method(', 'info': 'static_public_method($foo)', 'menu': '$foo)', 'kind': 'f'}],
                \ ret)
endfun

fun! TestCase_returns_types_for_properties_and_return_types_from_docblock_comments()
    call SetUp()
    let g:phpcomplete_parse_docblock_comments = 1

    let ret = phpcomplete#CompleteUserClass('$u->', 'commented', g:commented_fixture_class_content, 'public')
    call VUAssertEquals([
                \ {'word': 'commented_method(', 'info': "commented_method($foo, $bar, $baz = '')\n\nReturn:\n\tstring: description of return\n", 'menu': "$foo, $bar, $baz = '') | string", 'kind': 'f'},
                \ {'word': 'commented_property', 'info': "Type:\n\tFoo\n", 'menu': 'Foo', 'kind': 'v'}],
                \ ret)
endfun

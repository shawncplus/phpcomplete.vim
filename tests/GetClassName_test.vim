fun! TestCase_extract_class_from_the_same_file_when_line_referes_to_this()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo.class.php"
    below 1new
    exe ":edit ".path
    exe ':6'

    let classname = phpcomplete#GetClassName('$this->')
    call VUAssertEquals('FooClass', classname)

    exe ':7'
    let classname = phpcomplete#GetClassName('self::')
    call VUAssertEquals('FooClass', classname)

    bw! %

    " detection should work with extra whitespace
    " around keywords or uppercase keywords
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_with_whitespace.class.php"
    below 1new
    exe ":edit ".path
    exe ':10'

    let classname = phpcomplete#GetClassName('$this->')
    call VUAssertEquals('FooClass', classname)

    exe ':11'
    let classname = phpcomplete#GetClassName('self::')
    call VUAssertEquals('FooClass', classname)

    bw! %
endf

fun! TestCase_returns_empty_when_sees_curlyclose_on_line_start()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_outside.class.php"
    below 1new
    exe ":edit ".path
    exe ':6'

    let classname = phpcomplete#GetClassName('$this->')
    call VUAssertEquals('', classname)

    exe ':7'
    let classname = phpcomplete#GetClassName('self::')
    call VUAssertEquals('', classname)

    bw! %
endf

fun! TestCase_finds_abstract_classes()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_abstract.class.php"
    below 1new
    exe ":edit ".path
    exe ':6'

    let classname = phpcomplete#GetClassName('$this->')
    call VUAssertEquals('FooAbstract', classname)

    exe ':7'
    let classname = phpcomplete#GetClassName('self::')
    call VUAssertEquals('FooAbstract', classname)

    bw! %

    " detection should work with extra whitespace
    " around keywords or uppercase keywords
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_abstract_with_whitespace.class.php"
    below 1new
    exe ":edit ".path
    exe ':10'

    let classname = phpcomplete#GetClassName('$this->')
    call VUAssertEquals('FooAbstract', classname)

    exe ':11'
    let classname = phpcomplete#GetClassName('self::')
    call VUAssertEquals('FooAbstract', classname)

    bw! %
endf

fun! TestCase_finds_brackeded_new_keyword_instantiations_from_php5_4()
    let classname = phpcomplete#GetClassName('(new FooClass)->')
    call VUAssertEquals('FooClass', classname)
endf

fun! TestCase_finds_variables_marked_with_AT_VAR_comments()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/var_comment_mark.php"
    below 1new
    exe ":edit ".path
    exe ':3'

    let classname = phpcomplete#GetClassName('$bar->')
    call VUAssertEquals('FooClass', classname)

    exe ':7'
    let classname = phpcomplete#GetClassName('$bar2->')
    call VUAssertEquals('FooClass', classname)

    bw! %
endf

fun! TestCase_finds_classes_from_variable_equals_new_class_lines()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_equals_new_foo.php"
    below 1new
    exe ":edit ".path
    exe ':4'

    let classname = phpcomplete#GetClassName('$foo->')
    call VUAssertEquals('FooClass', classname)

    bw! %
endf

fun! TestCase_finds_common_singleton_getInstance_calls()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/singleton_getinstance.php"
    below 1new
    exe ":edit ".path
    exe ':4'

    let classname = phpcomplete#GetClassName('$foo->')
    call VUAssertEquals('FooClass', classname)

    bw! %
endf

fun! TestCase_returns_return_type_of_built_in_objects_static_methods()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/builtin_static_return_type.php"
    below 1new
    exe ":edit ".path
    exe ':4'

    call phpcomplete#LoadData()
    let classname = phpcomplete#GetClassName('$d->')
    call VUAssertEquals('DateTime', classname)

    bw! %
endf

fun! TestCase_returns_class_from_static_method_call()
    let classname = phpcomplete#GetClassName('FooClass::')
    call VUAssertEquals('FooClass', classname)
endf

fun! TestCase_returns_class_from_tags_with_tag_of_v_kind_and_a_new_equals_class_cmd()
    " see TAGS file in the tests/ directory
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_only_from_tags.php"
    below 1new
    exe ":edit ".path
    exe ':3'

    let classname = phpcomplete#GetClassName('$foo_only_in_tags->')
    call VUAssertEquals('FooClass', classname)

    " TODO
    " exe ':5'
    " let classname = phpcomplete#GetClassName('$foo_only_in_tags::')
    " call VUAssertEquals('FooClass', classname)
    bw! %
endf

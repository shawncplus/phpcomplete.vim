fun! TestCase_removes_leading_slash()
    let [classname, namespace] = phpcomplete#ExpandClassName('\ArrayObject', '\')
    call VUAssertEquals('ArrayObject', classname)

    let [classname, namespace] = phpcomplete#ExpandClassName('ArrayObject', '\Mahou')
    call VUAssertEquals('ArrayObject', classname)
    call VUAssertEquals('Mahou', namespace)
endf

fun! TestCase_appends_relative_namespace_parts_from_classname_to_current_namespace()
    let [classname, namespace] = phpcomplete#ExpandClassName('Baz\Foo', 'Bor\Bar')
    call VUAssertEquals('Foo', classname)
    call VUAssertEquals('Bor\Bar\Baz', namespace)
endf

fun! TestCase_extracts_namespace_from_classname_when_its_prefixed_with_absolute_namespace()
    let [classname, namespace] = phpcomplete#ExpandClassName('\Bar\Baz\Foo', 'Mahou')
    call VUAssertEquals('Foo', classname)
    call VUAssertEquals('Bar\Baz', namespace)
endf

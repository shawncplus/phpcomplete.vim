fun! SetUp()
    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassContents/tags'
    let g:php_builtin_classes = {}

endf
fun! TestCase_reads_in_the_class_from_the_list_of_lines()
    call SetUp()

    let location =  expand('%:p:h')."/".'fixtures/GetClassContents/foo.class.php'
    let contents = phpcomplete#GetClassContents(location, 'FooClass')
    let expected = join(readfile(location)[1:], "\n")
    call VUAssertEquals(expected, contents)

    let location =  expand('%:p:h')."/".'fixtures/GetClassContents/foo_whitespace.class.php'
    let contents = phpcomplete#GetClassContents(location, 'FooClass')
    let expected = join(readfile(location)[4:9], "\n")
    call VUAssertEquals(expected, contents)

    let location =  expand('%:p:h')."/".'fixtures/GetClassContents/foo.interface.php'
    let contents = phpcomplete#GetClassContents(location, 'FooInterface')
    let expected = join(readfile(location)[1:], "\n")
    call VUAssertEquals(expected, contents)
endf

fun! TestCase_only_reads_in_the_class_content()
    call SetUp()

    let location =  expand('%:p:h')."/".'fixtures/GetClassContents/foo_with_extra_content.class.php'
    let contents = phpcomplete#GetClassContents(location, 'FooClass')
    let expected = join(readfile(location)[5:8], "\n")
    call VUAssertEquals(expected, contents)
endf

fun! TestCase_reads_in_the_extended_class_content()
    call SetUp()

    " tags used to find the extended classes
    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassContents/tags'
    let location         =  expand('%:p:h')."/".'fixtures/GetClassContents/extends/foo_extends_bar.class.php'
    let extends_location =  expand('%:p:h')."/".'fixtures/GetClassContents/extends/bar.class.php'

    let contents = phpcomplete#GetClassContents(location, 'FooClass')

    let expected = readfile(location)[2]."\n".readfile(extends_location)[2]
    call VULog(expected)

    call VUAssertEquals(expected, contents)
endf

fun! TestCase_reads_in_the_extended_classes_recursive()
    call SetUp()

    " tags used to find the extended classes
    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassContents/tags'
    let location                 =  expand('%:p:h')."/".'fixtures/GetClassContents/extends_extends/foo2_extends_bar2.class.php'
    let extends_location         =  expand('%:p:h')."/".'fixtures/GetClassContents/extends_extends/bar2_extends_baz.class.php'
    let extends_extends_location =  expand('%:p:h')."/".'fixtures/GetClassContents/extends_extends/baz.class.php'

    let expected  = readfile(location)[2]."\n"
    let expected .= readfile(extends_location)[2]."\n"
    let expected .= readfile(extends_extends_location)[2]
    call VULog(expected)

    let contents = phpcomplete#GetClassContents(location, 'FooClass2')
    call VUAssertEquals(expected, contents)
endf

fun! TestCase_reads_in_the_extended_classes_recursive_with_namespaces()
    call SetUp()

    " tags used to find the extended classes
    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassContents/tags'
    let location         =  expand('%:p:h')."/".'fixtures/GetClassContents/ns1_foo2.php'
    let extends_location =  expand('%:p:h')."/".'fixtures/GetClassContents/ns2_foo.php'

    let expected  = readfile(location)[3]."\n"
    let expected .= readfile(extends_location)[3]
    call VULog(expected)

    let contents = phpcomplete#GetClassContents(location, 'NamespacedFoo2')
    call VUAssertEquals(expected, contents)
endf

fun! TestCase_reads_in_the_extended_classes_with_imports()
    call SetUp()

    " tags used to find the extended classes
    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassContents/import/tags'
    let g:php_builtin_classes = {}
    let location         =  expand('%:p:h')."/".'fixtures/GetClassContents/import/ns1_foo2.php'
    let extends_location =  expand('%:p:h')."/".'fixtures/GetClassContents/import/ns2_foo.php'

    let expected  = readfile(location)[4]."\n"
    let expected .= readfile(extends_location)[3]
    call VULog(expected)

    let contents = phpcomplete#GetClassContents(location, 'NamespacedFoo2')
    call VUAssertEquals(expected, contents)
endf

fun! TestCase_handles_matching_class_name_extends_with_different_namespaces()
    call SetUp()

    " tags used to find the extended classes
    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassContents/same_classname/tags'
    let location         =  expand('%:p:h')."/".'fixtures/GetClassContents/same_classname/foo.class.php'
    let extends_location =  expand('%:p:h')."/".'fixtures/GetClassContents/same_classname/ns1_foo.class.php'

    let class_contents = readfile(location)[2:10]
    let expected  = join(class_contents, "\n")."\n"
    let expected .= readfile(extends_location)[4]

    below 1new
    exe ":silent! edit ".location

    exe ':7'
    let structure = phpcomplete#GetClassContentsStructure(location, class_contents, 'Foo')
    call VUAssertEquals(expected, structure[0].content."\n".structure[1].content)

    silent! bw! %
endf

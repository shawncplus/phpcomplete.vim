fun! TestCase_returns_slash_when_no_namespace_found()
    let namespace = phpcomplete#GetCurrentNameSpace([])
    call VUAssertEquals('\', namespace)
endf

fun! TestCase_returns_namespace_from_file_lines()
    let file_lines = readfile(expand('%:p:h').'/'.'fixtures/GetCurrentNameSpace/single_namespace.php')
    let namespace = phpcomplete#GetCurrentNameSpace(file_lines)
    call VUAssertEquals('Mahou', namespace)
endf

fun! TestCase_returns_closest_namespace_from_the_current_line()
    let file_lines = readfile(expand('%:p:h').'/'.'fixtures/GetCurrentNameSpace/multiple_namespace.php')
    let namespace = phpcomplete#GetCurrentNameSpace(file_lines)
    call VUAssertEquals('FindMe', namespace)
endf

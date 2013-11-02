fun! TestCase_returns_last_variable_related_part_of_the_context()
    let res = phpcomplete#GetSubContext('$bar->bar')
    call VUAssertEquals('$bar->', res, "should throw away the last segment")

    let res = phpcomplete#GetSubContext("$this->foo = $bar\n-> ")
    call VUAssertEquals('$bar->', res, "should ignore newlines and trim whitespace of the start/end")

    let res = phpcomplete#GetSubContext('$this->foo = $bar->bar')
    call VUAssertEquals('$bar->', res, "should stop at '=' signs")

    let res = phpcomplete#GetSubContext('$foo, $bar, $baz, $bar->')
    call VUAssertEquals('$bar->', res, "should stop at ',' -s")
endf

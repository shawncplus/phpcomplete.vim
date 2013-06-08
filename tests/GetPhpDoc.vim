fun! SetUp()
    let g:fixture_class_content = readfile(expand('%:p:h').'/'.'fixtures/DocBlock/foo.class.php')[2:]
    let g:phpcomplete_relax_static_constraint = 0
endf

fun! TestCase_returns_empty_string_when_no_comment_block_found()
    call SetUp()

    let ret = phpcomplete#GetPhpDoc(g:fixture_class_content, 'function\<not_commented\>')
    call VUAssertEquals('', ret)

    let ret = phpcomplete#GetPhpDoc(g:fixture_class_content, '    public $nocomment;')
    call VUAssertEquals('', ret)
endf

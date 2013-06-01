fun! SetUp()
    " disable built-in functions
    let g:php_builtin_classnames = {}
    " disable built-in functions
    let g:php_builtin_functions = {}
    " disable built-in constants
    let g:php_constants = {}
    " disable php keywords
    let g:php_keywords = {}
    " disable tags
    exe ':set tags='
endf

fun! TestCase_completes_functions_from_local_file()
    call SetUp()
    " load fixture with methods and functions in it
    let path =  expand('%:p:h').'/'.'fixtures/CompleteGeneral/functions.php'
    below 1new
    exe ":edit ".path

    let res = phpcomplete#CompleteGeneral('common_')

    call VUAssertEquals([
                \ {'word': 'common_plain_old_function('               , 'info': 'common_plain_old_function()'                          , 'menu': ')',          'kind': 'f'},
                \ {'word': 'common_plain_old_function_with_arguments(', 'info': "common_plain_old_function_with_arguments($a, $b='')"  , 'menu': "$a, $b='')", 'kind': 'f'},
                \ {'word': 'common_private_method('                   , 'info': 'common_private_method($foo)'                          , 'menu': '$foo)',      'kind': 'f'},
                \ {'word': 'common_private_static_method('            , 'info': 'common_private_static_method($foo)'                   , 'menu': '$foo)',      'kind': 'f'},
                \ {'word': 'common_protected_method('                 , 'info': 'common_protected_method($foo)'                        , 'menu': '$foo)',      'kind': 'f'},
                \ {'word': 'common_protected_static_method('          , 'info': 'common_protected_static_method($foo)'                 , 'menu': '$foo)',      'kind': 'f'},
                \ {'word': 'common_public_method('                    , 'info': 'common_public_method($foo)'                           , 'menu': '$foo)',      'kind': 'f'},
                \ {'word': 'common_public_static_method('             , 'info': 'common_public_static_method($foo)'                    , 'menu': '$foo)',      'kind': 'f'},
                \ {'word': 'common_static_public_method('             , 'info': 'common_static_public_method($foo)'                    , 'menu': '$foo)',      'kind': 'f'}],
                \ res)
    bw! %
endf

fun! TestCase_completes_functions_classes_constants_from_tags()
    call SetUp()
    exe ':set tags='.expand('%:p:h').'/'.'fixtures/CompleteGeneral/tags'
    let res = phpcomplete#CompleteGeneral('common_')

    call VUAssertEquals([
                \ {'word': 'COMMON_FOO', 'kind': 'd'},
                \ {'word': 'common_plain_old_function(',                'info': 'common_plain_old_function() - fixtures/CompleteGeneral/foo.php',                         'menu': ') - fixtures/CompleteGeneral/foo.php',          'kind': 'f'},
                \ {'word': 'common_plain_old_function_with_arguments(', 'info': "common_plain_old_function_with_arguments($a, $b='') - fixtures/CompleteGeneral/foo.php", 'menu': "$a, $b='') - fixtures/CompleteGeneral/foo.php", 'kind': 'f'},
                \ {'word': 'common_private_method(',          'info': 'common_private_method($foo) - fixtures/CompleteGeneral/foo.php',          'menu': '$foo) - fixtures/CompleteGeneral/foo.php', 'kind': 'f'} ,
                \ {'word': 'common_private_static_method(',   'info': 'common_private_static_method($foo) - fixtures/CompleteGeneral/foo.php',   'menu': '$foo) - fixtures/CompleteGeneral/foo.php', 'kind': 'f'} ,
                \ {'word': 'common_protected_method(',        'info': 'common_protected_method($foo) - fixtures/CompleteGeneral/foo.php',        'menu': '$foo) - fixtures/CompleteGeneral/foo.php', 'kind': 'f'} ,
                \ {'word': 'common_protected_static_method(', 'info': 'common_protected_static_method($foo) - fixtures/CompleteGeneral/foo.php', 'menu': '$foo) - fixtures/CompleteGeneral/foo.php', 'kind': 'f'} ,
                \ {'word': 'common_public_method(',           'info': 'common_public_method($foo) - fixtures/CompleteGeneral/foo.php',           'menu': '$foo) - fixtures/CompleteGeneral/foo.php', 'kind': 'f'} ,
                \ {'word': 'common_public_static_method(',    'info': 'common_public_static_method($foo) - fixtures/CompleteGeneral/foo.php',    'menu': '$foo) - fixtures/CompleteGeneral/foo.php', 'kind': 'f'} ,
                \ {'word': 'common_static_public_method(',    'info': 'common_static_public_method($foo) - fixtures/CompleteGeneral/foo.php',    'menu': '$foo) - fixtures/CompleteGeneral/foo.php', 'kind': 'f'}],
                \ res)
endf

fun! TestCase_completes_builtin_functions()
    call SetUp()

    " the filter_* one should not be picked up
    let g:php_builtin_functions = {
                \ 'array_flip(': 'array $trans | array',
                \ 'array_product(': 'array $array | number',
                \ 'filter_var(': 'mixed $variable [, int $filter = FILTER_DEFAULT [, mixed $options]] | mixed',
                \ }

    let res = phpcomplete#CompleteGeneral('array_')
    call VUAssertEquals([
                \ {'word': 'array_flip(',    'info': 'array_flip(array $trans | array',     'menu': 'array $trans | array',  'kind': 'f'},
                \ {'word': 'array_product(', 'info': 'array_product(array $array | number', 'menu': 'array $array | number', 'kind': 'f'}],
                \ res)
endf

fun! TestCase_completes_constants_from_local_file()
    call SetUp()
    " load fixture with methods and functions in it
    let path =  expand('%:p:h').'/'.'fixtures/CompleteGeneral/constants.php'
    below 1new
    exe ":edit ".path

    let res = phpcomplete#CompleteGeneral('find')

    call VUAssertEquals([
                \ {'word': 'FINDME_FOO', 'kind': 'd'}],
                \ res)
    bw! %
endf

fun! TestCase_completes_builtin_constants()
    call SetUp()

    " the FILE_* ones should not be picked up
    let g:php_constants = {
                \ 'FILE_TEXT': '',
                \ 'FILE_USE_INCLUDE_PATH': '',
                \ 'FILTER_CALLBACK': '',
                \ 'FILTER_DEFAULT': 'some info',
                \ }

    " TODO make info picked up
    let res = phpcomplete#CompleteGeneral('FILTER_')
    call VUAssertEquals([
                \ {'word': 'FILTER_CALLBACK', 'kind': 'd'},
                \ {'word': 'FILTER_DEFAULT', 'kind': 'd'}],
                \ res)
endf

fun! TestCase_completes_builtin_keywords()
    call SetUp()

    " the FILE_* ones should not be picked up
    let g:php_keywords = {
                \ 'argv':'',
                \ 'argc':'',
                \ 'and':'',
                \ }

    let res = phpcomplete#CompleteGeneral('a')
    call VUAssertEquals([
                \ {'word': 'and',  'kind': 'd'},
                \ {'word': 'argc', 'kind': 'd'},
                \ {'word': 'argv', 'kind': 'd'}],
                \ res)
endf

fun! TestCase_completes_builtin_class_names()
    call SetUp()

    " PDO should not be picked up
    let g:php_builtin_classnames = {
                \ 'DateTime':'',
                \ 'PDO':'',
                \ }

    let res = phpcomplete#CompleteGeneral('date')
    " TODO: add kind: 'c' for the output
    call VUAssertEquals([
                \ {'word': 'DateTime'}],
                \ res)
endf

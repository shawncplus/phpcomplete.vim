" Vim completion plugin
" Language:	PHP
" Maintainer:	Szabó Dávid ( complex857 AT gmail DOT com )
"
"	OPTIONS:
"		let g:phpcomplete_enhance_jump_to_definition = 1/0  [default 1]
"			When enabled the <C-]> and <C-W><C-]> will be mapped to
"			phpcomplete#JumpToDefinition() which will try to make a more
"			educated guess of the current symbol's location than simple
"			tag search. If the symbol's location cannot be found the
"			original <C-]> or <C-W><C-]> functionality will be invoked

let s:save_cpo = &cpo
set cpo&vim

let g:phpcomplete_enhance_jump_to_definition = get(g:, 'phpcomplete_enhance_jump_to_definition', 1)

if g:phpcomplete_enhance_jump_to_definition
	if '' == mapcheck("<C-]>")
		nnoremap <silent> <unique> <buffer> <C-]> :<C-u>call phpcomplete#JumpToDefinition('normal')<CR>
	endif
	if '' == mapcheck("<C-W><C-]>")
		nnoremap <silent> <unique> <buffer> <C-W><C-]> :<C-u>call phpcomplete#JumpToDefinition('split')<CR>
	endif
endif

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: foldmethod=marker:noexpandtab:ts=4:sts=4

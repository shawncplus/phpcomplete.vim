" Vim completion plugin
" Language:	PHP
" Maintainer:	Szabó Dávid ( complex857 AT gmail DOT com )
"
"	OPTIONS:
"		let g:phpcomplete_enhance_jump_to_definition = 1/0  [default 1]
"			When enabled the <C-]> will be mapped to phpcomplete#JumpToDefinition()
"			which will try to make a more educated guess of the current
"			symbol's location than simple tag search. If the symbol's location
"			cannot be found the original <C-]> functionality will be invoked

let s:save_cpo = &cpo
set cpo&vim

if exists('g:loaded_phpcomplete')
	finish
endif
let g:loaded_phpcomplete = 1


let g:phpcomplete_enhance_jump_to_definition = get(g:, 'phpcomplete_enhance_jump_to_definition', 1)


augroup phpcomplete
	au!
	if g:phpcomplete_enhance_jump_to_definition
		autocmd FileType php silent! nnoremap <silent> <unique> <C-]> :<C-u>call phpcomplete#JumpToDefinition()<CR>
	endif
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo

" vim: foldmethod=marker:noexpandtab:ts=4:sts=4

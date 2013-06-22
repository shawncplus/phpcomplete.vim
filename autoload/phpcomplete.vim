" Vim completion script
" Language:	PHP
" Maintainer:	Mikolaj Machowski ( mikmach AT wp DOT pl )
" Maintainer:	Shawn Biddle ( shawn AT shawnbiddle DOT com )
"
"	OPTIONS:
"
"		let g:phpcomplete_relax_static_constraint = 1/0  [default 0]
"			Enables completion for non-static methods when completing for static context (::).
"			This generates E_STRICT level warning, but php calls these methods nontheless.
"
"		let g:phpcomplete_complete_for_unknown_classes = 1/0 [default 1]
"			Enables completion of variables and functions in "everything under the sun" fassion
"			when completing for an instance or static class context but the code can't tell the class
"			or locate the file that it lives in.
"			The completion list generated this way is only filtered by the completion base
"			and generally not much more accurate then simple keyword completion.
"
"		let g:phpcomplete_min_num_of_chars_for_namespace_completion = n [default 1]
"			This option controls the number of characters the user needs to type before
"			the tags will be searched for namespaces and classes in typed out namespaces in
"			"use ..." context. Setting this to 0 is not recommended because that means the code
"			have to scan every tag, and vim's taglist() function runs extremly slow with a
"			"match everything" pattern.
"
"		let g:phpcomplete_parse_docblock_comments = 1/0 [default 0]
"			When enabled the preview window's content will include information
"			extracted from docblock comments of the completions.
"			Enabling this option will add return types to the completion menu for functions too.
"
"	TODO:
"	- Switching to HTML (XML?) completion (SQL) inside of phpStrings
"	- allow also for XML completion <- better do html_flavor for HTML
"	  completion
"	- outside of <?php?> getting parent tag may cause problems. Heh, even in
"	  perfect conditions GetLastOpenTag doesn't cooperate... Inside of
"	  phpStrings this can be even a bonus but outside of <?php?> it is not the
"	  best situation

if !exists('g:phpcomplete_relax_static_constraint')
	let g:phpcomplete_relax_static_constraint = 0
endif

if !exists('g:phpcomplete_complete_for_unknown_classes')
	let g:phpcomplete_complete_for_unknown_classes = 1
endif

if !exists('g:phpcomplete_min_num_of_chars_for_namespace_completion')
	let g:phpcomplete_min_num_of_chars_for_namespace_completion = 1
endif

if !exists('g:phpcomplete_parse_docblock_comments')
	let g:phpcomplete_parse_docblock_comments = 0
endif

function! phpcomplete#CompletePHP(findstart, base) " {{{
	if a:findstart
		unlet! b:php_menu
		" Check if we are inside of PHP markup
		let pos = getpos('.')
		let phpbegin = searchpairpos('<?', '', '?>', 'bWn',
				\ 'synIDattr(synID(line("."), col("."), 0), "name") =~? "string\|comment"')
		let phpend   = searchpairpos('<?', '', '?>', 'Wn',
				\ 'synIDattr(synID(line("."), col("."), 0), "name") =~? "string\|comment"')

		if phpbegin == [0,0] && phpend == [0,0]
			" We are outside of any PHP markup. Complete HTML
			let htmlbegin = htmlcomplete#CompleteTags(1, '')
			let cursor_col = pos[2]
			let base = getline('.')[htmlbegin : cursor_col]
			let b:php_menu = htmlcomplete#CompleteTags(0, base)
			return htmlbegin
		else
			" locate the start of the word
			let line = getline('.')
			let start = col('.') - 1
			let curline = line('.')
			let compl_begin = col('.') - 2
			while start >= 0 && line[start - 1] =~ '[\\a-zA-Z_0-9\x7f-\xff$]'
				let start -= 1
			endwhile
			let b:compl_context = getline('.')[0:compl_begin]
			return start

			" We can be also inside of phpString with HTML tags. Deal with
			" it later (time, not lines).
		endif

	endif
	" If exists b:php_menu it means completion was already constructed we
	" don't need to do anything more
	if exists("b:php_menu")
		return b:php_menu
	endif

	if !exists('g:php_builtin_functions')
		call phpcomplete#LoadData()
	endif

	" a:base is very short - we need context
	if exists("b:compl_context")
		let context = b:compl_context
		unlet! b:compl_context
	endif

	let scontext = substitute(context, '\$\?[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*$', '', '')
	let [current_namespace, imports] = phpcomplete#GetCurrentNameSpace(getline(0, line('.')))

	if context =~? '^\s*use\s\+'
		return phpcomplete#CompleteUse(a:base)
	endif

	if scontext =~? '\(\s*new\|extends\)\s\+'
		return phpcomplete#CompleteClassName(a:base, current_namespace, imports)
	elseif scontext =~ '\(->\|::\)$'
		" {{{
		" Get name of the class
		let classname = phpcomplete#GetClassName(scontext, imports)

		" Get location of class definition, we have to iterate through all
		if classname != ''
			let [classname, namespace] = phpcomplete#ExpandClassName(classname, current_namespace, imports)
			let classlocation = phpcomplete#GetClassLocation(classname, namespace)
		else
			let classlocation = ''
		endif

		if classlocation != ''
			if classlocation == 'VIMPHP_BUILTINOBJECT' && has_key(g:php_builtin_classes, classname)
				return phpcomplete#CompleteBuiltInClass(scontext, classname, a:base)
			endif

			if filereadable(classlocation)
				let classfile = readfile(classlocation)
				let classcontent = ''
				let classcontent .= "\n".phpcomplete#GetClassContents(classfile, classname)
				let sccontent = split(classcontent, "\n")
				let classAccess = expand('%:p') == fnamemodify(classlocation, ':p') ? '\\(public\\|private\\|protected\\)' : 'public'

				return phpcomplete#CompleteUserClass(scontext, a:base, sccontent, classAccess)
			endif
		endif

		return phpcomplete#CompleteUnknownClass(a:base, scontext)
		" }}}
	endif

	if a:base =~ '^\$'
		return phpcomplete#CompleteVariable(a:base)
	else
		return phpcomplete#CompleteGeneral(a:base, current_namespace, imports)
	endif
endfunction
" }}}

function! phpcomplete#CompleteUse(base) " {{{
	" completes builtin class names regadless of g:phpcomplete_min_num_of_chars_for_namespace_completion
	" completes namespaces from tags
	"   * requires patched ctags
	" completes classnames from tags within the already typed out namespace using the "namespace" field of tags
	"   * requires patched ctags

	let res = []

	" class and namespace names are always considered absoltute in use ... expressions, leading slash is not recommended
	" by the php manual, so we gonna get rid of that
	if a:base =~? '^\'
		let base = substitute(a:base, '^\', '', '')
	else
		let base = a:base
	endif

	let namespace_match_pattern  = substitute(base, '\\', '\\\\', 'g')
	let classname_match_pattern = matchstr(base, '[^\\]\+$')
	let namespace_for_class = substitute(substitute(namespace_match_pattern, '\\\\', '\\', 'g'), '\\*'.classname_match_pattern.'$', '', '')

	if len(namespace_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion
		if len(classname_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion
			let tags = taglist('^\('.namespace_match_pattern.'\|'.classname_match_pattern.'\)')
		else
			let tags = taglist('^'.namespace_match_pattern)
		endif

		for tag in tags
			if tag.kind ==? 'n' && tag.name =~? '^'.namespace_match_pattern
				call add(res, {'word': tag.name, 'kind': 'n', 'menu': tag.filename, 'info': tag.filename })
			elseif has_key(tag, 'namespace') && tag.kind ==? 'c' && tag.namespace ==? namespace_for_class
				call add(res, {'word': namespace_for_class.'\'.tag.name, 'kind': 'c', 'menu': tag.filename, 'info': tag.filename })
			endif
		endfor
	endif

	if base !~ '\'
		let builtin_classnames = filter(keys(copy(g:php_builtin_classnames)), 'v:val =~? "^'.classname_match_pattern.'"')
		for classname in builtin_classnames
			call add(res, {'word': classname, 'kind': 'c'})
		endfor
	endif

	return res
endfunction
" }}}

function! phpcomplete#CompleteGeneral(base, current_namespace, imports) " {{{
	" Complete everything else -
	"  + functions,  DONE
	"  + keywords of language DONE
	"  + defines (constant definitions), DONE
	"  + extend keywords for predefined constants, DONE
	"  + classes (after new), DONE
	"  + limit choice after -> and :: to funcs and vars DONE

	" Internal solution for finding functions in current file.

	if a:base =~? '^\'
		let leading_slash = '\'
	else
		let leading_slash = ''
	endif

	let file = getline(1, '$')
	call filter(file,
				\ 'v:val =~ "function\\s\\+&\\?[a-zA-Z_\\x7f-\\xff][a-zA-Z_0-9\\x7f-\\xff]*\\s*("')
	let jfile = join(file, ' ')
	let int_values = split(jfile, 'function\s\+')
	let int_functions = {}
	for i in int_values
		let f_name = matchstr(i,
					\ '^&\?\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
		if f_name =~? '^'.substitute(a:base, '\\', '\\\\', 'g')
			let f_args = matchstr(i,
						\ '^&\?[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*(\zs.\{-}\ze)\_s*\({\|$\)')
			let int_functions[f_name.'('] = f_args.')'
		endif
	endfor

	" Internal solution for finding constants in current file
	let file = getline(1, '$')
	call filter(file, 'v:val =~ "define\\s*("')
	let jfile = join(file, ' ')
	let int_values = split(jfile, 'define\s*(\s*')
	let int_constants = {}
	for i in int_values
		let c_name = matchstr(i, '\(["'']\)\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze\1')
		if c_name != '' && c_name =~ '^'.substitute(a:base, '\\', '\\\\', 'g')
			let int_constants[leading_slash.c_name] = '' " c_value
		endif
	endfor

	" Prepare list of functions from tags file
	let ext_functions  = {}
	let ext_constants  = {}
	let ext_classes    = {}
	let ext_namespaces = {}

	let base = substitute(a:base, '^\\', '', '')
	let [tag_match_pattern, namespace_for_tag] = phpcomplete#ExpandClassName(a:base, a:current_namespace, a:imports)
	let namespace_match_pattern  = substitute((namespace_for_tag == '' ? '' : namespace_for_tag.'\').tag_match_pattern, '\\', '\\\\', 'g')

	let tags = []
	if len(namespace_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion && len(tag_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion && tag_match_pattern != namespace_match_pattern
		let tags = taglist('^\('.tag_match_pattern.'\|'.namespace_match_pattern.'\)')
	elseif len(namespace_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion
		let tags = taglist('^'.namespace_match_pattern)
	elseif len(tag_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion
		let tags = taglist('^'.tag_match_pattern)
	endif

	for tag in tags
		if !has_key(tag, 'namespace') || tag.namespace ==? a:current_namespace || tag.namespace ==? namespace_for_tag
			if has_key(tag, 'namespace')
				let full_name = tag.namespace.'\'.tag.name " absolute namespaced name (without leading '\')

				let base_parts = split(a:base, '\')
				if len(base_parts) > 1
					let namespace_part = join(base_parts[0:-2], '\')
				else
					let namespace_part = ''
				endif
				let relative_name = (namespace_part == '' ? '' : namespace_part.'\').tag.name
			endif

			if tag.kind ==? 'n' && tag.name =~? '^'.namespace_match_pattern
				let info = tag.name.' - '.tag.filename
				" patched ctag provides absolute namespace names as tag name, namespace tags dont have namespace fields
				let full_name = tag.name

				let base_parts = split(a:base, '\')
				let full_name_parts = split(full_name, '\')
				if len(base_parts) > 1
					" the first segment could be a renamed import, take the first segment from the user provided input
					" so if it's a sub namespace of a renamed namespace, just use the typed in segments in place of the absolute path
					" for example:
					"     you have a namespace NS1\SUBNS as SUB
					"     you have a sub-sub-namespace NS1\SUBNS\SUBSUB
					"     typed in SUB\SU
					"     the tags will return NS1\SUBNS\SUBSUB
					"     the completion should be: SUB\SUBSUB by replacing the NS1\SUBSN to SUB as in the import
					if has_key(a:imports, base_parts[0]) && a:imports[base_parts[0]].kind == 'n'
						let import = a:imports[base_parts[0]]
						let relative_name = substitute(full_name, '^'.substitute(import.name, '\\', '\\\\', 'g'), base_parts[0], '')
					else
						let relative_name = strpart(full_name, stridx(full_name, a:base))
					endif
				else
					let relative_name = strpart(full_name, stridx(full_name, a:base))
				endif

				if leading_slash == ''
					let ext_namespaces[relative_name.'\'] = info
				else
					let ext_namespaces['\'.full_name.'\'] = info
				endif
			elseif tag.kind ==? 'f' && !has_key(tag, 'class') " class related functions (methods) completed elsewhere, only works with patched ctags
				if has_key(tag, 'signature')
					let prototype = tag.signature[1:-2] " drop the ()s around the string
				else
					let prototype = matchstr(tag.cmd,
								\ 'function\s\+&\?[^[:space:]]\+\s*(\s*\zs.\{-}\ze\s*)\s*{\?')
				endif
				let info = prototype.') - '.tag.filename

				if !has_key(tag, 'namespace')
					let ext_functions[tag.name.'('] = info
				else
					if tag.namespace ==? namespace_for_tag
						if leading_slash == ''
							let ext_functions[relative_name.'('] = info
						else
							let ext_functions['\'.full_name.'('] = info
						endif
					endif
				endif
			elseif tag.kind ==? 'd'
				let info = ' - '.tag.filename
				if !has_key(tag, 'namespace')
					let ext_constants[tag.name] = info
				else
					if tag.namespace ==? namespace_for_tag
						if leading_slash == ''
							let ext_constants[relative_name] = info
						else
							let ext_constants['\'.full_name] = info
						endif
					endif
				endif
			elseif tag.kind ==? 'c'
				let info = ' - '.tag.filename
				if !has_key(tag, 'namespace')
					let ext_classes[tag.name] = info
				else
					if tag.namespace ==? namespace_for_tag
						if leading_slash == ''
							let ext_classes[relative_name] = info
						else
							let ext_classes['\'.full_name] = info
						endif
					endif
				endif
			endif
		endif
	endfor

	let builtin_constants  = {}
	let builtin_classnames = {}
	let builtin_functions  = {}
	let builtin_keywords   = {}
	if a:current_namespace == '\' || (a:base =~ '^\\' && a:base =~ '^\\[^\\]*$')
		let base = substitute(a:base, '^\', '', '')

		" Prepare list of constants from built-in constants
		for [constant, info] in items(g:php_constants)
			if constant =~# '^'.base
				let builtin_constants[leading_slash.constant] = info
			endif
		endfor

		if leading_slash == '' " keywords should not be completed when base starts with '\'
			" Treat keywords as constants
			for [constant, info] in items(g:php_keywords)
				if constant =~? '^'.a:base
					let builtin_keywords[constant] = info
				endif
			endfor
		endif

		" Add builtin class names
		for [classname, info] in items(g:php_builtin_classnames)
			if classname =~? '^'.base
				let builtin_classnames[leading_slash.classname] = info
			endif
		endfor

		for [function_name, info] in items(g:php_builtin_functions)
			if function_name =~? '^'.base
				let builtin_functions[leading_slash.function_name] = info
			endif
		endfor
	endif

	" All constants
	call extend(int_constants, ext_constants)

	" All functions
	call extend(int_functions, ext_functions)
	call extend(int_functions, builtin_functions)

	for [imported_name, import] in items(a:imports)
		if imported_name =~? '^'.base
			if import.kind == 'c'
				if import.builtin
					let builtin_classnames[imported_name] = ' '.import.name
				else
					let ext_classes[imported_name] = ' '.import.name' - '.import.filename
				endif
			endif
			if import.kind == 'n'
				let ext_namespaces[imported_name.'\'] = ' '.import.name.' - '.import.filename
			endif
		end
	endfor

	let all_values = {}

	" Add functions found in this file
	call extend(all_values, int_functions)

	" Add namespaces from tags
	call extend(all_values, ext_namespaces)

	" Add constants from the current file
	call extend(all_values, int_constants)

	" Add built-in constants
	call extend(all_values, builtin_constants)

	" Add external classes
	call extend(all_values, ext_classes)

	" Add built-in classes
	call extend(all_values, builtin_classnames)

	" Add php keywords
	call extend(all_values, builtin_keywords)

	let final_list = []
	let int_list = sort(keys(all_values))
	for i in int_list
		if has_key(ext_namespaces, i)
			let final_list += [{'word':i, 'kind':'n', 'menu': ext_namespaces[i], 'info': ext_namespaces[i]}]
		elseif has_key(int_functions, i)
			let final_list +=
						\ [{'word':i,
						\	'info':i.int_functions[i],
						\	'menu':int_functions[i],
						\	'kind':'f'}]
		elseif has_key(ext_classes, i) || has_key(builtin_classnames, i)
			let info = has_key(ext_classes, i) ? ext_classes[i] : builtin_classnames[i].' - builtin'
			let final_list += [{'word':i, 'kind': 'c', 'menu': info, 'info': i.info}]
		elseif has_key(int_constants, i) || has_key(builtin_constants, i)
			let info = has_key(int_constants, i) ? int_constants[i] : ' - builtin'
			let final_list += [{'word':i, 'kind': 'd', 'menu': info, 'info': i.info}]
		else
			let final_list += [{'word':i}]
		endif
	endfor

	return final_list
endfunction
" }}}

function! phpcomplete#CompleteUnknownClass(base, scontext) " {{{
	let res = []

	if g:phpcomplete_complete_for_unknown_classes != 1
		return []
	endif

	if a:base =~ '^\$'
		let adddollar = '$'
	else
		let adddollar = ''
	endif

	let file = getline(1, '$')

	" Internal solution for finding object properties in current file.
	if a:scontext =~ '::'
		let variables = filter(deepcopy(file),
					\ 'v:val =~ "^\\s*\\(static\\|static\\s\\+\\(public\\|var\\)\\|\\(public\\|var\\)\\s\\+static\\)\\s\\+\\$"')
	elseif a:scontext =~ '->'
		let variables = filter(deepcopy(file),
					\ 'v:val =~ "^\\s*\\(public\\|var\\)\\s\\+\\$"')
	endif
	let jvars = join(variables, ' ')
	let svars = split(jvars, '\$')
	let int_vars = {}
	for i in svars
		let c_var = matchstr(i,
					\ '^\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
		if c_var != ''
			let int_vars[adddollar.c_var] = ''
		endif
	endfor

	" Internal solution for finding functions in current file.
	call filter(deepcopy(file),
			\ 'v:val =~ "function\\s\\+&\\?[a-zA-Z_\\x7f-\\xff][a-zA-Z_0-9\\x7f-\\xff]*\\s*("')
	let jfile = join(file, ' ')
	let int_values = split(jfile, 'function\s\+')
	let int_functions = {}
	for i in int_values
		let f_name = matchstr(i,
				\ '^&\?\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
		let f_args = matchstr(i,
				\ '^&\?[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*(\zs.\{-}\ze)\_s*\({\|$\)')

		let int_functions[f_name.'('] = f_args.')'
	endfor

	" collect external functions from tags
	let ext_functions = {}
	let tags = taglist('^'.substitute(a:base, '^\$', '', ''))
	for tag in tags
		if tag.kind ==? 'f'
			let item = tag.name
			if has_key(tag, 'signature')
				let prototype = tag.signature[1:-2]
			else
				let prototype = matchstr(tag.cmd,
						\ 'function\s\+&\?[^[:space:]]\+\s*(\s*\zs.\{-}\ze\s*)\s*{\?')
			endif
			let ext_functions[item.'('] = prototype.') - '.tag['filename']
		endif
	endfor

	" All functions to one hash for later reference when deciding kind
	call extend(int_functions, ext_functions)

	let all_values = {}
	call extend(all_values, int_functions)
	call extend(all_values, int_vars) " external variables are already in
	call extend(all_values, g:php_builtin_object_functions)

	for m in sort(keys(all_values))
		if m =~ '\(^\|::\)'.a:base
			call add(res, m)
		endif
	endfor

	let start_list = res

	let final_list = []
	for i in start_list
		if has_key(int_vars, i)
			let class = ' '
			if all_values[i] != ''
				let class = i.' class '
			endif
			let final_list += [{'word':i, 'info':class.all_values[i], 'kind':'v'}]
		else
			let final_list +=
					\ [{'word':substitute(i, '.*::', '', ''),
					\	'info':i.all_values[i],
					\	'menu':all_values[i],
					\	'kind':'f'}]
		endif
	endfor
	return final_list
endfunction
" }}}

function! phpcomplete#CompleteVariable(base) " {{{
	let res = []

	" Internal solution for current file.
	let file = getline(1, '$')
	let jfile = join(file, ' ')
	let int_vals = split(jfile, '\ze\$')
	let int_vars = {}
	for i in int_vals
		if i =~ '^\$[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*=\s*new'
			let val = matchstr(i,
						\ '^\$[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*')
		else
			let val = matchstr(i,
						\ '^\$[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*')
		endif
		if val != ''
			let int_vars[val] = ''
		endif
	endfor

	call extend(int_vars, g:php_builtin_vars)

	" ctags has support for PHP, use tags file for external variables
	let ext_vars = {}
	let tags = taglist('^'.substitute(a:base, '^\$', '', ''))
	for tag in tags
		if tag.kind ==? 'v'
			let item = tag.name
			let m_menu = ''
			if tag.cmd =~ tag['name'].'\s*=\s*new\s\+'
				let m_menu = matchstr(tag.cmd,
							\ '=\s*new\s\+\zs[a-zA-Z_0-9\x7f-\xff]\+\ze')
			endif
			let ext_vars['$'.item] = m_menu
		endif
	endfor

	call extend(int_vars, ext_vars)

	for m in sort(keys(int_vars))
		if m =~ '^\'.a:base
			call add(res, m)
		endif
	endfor

	let int_list = res

	let int_dict = []
	for i in int_list
		if int_vars[i] != ''
			let class = ' '
			if int_vars[i] != ''
				let class = i.' class '
			endif
			let int_dict += [{'word':i, 'info':class.int_vars[i], 'menu':int_vars[i], 'kind':'v'}]
		else
			let int_dict += [{'word':i, 'kind':'v'}]
		endif
	endfor

	return int_dict
endfunction
" }}}

function! phpcomplete#CompleteClassName(base, current_namespace, imports) " {{{
	" Complete class name
	let res = []
	if a:base =~? '^\'
		let leading_slash = '\'
		let base = substitute(a:base, '^\', '', '')
	else
		let leading_slash = ''
		let base = a:base
	endif

	" Internal solution for finding classes in current file.
	let file = getline(1, '$')
	call filter(file,
			\ 'v:val =~? "class\\s\\+[a-zA-Z_\\x7f-\\xff][a-zA-Z_0-9\\x7f-\\xff]*\\s*"')

	let jfile = join(file, ' ')
	let int_values = split(jfile, 'class\_s\+')
	let int_classes = {}
	for i in int_values
		let c_name = matchstr(i, '^[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*')
		if c_name != '' && c_name =~? '^'.base
			call add(res, {'word': c_name, 'kind': 'c'})
		endif
	endfor

	" resolve the typed in part with namespaces (if theres a \ in it)
	let [tag_match_pattern, namespace_for_class] = phpcomplete#ExpandClassName(a:base, a:current_namespace, a:imports)

	let tags = []
	if len(tag_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion
		let tags = taglist('^'.tag_match_pattern)
	endif

	if len(tags)
		for tag in tags
			if !has_key(tag, 'namespace') && tag.kind ==? 'c' && tag.name =~? '^'.base
				call add(res, {'word': leading_slash.tag.name, 'kind': 'c', 'menu': tag.filename, 'info': tag.filename })
			endif
			if has_key(tag, 'namespace') && tag.kind ==? 'c' && tag.namespace ==? namespace_for_class
				let full_name = tag.namespace.'\'.tag.name " absolute namespaced name (without leading '\')

				let base_parts = split(a:base, '\')
				if len(base_parts) > 1
					let namespace_part = join(base_parts[0:-2], '\')
				else
					let namespace_part = ''
				endif
				let relative_name = (namespace_part == '' ? '' : namespace_part.'\').tag.name

				call add(res, {'word': leading_slash == '\' ? leading_slash.full_name : relative_name, 'kind': 'c', 'menu': tag.filename, 'info': tag.filename })
			endif
		endfor
	endif

	" look for built in classnames
	let base_parts = split(base, '\')
	if a:current_namespace == '\' || (leading_slash == '\' && len(base_parts) < 2)
		let builtin_classnames = filter(keys(copy(g:php_builtin_classes)), 'v:val =~? "^'.substitute(a:base, '\\', '', 'g').'"')
		for classname in builtin_classnames
			let menu = ''
			" if we have a constructor for this class, add parameters as to the info
			if has_key(g:php_builtin_classes[classname].methods, '__construct')
				let menu = g:php_builtin_classes[classname]['methods']['__construct']['signature']
			endif
			call add(res, {'word': leading_slash.classname, 'kind': 'c', 'menu': menu})
		endfor
	endif

	" add matching imported things
	for [imported_name, import] in items(a:imports)
		if imported_name =~? '^'.base && import.kind == 'c'
			call add(res, {'word': imported_name, 'kind': import.kind, 'menu': ''})
		endif
	endfor

	let res = sort(res, 'phpcomplete#CompareCompletionRow')
	return res
endfunction
" }}}

function! phpcomplete#CompareCompletionRow(i1, i2) " {{{
	return a:i1.word == a:i2.word ? 0 : a:i1.word > a:i2.word ? 1 : -1
endfunction
" }}}

function! phpcomplete#CompleteUserClass(scontext, base, sccontent, classAccess) " {{{
	let final_list = []
	let res  = []

	" limit based on context to static or normal methods
	if a:scontext =~ '::'
		if g:phpcomplete_relax_static_constraint == 1
			let functions = filter(deepcopy(a:sccontent),
						\ 'v:val =~ "^\\s*\\(static\\s\\+\\(' . a:classAccess . '\\)*\\|\\(' . a:classAccess . '\\s\\+\\)*static\\)\\s\\+function"')
			let functions += filter(deepcopy(a:sccontent),
						\ 'v:val =~ "^\\s*\\(' . a:classAccess . '\\s\\+\\)*function"')
		else
			let functions = filter(deepcopy(a:sccontent),
						\ 'v:val =~ "^\\s*\\(static\\s\\+\\(' . a:classAccess . '\\)*\\|\\(' . a:classAccess . '\\s\\+\\)*static\\)\\s\\+function"')
		endif
	elseif a:scontext =~ '->'
		let functions = filter(deepcopy(a:sccontent),
					\ 'v:val =~ "^\\s*\\(' . a:classAccess . '\\s\\+\\)*function"')
	endif

	let sfuncs = split(join(functions, ' '), 'function\s\+')
	let c_functions = {}
	let c_doc = {}
	for i in sfuncs
		let f_name = matchstr(i,
					\ '^&\?\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
		let f_args = matchstr(i,
					\ '^&\?[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*(\zs.\{-}\ze)\_s*\({\|$\)')
		if f_name != ''
			let c_functions[f_name.'('] = f_args
			if g:phpcomplete_parse_docblock_comments
				let c_doc[f_name.'('] = phpcomplete#GetDocBlock(a:sccontent, 'function\s*\<'.f_name.'\>')
			endif
		endif
	endfor

	" limit based on context to static or normal attributes
	if a:scontext =~ '::'
		let variables = filter(deepcopy(a:sccontent),
					\ 'v:val =~ "^\\s*\\(static\\|static\\s\\+\\(' . a:classAccess . '\\|var\\)\\|\\(' . a:classAccess . '\\|var\\)\\s\\+static\\)\\s\\+\\$"')
	elseif a:scontext =~ '->'
		let variables = filter(deepcopy(a:sccontent),
					\ 'v:val =~ "^\\s*\\(' . a:classAccess . '\\|var\\)\\s\\+\\$"')
	endif
	let jvars = join(variables, ' ')
	let svars = split(jvars, '\$')
	let c_variables = {}

	let var_index = 0
	for i in svars
		let c_var = matchstr(i,
					\ '^\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
		if c_var != ''
			if a:scontext =~ '::'
				let c_var = '$'.c_var
			endif
			let c_variables[c_var] = ''
			if g:phpcomplete_parse_docblock_comments && len(get(variables, var_index)) > 0
				let c_doc[c_var] = phpcomplete#GetDocBlock(a:sccontent, variables[var_index])
			endif
			let var_index += 1
		endif
	endfor

	let constants = filter(deepcopy(a:sccontent),
				\ 'v:val =~ "^\\s*const\\s\\+"')

	let jcons = join(constants, ' ')
	let scons = split(jcons, 'const')

	let c_constants = {}
	let const_index = 0
	for i in scons
		let c_con = matchstr(i,
					\ '^\s*\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
		if c_con != ''
			let c_constants[c_con] = ''
			if g:phpcomplete_parse_docblock_comments && len(get(constants, const_index)) > 0
				let c_doc[c_con] = phpcomplete#GetDocBlock(a:sccontent, constants[const_index])
			endif
			let const_index += 1
		endif
	endfor

	let all_values = {}
	call extend(all_values, c_functions)
	call extend(all_values, c_variables)
	call extend(all_values, c_constants)

	for m in sort(keys(all_values))
		if m =~ '^'.a:base
			call add(res, m)
		endif
	endfor

	let start_list = res

	let final_list = []
	for i in start_list
		let docblock = phpcomplete#ParseDocBlock(get(c_doc, i, ''))
		if has_key(c_variables, i)
			let final_list +=
						\ [{'word': i,
						\	'info':phpcomplete#FormatDocBlock(docblock),
						\	'menu':get(docblock.var, 'type', ''),
						\	'kind':'v'}]
		elseif has_key(c_constants, i)
			let info = phpcomplete#FormatDocBlock(docblock)
			if info != ''
				let info = "\n".info
			endif
			let final_list +=
						\ [{'word':i,
						\	'info':i.info,
						\	'menu':all_values[i],
						\	'kind':'d'}]
		else
			let return_type = get(docblock.return, 'type', '')
			if return_type != ''
				let return_type = ' | '.return_type
			endif
			let info = phpcomplete#FormatDocBlock(docblock)
			if info != ''
				let info = "\n".info
			endif
			let final_list +=
						\ [{'word':substitute(i, '.*::', '', ''),
						\	'info':i.all_values[i].')'.info,
						\	'menu':all_values[i].')'.return_type,
						\	'kind':'f'}]
		endif
	endfor

	return final_list
endfunction
" }}}

function! phpcomplete#CompleteBuiltInClass(scontext, classname, base) " {{{
	let class_info = g:php_builtin_classes[a:classname]
	let res = []
	let search = matchstr(a:base, '\(->\|::\)\zs.*$\ze')
	if a:scontext =~ '->$' " complete for everything instance related
		" methods
		for [method_name, method_info] in items(class_info.methods)
			if a:base == '' || method_name =~? '^'.a:base
				call add(res, {'word':method_name.'(', 'kind': 'f', 'menu': method_info.signature, 'info': method_info.signature })
			endif
		endfor
		" properties
		for [property_name, property_info] in items(class_info.properties)
			if a:base == '' || property_name =~? '^'.a:base
				call add(res, {'word':property_name, 'kind': 'v', 'menu': property_info.type, 'info': property_info.type })
			endif
		endfor
	elseif a:scontext =~ '::$' " complete for everything static
		" methods
		for [method_name, method_info] in items(class_info.static_methods)
			if a:base == '' || method_name =~? '^'.a:base
				call add(res, {'word':method_name.'(', 'kind': 'f', 'menu': method_info.signature, 'info': method_info.signature })
			endif
		endfor
		" properties
		for [property_name, property_info] in items(class_info.static_properties)
			if a:base == '' || property_name =~? '^'.a:base
				call add(res, {'word':property_name, 'kind': 'v', 'menu': property_info.type, 'info': property_info.type })
			endif
		endfor
		" constants
		for [constant_name, constant_info] in items(class_info.constants)
			if a:base == '' || constant_name =~? '^'.a:base
				call add(res, {'word':constant_name, 'kind': 'd', 'menu': constant_info, 'info': constant_info})
			endif
		endfor
	endif
	return res
endfunction
" }}}

function! phpcomplete#GetClassName(scontext, imports) " {{{
	" Get class name
	" Class name can be detected in few ways:
	" @var $myVar class
	" in the same line (php 5.4 (new Class)-> syntax)
	" line above
	" or line in tags file

	let class_name_pattern = '[a-zA-Z_\x7f-\xff\\][a-zA-Z_0-9\x7f-\xff\\]*'
	let function_name_pattern = '[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*'

	let classname_candidate = ''

	if a:scontext =~? '\$this->' || a:scontext =~? '\(self\|static\)::'
		let i = 1
		while i < line('.')
			let line = getline(line('.')-i)

			" Don't complete self:: or $this if outside of a class
			" (assumes correct indenting)
			if line =~ '^}'
				return ''
			endif

			if line =~? '^\s*abstract\s*class'
				let classname = matchstr(line, '^\s*abstract\s*class\s*\zs'.class_name_pattern.'\ze')
				return classname
			elseif line =~? '^\s*class'
				let classname = matchstr(line, '^\s*class\s*\zs'.class_name_pattern.'\ze')
				return classname
			else
				let i += 1
				continue
			endif
		endwhile
	elseif a:scontext =~? '(\s*new\s\+'.class_name_pattern.'\s*)->'
		let classname_candidate = matchstr(a:scontext, '\cnew\s\+\zs'.class_name_pattern.'\ze')
		if has_key(a:imports, classname_candidate) && a:imports[classname_candidate].kind == 'c'
			return a:imports[classname_candidate].name
		else
			return classname_candidate
		endif
	else
		" check Constant lookup
		let constant_object = matchstr(a:scontext, '\zs'.class_name_pattern.'\ze::')
		if constant_object != ''
			let classname_candidate = constant_object
		endif

		"extract the variable name from the context
		let object = matchstr(a:scontext, '\zs'.class_name_pattern.'\ze\(::\|->\)')

		" scan the file backwards from the current line
		let i = 1
		while i < line('.')
			let line = getline(line('.')-i)

			" do in-file lookup of $var = new Class
			if line =~# '^\s*\$'.object.'\s*=\s*new\s\+'.class_name_pattern
				let classname_candidate = matchstr(line, '\$'.object.'\s*=\s*new \zs'.class_name_pattern.'\ze')
				break
			endif

			" in file lookup for /* @var $foo Class */
			if line =~# '@var\s\+\$'.object.'\s\+'.class_name_pattern
				let classname_candidate = matchstr(line, '@var\s\+\$'.object.'\s\+\zs'.class_name_pattern.'\ze')
				break
			endif

			" in-file lookup for Class::getInstance()
			if line =~# '^\s*\$'.object.'\s*=&\?\s*\s\+'.class_name_pattern.'::getInstance\+'
				let classname_candidate = matchstr(line, '\$'.object.'\s*=&\?\s*\zs'.class_name_pattern.'\ze::getInstance\+')
				break
			endif

			" do in-file lookup for static method invocation of a built-in class, like: $d = DateTime::createFromFormat()
			if line =~# '^\s*\$'.object.'\s*=&\?\s*\s\+'.class_name_pattern.'::[a-zA-Z_0-9\x7f-\xff]\+('
				let classname  = matchstr(line, '^\s*\$'.object.'\s*=&\?\s*\s\+\zs'.class_name_pattern.'\ze::[a-zA-Z_0-9\x7f-\xff]\+(')
				let methodname = matchstr(line, '^\s*\$'.object.'\s*=&\?\s*\s\+'.class_name_pattern.'::\zs[a-zA-Z_0-9\x7f-\xff]\+\ze(')
				if has_key(a:imports, classname) && a:imports[classname].kind == 'c'
					let classname = a:imports[classname].name
				endif
				if has_key(g:php_builtin_classes, classname) && has_key(g:php_builtin_classes[classname].static_methods, methodname)
					return g:php_builtin_classes[classname].static_methods[methodname].return_type
				else
					" TODO: try getting the static class's docblock for return type
					break
				endif
			endif

			" in-file lookup for typehinted function arguments
			"   - the function can have a name or be anonymous (e.g., function qux() { ... } vs. function () { ... })
			"   - the type-hinted argument can be anywhere in the arguments list.
			if line =~? 'function\(\s\+'.function_name_pattern.'\)\?\s*(.\{-}'.class_name_pattern.'\s\+\$'.object
				let f_args = matchstr(line, 'function\(\s\+'.function_name_pattern.'\)\?\s*(\zs.\{-}\ze)')
				let args = split(f_args, '\s*\zs,\ze\s*')
				for arg in args
					if arg =~# '\$'.object.'\(,\|$\)'
						let classname_candidate = matchstr(arg, '\s*\zs'.class_name_pattern.'\ze\s\+\$'.object)
						break
					endif
				endfor
				if classname_candidate != ''
					break
				endif
			endif

			let i += 1
		endwhile
		if classname_candidate != ''
			if has_key(a:imports, classname_candidate) && a:imports[classname_candidate].kind == 'c'
				return a:imports[classname_candidate].name
			else
				return classname_candidate
			endif
		endif

		" OK, first way failed, now check tags file(s)
		" This method is useless when local variables are not indexed by ctags and
		" pretty inaccurate even if it is
		let tags = taglist('^'.substitute(object, '^\$', '', ''))
		if len(tags) == 0
			return
		else
			for tag in tags
				if tag.kind ==? 'v' && tag.cmd =~? '=\s*new\s\+\zs'.class_name_pattern.'\ze'
					let classname = matchstr(tag.cmd, '=\s*new\s\+\zs'.class_name_pattern.'\ze')
					return classname
				endif
			endfor
		endif
	endif
endfunction
" }}}

function! phpcomplete#GetClassLocation(classname, namespace) " {{{
	" Check classname may be name of built in object
	if has_key(g:php_builtin_classes, a:classname) && (a:namespace == '' || a:namespace == '\')
		return 'VIMPHP_BUILTINOBJECT'
	endif

	" do in-file lookup for class definition
	let i = 1
	while i < line('.')
		let line = getline(line('.')-i)
		if line =~ '^\s*class ' . a:classname  . '\(\s\+\|$\)'
			return expand('%:p')
		else
			let i += 1
			continue
		endif
	endwhile

	" Get class location from tags
	let no_namespace_candidate = ''
	let tags = taglist('^'.a:classname.'$')
	for tag in tags
		if tag.kind ==? 'c'
			if !has_key(tag, 'namespace')
				let no_namespace_candidate = tag.filename
			else
				if a:namespace ==? tag.namespace
					return tag.filename
				endif
			endif
		endif
	endfor
	if no_namespace_candidate != ''
		return no_namespace_candidate
	endif

endfunction
" }}}

function! phpcomplete#GetClassContents(file, name) " {{{
	let class_name_pattern = '[a-zA-Z_\x7f-\xff\\][a-zA-Z_0-9\x7f-\xff\\]*'
	let cfile = join(a:file, "\n")
	" We use new buffer and (later) normal! because
	" this is the most efficient way. The other way
	" is to go through the looong string looking for
	" matching {}

	" remember the window we started at
	let phpcomplete_original_window = winnr()

	below 1new
	0put =cfile
	call search('class\s\+'.a:name.'\(\>\|$\)')
	let cfline = line('.')
	call search('{')
	let endline = line('.')

	let content = join(getline(cfline, endline),"\n")
	" Catch extends
	if content =~? 'extends'
		let extends_class = matchstr(content, 'class\_s\+'.a:name.'\_s\+extends\_s\+\zs'.class_name_pattern.'\ze')
	else
		let extends_class = ''
	endif
	normal! %

	let classcontent = join(getline(cfline, line('.')), "\n")
	let [current_namespace, imports] = phpcomplete#GetCurrentNameSpace(a:file[0:cfline])
	bw! %

	" go back to original window
	exe phpcomplete_original_window.'wincmd w'

	if extends_class != ''
		let [extends_class, namespace] = phpcomplete#ExpandClassName(extends_class, current_namespace, imports)
		let classlocation = phpcomplete#GetClassLocation(extends_class, namespace)
		if filereadable(classlocation)
			let classfile = readfile(classlocation)
			let classcontent .= "\n".phpcomplete#GetClassContents(classfile, extends_class)
		endif
	endif

	return classcontent
endfunction
" }}}

function! phpcomplete#GetDocBlock(sccontent, search) " {{{
	let i = 0
	let l = 0
	let comment_start = -1
	let comment_end = -1
	let sccontent_len = len(a:sccontent)

	while (i < sccontent_len)
		let line = a:sccontent[i]
		" search for a function declaration
		if line =~? a:search
			let l = i - 1
			" start backward serch for the comment block
			while l != 0
				let line = a:sccontent[l]
				" if comment end found save line position and end search
				if line =~? '^\s*\*/'
					let comment_end = l
					break
				" ... or the line doesn't blank (only whitespace or nothing) end search
				elseif line !~? '^\s*$'
					break
				endif
				let l -= 1
			endwhile
			" no comment found
			if comment_end == -1
				return ''
			end

			while l != 0
				let line = a:sccontent[l]
				if line =~? '^\s*/\*\*'
					let comment_start = l
					break
				endif
				let l -= 1
			endwhile
			" no docblock comment start found
			if comment_start == -1
				return ''
			end

			let comment_start += 1 " we dont need the /**
			let comment_end   -= 1 " we dont need the */

			" remove leading whitespace and '*'s
			let docblock = join(map(copy(a:sccontent[comment_start :comment_end]), 'substitute(v:val, "^\\s*\\*\\s*", "", "")'), "\n")
			return docblock
		endif
		let i += 1
	endwhile
	return ''
endfunction
" }}}

function! phpcomplete#ParseDocBlock(docblock) " {{{
	let res = {
		\ 'description': '',
		\ 'params': [],
		\ 'return': {},
		\ 'throws': [],
		\ 'var': {},
		\ }

	let res.description = substitute(matchstr(a:docblock, '\zs\_.\{-}\ze\(@var\|@param\|@return\|$\)'), '\(^\_s*\|\_s*$\)', '', 'g')
	let docblock_lines = split(a:docblock, "\n")

	let param_lines = filter(copy(docblock_lines), 'v:val =~? "^@param"')
	for param_line in param_lines
		let parts = matchlist(param_line, '@param\s\+\(\S\+\)\s\+\(\S\+\)\s*\(.*\)')
		if len(parts) > 0
			call add(res.params, {'line': parts[0], 'type': get(parts, 1, ''), 'name': get(parts, 2, ''), 'description': get(parts, 3, '')})
		endif
	endfor

	let return_line = filter(copy(docblock_lines), 'v:val =~? "^@return"')
	if len(return_line) > 0
		let return_parts = matchlist(return_line[0], '@return\s\+\(\S\+\)\s*\(.*\)')
		let res['return'] = {'line': return_parts[0], 'type': get(return_parts, 1, ''), 'description': get(return_parts, 2, '')}
	endif

	let exception_lines = filter(copy(docblock_lines), 'v:val =~? "^\\(@throws\\|@exception\\)"')
	for exception_line in exception_lines
		let parts = matchlist(exception_line, '^\(@throws\|@exception\)\s\+\(\S\+\)\s*\(.*\)')
		if len(parts) > 0
			call add(res.throws, {'line': parts[0], 'type': get(parts, 2, ''), 'description': get(parts, 3, '')})
		endif
	endfor

	let var_line = filter(copy(docblock_lines), 'v:val =~? "^@var"')
	if len(var_line) > 0
		let var_parts = matchlist(var_line[0], '@var\s\+\(\S\+\)\s*\(.*\)')
		let res['var'] = {'line': var_parts[0], 'type': get(var_parts, 1, ''), 'description': get(var_parts, 2, '')}
	endif

	return res
endfunction
" }}}

function! phpcomplete#FormatDocBlock(info) " {{{
	let res = ''
	if len(a:info.description)
		let res .= "Description:\n".join(map(split(a:info['description'], "\n"), '"\t".v:val'), "\n")."\n"
	endif

	if len(a:info.params)
		let res .= "\nArguments:\n"
		for arginfo in a:info.params
			let res .= "\t".arginfo['name'].' '.arginfo['type']
			if len(arginfo.description) > 0
				let res .= ': '.arginfo['description']
			endif
			let res .= "\n"
		endfor
	endif

	if has_key(a:info.return, 'type')
		let res .= "\nReturn:\n\t".a:info['return']['type']
		if len(a:info.return.description) > 0
			let res .= ": ".a:info['return']['description']
		endif
		let res .= "\n"
	endif

	if len(a:info.throws)
		let res .= "\nThrows:\n"
		for excinfo in a:info.throws
			let res .= "\t".excinfo['type']
			if len(excinfo['description']) > 0
				let res .= ": ".excinfo['description']
			endif
			let res .= "\n"
		endfor
	endif

	if has_key(a:info.var, 'type')
		let res .= "Type:\n\t".a:info['var']['type']."\n"
		if len(a:info['var']['description']) > 0
			let res .= ': '.a:info['var']['description']
		endif
	endif

	return res
endfunction!
" }}}

function! phpcomplete#GetCurrentNameSpace(file_lines) " {{{
	let namespace_name_pattern = '[a-zA-Z_\x7f-\xff\\][a-zA-Z_0-9\x7f-\xff\\]*'
	let file_lines = reverse(a:file_lines)
	let i = 0
	let file_length = len(file_lines)
	let imports = {}

	let current_namespace = '\'

	while i < file_length
		let line = file_lines[i]

		if line =~? '^\s*namespace\s*'.namespace_name_pattern
			let current_namespace = matchstr(line, '^\s*namespace\s*\zs'.namespace_name_pattern.'\ze')
			break
		endif

		if line =~? '^\s*use\>'
			if line =~? ';'
				let use_line = line
			else
				" try to find the next line containing ';'
				let l = i
				let search_line = line
				let use_line = line

				" add lines from the file until theres no ';' in them
				while search_line !~? ';' && l > 0
					" file lines are reversed so we need to go backwards
					let l -= 1
					let search_line = file_lines[l]
					let use_line .= ' '.substitute(search_line, '\(^\s\+\|\s\+$\)', '', 'g')
				endwhile
			endif
			let use_expression = matchstr(use_line, '^\s*use\s\+\zs.\{-}\ze;')
			let use_parts = map(split(use_expression, '\s*,\s*'), 'substitute(v:val, "\\s+", " ", "g")')
			for part in use_parts
				if part =~? '\s\+as\s\+'
					let [object, name] = split(part, '\s\+as\s\+')
					let object = substitute(object, '^\\', '', '')
					let name   = substitute(name, '^\\', '', '')
				else
					let object = part
					let name = part
					let object = substitute(object, '^\\', '', '')
					let name   = substitute(name, '^\\', '', '')
					if name =~? '\\'
						let	name = matchstr(name, '\\\zs[^\\]\+\ze$')
					endif
				endif
				" leading slash is not required use imports are always absolute
				let imports[name] = {'name': object, 'kind': ''}
			endfor

			" find kind flags from tags or built in methods for the objects we extracted
			" they can be either classes, interfaces or namespaces, no other thing is importable in php
			for [key, import] in items(imports)
				" if theres a \ in the name we have it's definetly not a built in thing, look for tags
				if import.name =~ '\\'
					let [classname, namespace_for_classes] = phpcomplete#ExpandClassName(import.name, '\', {})
					let namespace_name_candidate = substitute(import.name, '\\', '\\\\', 'g')
					" can be a namespace name as is, or can be a tagname at the end with a namespace
					let tags = taglist('^\('.namespace_name_candidate.'\|'.classname.'\)$')
					for tag in tags
						" if there's a namespace with the name of the import
						if tag.kind == 'n' && tag.name == import.name
							call extend(import, tag)
							let import['builtin'] = 0
						endif
						" if the name matches with the extracted classname and namespace
						if (tag.kind == 'c' || tag.kind == 'i') && tag.name == classname && has_key(tag, 'namespace') && tag.namespace == namespace_for_classes
							call extend(import, tag)
							let import['builtin'] = 0
						endif
						break
					endfor
				else
					" if no \ in the name, it can be a built in class
					if has_key(g:php_builtin_classnames, import.name)
						let import['kind'] = 'c'
						let import['builtin'] = 1
					else
						" or can be a tag with exactly matchign name
						let tags = taglist('^'.import['name'].'$')
						for tag in tags
							" search for the first matchin namespace, class, interface with no namespace
							if !has_key(tag, 'namespace') && (tag.kind == 'n' || tag.kind == 'c' || tag.kind == 'i')
								call extend(import, tag)
								let import['builtin'] = 0
								break
							endif
						endfor
					endif
				endif
			endfor
		endif
		let i += 1
	endwhile
	return [current_namespace, imports]
endfunction
" }}}

function! phpcomplete#ExpandClassName(classname, current_namespace, imports) " {{{
	" if there's an imported class, just use that class's information
	if has_key(a:imports, a:classname) && a:imports[a:classname].kind == 'c'
		let namespace = has_key(a:imports[a:classname], 'namespace') ? a:imports[a:classname].namespace : ''
		return [a:classname, namespace]
	endif

	" try to find relative namespace in imports, imported names takes precedence over
	" current namespace when resolving relative namespaced class names
	if a:classname !~ '^\' && a:classname =~ '\\'
		let classname_parts = split(a:classname, '\\\+')
		if has_key(a:imports, classname_parts[0]) && a:imports[classname_parts[0]].kind == 'n'
			let classname_parts[0] = a:imports[classname_parts[0]].name
			let namespace = join(classname_parts[0:-2], '\')
			let classname = classname_parts[-1]
			return [classname, namespace]
		endif
	endif

	" no imported class or namespace matched, expand with the current namespace
	let namespace = ''
	let classname = a:classname
	" if the classname have namespaces in in or we are in a namespace
	if a:classname =~ '\\' || a:current_namespace != '\'
		" add current namespace to the a:classname
		if a:classname !~ '^\'
			let classname = a:current_namespace.'\'.substitute(a:classname, '^\\', '', '')
		else
			" remove leading \, tag files doesn't have those
			let classname = substitute(a:classname, '^\\', '', '')
		endif
		" split classname to classname and namespace
		let classname_parts = split(classname, '\\\+')
		if len(classname_parts) > 1
			let namespace = join(classname_parts[0:-2], '\')
			let classname = classname_parts[-1]
		endif
	endif
	return [classname, namespace]
endfunction
" }}}

function! phpcomplete#LoadData() " {{{
" Keywords/reserved words, all other special things
" Later it is possible to add some help to values, or type of
" defined variable
runtime! misc/php_keywords.vim

" Built in functions
" You can regenerate this list with the bin/extract_functions.php
runtime! misc/php_builtin_functions.vim

" Built in class methods
" You can regenerate this list with the bin/extract_functions.php
runtime! misc/php_builtin_classes.vim

" When the classname not found or found but the tags dosen't contain that
" class we will try to complate any method of any builtin class. To speed up
" that lookup we compile a 'ClassName::MethodName':'info' dictionary from the
" builtin class informations
let g:php_builtin_object_functions = {}
" When completing for 'everyting imaginable' (no class context, not a
" variable) we need a list of built-in classes in a format of {'classname':''}
" for performance reasons we precompile this too
let g:php_builtin_classnames = {}
for [classname, class_info] in items(g:php_builtin_classes)
	let g:php_builtin_classnames[classname] = ''
	for [method_name, method_info] in items(class_info.methods)
		let g:php_builtin_object_functions[classname.'::'.method_name.'('] = method_info.signature
	endfor
	for [method_name, method_info] in items(class_info.static_methods)
		let g:php_builtin_object_functions[classname.'::'.method_name.'('] = method_info.signature
	endfor
endfor

" Constants defined in PHP and it's extension
" You can regenerate this list with the bin/extract_functions.php
runtime! misc/php_constants.vim


" Add control structures (they are outside regular pattern of PHP functions)
let php_control = {
			\ 'include(': 'string filename | resource',
			\ 'include_once(': 'string filename | resource',
			\ 'require(': 'string filename | resource',
			\ 'require_once(': 'string filename | resource',
			\ }
call extend(g:php_builtin_functions, php_control)


" Built-in variables " {{{
let g:php_builtin_vars ={
			\ '$GLOBALS':'',
			\ '$_SERVER':'',
			\ '$_GET':'',
			\ '$_POST':'',
			\ '$_COOKIE':'',
			\ '$_FILES':'',
			\ '$_ENV':'',
			\ '$_REQUEST':'',
			\ '$_SESSION':'',
			\ '$HTTP_SERVER_VARS':'',
			\ '$HTTP_ENV_VARS':'',
			\ '$HTTP_COOKIE_VARS':'',
			\ '$HTTP_GET_VARS':'',
			\ '$HTTP_POST_VARS':'',
			\ '$HTTP_POST_FILES':'',
			\ '$HTTP_SESSION_VARS':'',
			\ '$php_errormsg':'',
			\ '$this':'',
			\ }
" }}}

endfunction
" }}}
" vim: foldmethod=marker:noexpandtab:ts=4:sts=4:tw=4

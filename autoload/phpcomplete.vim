" Vim completion script
" Language:	PHP
" Maintainer:	Mikolaj Machowski ( mikmach AT wp DOT pl )
" Maintainer:	Shawn Biddle ( shawn AT shawnbiddle DOT com )
"
"   TODO:
"   - Switching to HTML (XML?) completion (SQL) inside of phpStrings
"   - allow also for XML completion <- better do html_flavor for HTML
"     completion
"   - outside of <?php?> getting parent tag may cause problems. Heh, even in
"     perfect conditions GetLastOpenTag doesn't cooperate... Inside of
"     phpStrings this can be even a bonus but outside of <?php?> it is not the
"     best situation

function! phpcomplete#CompletePHP(findstart, base)
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
			while start >= 0 && line[start - 1] =~ '[a-zA-Z_0-9\x7f-\xff$]'
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
	" Initialize base return lists
	let res = []
	let res2 = []
	" a:base is very short - we need context
	if exists("b:compl_context")
		let context = b:compl_context
		unlet! b:compl_context
	endif

	if !exists('g:php_builtin_functions')
		call phpcomplete#LoadData()
	endif

	let scontext = substitute(context, '\$\?[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*$', '', '')

	if scontext =~ '\(\s*new\|extends\)\s\+$'
		" Complete class name
		" Internal solution for finding classes in current file.
		let file = getline(1, '$')
		call filter(file,
				\ 'v:val =~ "class\\s\\+[a-zA-Z_\\x7f-\\xff][a-zA-Z_0-9\\x7f-\\xff]*\\s*("')
		let fnames = join(map(tagfiles(), 'escape(v:val, " \\#%")'))
		let jfile = join(file, ' ')
		let int_values = split(jfile, 'class\s\+')
		let int_classes = {}
		for i in int_values
			let c_name = matchstr(i, '^[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*')
			if c_name != ''
				let int_classes[c_name] = ''
			endif
		endfor

		" Prepare list of classes from tags file
		let ext_classes = {}
		let fnames = join(map(tagfiles(), 'escape(v:val, " \\#%")'))
		if fnames != ''
			exe 'silent! vimgrep /^'.a:base.'.*\tc\(\t\|$\)/j '.fnames
			let qflist = getqflist()
			if len(qflist) > 0
				for field in qflist
					" [:space:] thing: we don't have to be so strict when
					" dealing with tags files - entries there were already
					" checked by ctags.
					let item = matchstr(field['text'], '^[^[:space:]]\+')
					let ext_classes[item] = ''
				endfor
			endif
		endif

		" Prepare list of built in classes from g:php_builtin_functions
		if !exists("g:php_omni_bi_classes")
			let g:php_omni_bi_classes = {}
			for i in keys(g:php_builtin_object_functions)
				let g:php_omni_bi_classes[substitute(i, '::.*$', '', '')] = ''
			endfor
		endif

		let classes = sort(keys(int_classes))
		let classes += sort(keys(ext_classes))
		let classes += sort(keys(g:php_omni_bi_classes))

		for m in classes
			if m =~ '^'.a:base
				call add(res, m)
			endif
		endfor

		let final_menu = []
		for i in res
			let menu = ''
			if (has_key(g:php_builtin_object_functions, i.'::__construct('))
				let menu = g:php_builtin_object_functions[i.'::__construct(']
			endif
			let final_menu += [{'word':i, 'kind':'c', 'menu':menu}]
		endfor

		return final_menu

	elseif scontext =~ '\(->\|::\)$'
		" Complete user functions and variables
		" Internal solution for current file.
		" That seems as unnecessary repeating of functions but there are
		" few not so subtle differences as not appending of $ and addition
		" of 'kind' tag (not necessary in regular completion)

		if scontext =~ '->$' || scontext =~ '::'

			" Get name of the class
			let classname = phpcomplete#GetClassName(scontext)

			" Get location of class definition, we have to iterate through all
			" tags files separately because we need relative path from current
			" file to the exact file (tags file can be in different dir)
			if classname != ''
				let classlocation = phpcomplete#GetClassLocation(classname)
			else
				let classlocation = ''
			endif

			if classlocation == 'VIMPHP_BUILTINOBJECT'

				for object in keys(g:php_builtin_object_functions)
					if object =~ '^'.classname
						let res += [{'word':substitute(object, '.*::', '', ''),
							   	\    'menu': g:php_builtin_object_functions[object],
							   	\    'info': g:php_builtin_object_functions[object]}]
					endif
				endfor

				return res

			endif

			if filereadable(classlocation)
				let classfile = readfile(classlocation)
				let classcontent = ''
				let classcontent .= "\n".phpcomplete#GetClassContents(classfile, classname)
				let sccontent = split(classcontent, "\n")
                let classAccess = expand('%:p') == fnamemodify(classlocation, ':p') ? '\\(public\\|private\\|protected\\)' : 'public'

				" limit based on context to static or normal public methods
				if scontext =~ '::'
					let functions = filter(deepcopy(sccontent),
							\ 'v:val =~ "^\\s*\\(\\(' . classAccess . '\\s\\+static\\|static\\)\\s\\+\\)*function"')
				elseif scontext =~ '->$'
					let functions = filter(deepcopy(sccontent),
							\ 'v:val =~ "^\\s*\\(' . classAccess . '\\s\\+\\)*function"')
				endif

				let jfuncs = join(functions, ' ')
				let sfuncs = split(jfuncs, 'function\s\+')
				let c_functions = {}
				for i in sfuncs
					let f_name = matchstr(i,
							\ '^&\?\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
					let f_args = matchstr(i,
							\ '^&\?[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*(\zs.\{-}\ze)\_s*{')
					if f_name != ''
						let c_functions[f_name.'('] = f_args
					endif
				endfor
				" Variables declared with var or with public keyword are
				" public
				let variables = filter(deepcopy(sccontent),
						\ 'v:val =~ "^\\s*\\(' . classAccess . '\\|var\\)\\s\\+\\$"')
				let jvars = join(variables, ' ')
				let svars = split(jvars, '\$')
				let c_variables = {}
				for i in svars
					let c_var = matchstr(i,
							\ '^\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
					if c_var != ''
						let c_variables[c_var] = ''
					endif
				endfor


				let constants = filter(deepcopy(sccontent),
						\ 'v:val =~ "^\\s*const\\s\\+"')

				let jcons = join(constants, ' ')
				let scons = split(jcons, 'const')

				let c_constants = {}
				for i in scons
					let c_con = matchstr(i,
							\ '^\s*\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
					if c_con != ''
						let c_constants[c_con] = ''
					endif
				endfor

				let all_values = {}
				call extend(all_values, c_functions)
				call extend(all_values, c_variables)
				call extend(all_values, c_constants)

				for m in sort(keys(all_values))
					if m =~ '^'.a:base && m !~ '::'
						call add(res, m)
					elseif m =~ '::'.a:base
						call add(res2, m)
					endif
				endfor

				let start_list = res + res2

				let final_list = []
				for i in start_list
					if has_key(c_variables, i)
						let class = ' '
						if all_values[i] != ''
							let class = i.' class '
						endif
						let final_list +=
								\ [{'word':i,
								\   'info':class.all_values[i],
								\   'menu':class.all_values[i],
								\   'kind':'v'}]
					else
						let final_list +=
								\ [{'word':substitute(i, '.*::', '', ''),
								\   'info':i.all_values[i].')',
								\   'menu':i.all_values[i].')',
								\   'kind':'f'}]
					endif
				endfor

				return final_list

			endif

		endif

		if a:base =~ '^\$'
			let adddollar = '$'
		else
			let adddollar = ''
		endif
		let file = getline(1, '$')
		let jfile = join(file, ' ')
		let sfile = split(jfile, '\$')
		let int_vars = {}
		for i in sfile
			if i =~ '^\$[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*=\s*new'
				let val = matchstr(i, '^[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*').'->'
			else
				let val = matchstr(i, '^[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*')
			endif
			if val !~ ''
				let int_vars[adddollar.val] = ''
			endif
		endfor

		" ctags has good support for PHP, use tags file for external
		" variables
		let fnames = join(map(tagfiles(), 'escape(v:val, " \\#%")'))
		let ext_vars = {}
		if fnames != ''
			let sbase = substitute(a:base, '^\$', '', '')
			exe 'silent! vimgrep /^'.sbase.'.*\tv\(\t\|$\)/j '.fnames
			let qflist = getqflist()
			if len(qflist) > 0
				for field in qflist
					let item = matchstr(field['text'], '^[^[:space:]]\+')
					" Add -> if it is possible object declaration
					let classname = ''
					if field['text'] =~ item.'\s*=\s*new\s\+'
						let item = item.'->'
						let classname = matchstr(field['text'],
								\ '=\s*new\s\+\zs[a-zA-Z_0-9\x7f-\xff]\+\ze')
					endif
					let ext_vars[adddollar.item] = classname
				endfor
			endif
		endif

		" Now we have all variables in int_vars dictionary
		call extend(int_vars, ext_vars)

		" Internal solution for finding functions in current file.
		let file = getline(1, '$')
		call filter(file,
				\ 'v:val =~ "function\\s\\+&\\?[a-zA-Z_\\x7f-\\xff][a-zA-Z_0-9\\x7f-\\xff]*\\s*("')
		let fnames = join(map(tagfiles(), 'escape(v:val, " \\#%")'))
		let jfile = join(file, ' ')
		let int_values = split(jfile, 'function\s\+')
		let int_functions = {}
		for i in int_values
			let f_name = matchstr(i,
					\ '^&\?\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
			let f_args = matchstr(i,
					\ '^&\?[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*(\zs.\{-}\ze)\_s*{')
			let int_functions[f_name.'('] = f_args.')'
		endfor

		" Prepare list of functions from tags file
		let ext_functions = {}
		if fnames != ''
			exe 'silent! vimgrep /^'.a:base.'.*\tf\(\t\|$\)/j '.fnames
			let qflist = getqflist()
			if len(qflist) > 0
				for field in qflist
					" File name
					let item = matchstr(field['text'], '^[^[:space:]]\+')
					let fname = matchstr(field['text'], '\t\zs\f\+\ze')
					let prototype = matchstr(field['text'],
							\ 'function\s\+&\?[^[:space:]]\+\s*(\s*\zs.\{-}\ze\s*)\s*{\?')
					let ext_functions[item.'('] = prototype.') - '.fname
				endfor
			endif
		endif

		let all_values = {}
		call extend(all_values, int_functions)
		call extend(all_values, ext_functions)
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
						\   'info':i.all_values[i],
						\   'menu':i.all_values[i],
						\   'kind':'f'}]
			endif
		endfor

		return final_list
	endif

	if a:base =~ '^\$'
		" Complete variables
		" Built-in variables {{{
		let g:php_builtin_vars = {'$GLOBALS':'',
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
								\ '$this':''
								\ }
		" }}}

		" Internal solution for current file.
		let file = getline(1, '$')
		let jfile = join(file, ' ')
		let int_vals = split(jfile, '\ze\$')
		let int_vars = {}
		for i in int_vals
			if i =~ '^\$[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*=\s*new'
				let val = matchstr(i,
						\ '^\$[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*').'->'
			else
				let val = matchstr(i,
						\ '^\$[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*')
			endif
			if val != ''
				let int_vars[val] = ''
			endif
		endfor

		call extend(int_vars,g:php_builtin_vars)

		" ctags has support for PHP, use tags file for external variables
		let fnames = join(map(tagfiles(), 'escape(v:val, " \\#%")'))
		let ext_vars = {}
		if fnames != ''
			let sbase = substitute(a:base, '^\$', '', '')
			exe 'silent! vimgrep /^'.sbase.'.*\tv\(\t\|$\)/j '.fnames
			let qflist = getqflist()
			if len(qflist) > 0
				for field in qflist
					let item = '$'.matchstr(field['text'], '^[^[:space:]]\+')
					let m_menu = ''
					" Add -> if it is possible object declaration
					if field['text'] =~ item.'\s*=\s*new\s\+'
						let item = item.'->'
						let m_menu = matchstr(field['text'],
								\ '=\s*new\s\+\zs[a-zA-Z_0-9\x7f-\xff]\+\ze')
					endif
					let ext_vars[item] = m_menu
				endfor
			endif
		endif

		call extend(int_vars, ext_vars)
		let g:a0 = keys(int_vars)

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
				let int_dict += [{'word':i, 'info':class.int_vars[i], 'menu':class.int_vars[i], 'kind':'v'}]
			else
				let int_dict += [{'word':i, 'kind':'v'}]
			endif
		endfor

		return int_dict

	else
		" Complete everything else -
		"  + functions,  DONE
		"  + keywords of language DONE
		"  + defines (constant definitions), DONE
		"  + extend keywords for predefined constants, DONE
		"  + classes (after new), DONE
		"  + limit choice after -> and :: to funcs and vars DONE

		" Internal solution for finding functions in current file.
		let file = getline(1, '$')
		call filter(file,
				\ 'v:val =~ "function\\s\\+&\\?[a-zA-Z_\\x7f-\\xff][a-zA-Z_0-9\\x7f-\\xff]*\\s*("')
		let fnames = join(map(tagfiles(), 'escape(v:val, " \\#%")'))
		let jfile = join(file, ' ')
		let int_values = split(jfile, 'function\s\+')
		let int_functions = {}
		for i in int_values
			let f_name = matchstr(i,
					\ '^&\?\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
			let f_args = matchstr(i,
					\ '^&\?[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*(\s*\zs.\{-}\ze\s*)\_s*{')
			let int_functions[f_name.'('] = f_args.')'
		endfor

		" Prepare list of functions from tags file
		let ext_functions = {}
		if fnames != ''
			exe 'silent! vimgrep /^'.a:base.'.*\tf\(\t\|$\)/j '.fnames
			let qflist = getqflist()
			if len(qflist) > 0
				for field in qflist
					" File name
					let item = matchstr(field['text'], '^[^[:space:]]\+')
					let fname = matchstr(field['text'], '\t\zs\f\+\ze')
					let prototype = matchstr(field['text'],
							\ 'function\s\+&\?[^[:space:]]\+\s*(\s*\zs.\{-}\ze\s*)\s*{\?')
					let ext_functions[item.'('] = prototype.') - '.fname
				endfor
			endif
		endif

		" All functions
		call extend(int_functions, ext_functions)
		call extend(int_functions, g:php_builtin_functions)

		" Internal solution for finding constants in current file
		let file = getline(1, '$')
		call filter(file, 'v:val =~ "define\\s*("')
		let jfile = join(file, ' ')
		let int_values = split(jfile, 'define\s*(\s*')
		let int_constants = {}
		for i in int_values
			let c_name = matchstr(i, '\(["'']\)\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze\1')
			" let c_value = matchstr(i,
			" \ '\(["'']\)[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\1\s*,\s*\zs.\{-}\ze\s*)')
			if c_name != ''
				let int_constants[c_name] = '' " c_value
			endif
		endfor

		" Prepare list of constants from tags file
		let fnames = join(map(tagfiles(), 'escape(v:val, " \\#%")'))
		let ext_constants = {}
		if fnames != ''
			exe 'silent! vimgrep /^'.a:base.'.*\td\(\t\|$\)/j '.fnames
			let qflist = getqflist()
			if len(qflist) > 0
				for field in qflist
					let item = matchstr(field['text'], '^[^[:space:]]\+')
					let ext_constants[item] = ''
				endfor
			endif
		endif

		" All constants
		call extend(int_constants, ext_constants)
		" Treat keywords as constants

		let all_values = {}

		" One big dictionary of functions
		call extend(all_values, int_functions)

		" Add constants
		call extend(all_values, int_constants)
		" Add keywords
		call extend(all_values, g:php_keywords)

		for m in sort(keys(all_values))
			if m =~ '^'.a:base
				call add(res, m)
			endif
		endfor

		let int_list = res

		let final_list = []
		for i in int_list
			if has_key(int_functions, i)
				let final_list +=
						\ [{'word':i,
						\   'info':i.int_functions[i],
						\   'menu':i.int_functions[i],
						\   'kind':'f'}]
			elseif has_key(int_constants, i)
				let final_list += [{'word':i, 'kind':'d'}]
			else
				let final_list += [{'word':i}]
			endif
		endfor

		return final_list

	endif

endfunction

function! phpcomplete#GetClassName(scontext) " {{{
	" Get class name
	" Class name can be detected in few ways:
	" @var $myVar class
	" line above
	" or line in tags file

	if a:scontext =~ '\$this->' || a:scontext =~ '\(self\|static\)::'
		let i = 1
		while i < line('.')
			let line = getline(line('.')-i)

			" Don't complete self:: or $this if outside of a class
			" (assumes correct indenting)
			if line =~ '^}'
				return ''
			endif

            if line =~ '^abstract\s*class'
                let classname = matchstr(line, '^abstract\s*class \zs[a-zA-Z]\w\+\ze\(\s*\|$\)')
                return classname
            elseif line =~ '^class'
                let classname = matchstr(line, '^class \zs[a-zA-Z]\w\+\ze\(\s*\|$\)')
                return classname
            else
				let i += 1
				continue
			endif
		endwhile
	else
		let object = matchstr(a:scontext, '\zs[a-zA-Z_0-9\x7f-\xff]\+\ze->')
		let i = 1
		while i < line('.')
			let line = getline(line('.')-i)
			if line =~ '^\s*\*\/\?\s*$'
				let i += 1
				continue
			else
				if line =~ '@var\s\+\$'.object.'\s\+[a-zA-Z_0-9\x7f-\xff]\+'
					let classname = matchstr(line, '@var\s\+\$'.object.'\s\+\zs[a-zA-Z_0-9\x7f-\xff]\+')
					return classname
				else
					break
				endif
			endif
		endwhile

		" do in-file lookup of $var = new Class
		let i = 1
		while i < line('.')
			let line = getline(line('.')-i)
			if line =~ '^\s*\$'.object.'\s*=\s*new\s\+[a-zA-Z_0-9\x7f-\xff]\+'

				let classname = matchstr(line, '\$'.object.'\s*=\s*new \zs[a-zA-Z_0-9\x7f-\xff]\+')
				return classname
			else
				let i += 1
				continue
			endif
		endwhile

		" do in-file lookup for Class::getInstance()
		let i = 1
		while i < line('.')
			let line = getline(line('.')-i)
			if line =~ '^\s*\$'.object.'\s*=&\?\s*\s\+[a-zA-Z_0-9\x7f-\xff]\+::getInstance\+'

				let classname = matchstr(line, '\$'.object.'\s*=&\?\s*\zs[a-zA-Z_0-9\x7f-\xff]\+\ze::getInstance\+')
				return classname
			else
				let i += 1
				continue
			endif
		endwhile

		" check Constant lookup
		let constant_object = matchstr(a:scontext, '\zs[a-zA-Z_0-9\x7f-\xff]\+\ze::')
		if constant_object != ''
			return constant_object
		endif

		" OK, first way failed, now check tags file(s)
		let fnames = join(map(tagfiles(), 'escape(v:val, " \\#%")'))
		exe 'silent! vimgrep /^'.object.'.*\$'.object.'.*=\s*new\s\+.*\tv\(\t\|$\)/j '.fnames
		let qflist = getqflist()
		if len(qflist) == 0
			return ''
		else
			" In all properly managed projects it should be one item list, even if it
			" *is* longer we cannot solve conflicts, assume it is first element
			let classname = matchstr(qflist[0]['text'], '=\s*new\s\+\zs[a-zA-Z_0-9\x7f-\xff]\+\ze')
			return classname
		endif
	endif
endfunction
" }}}
function! phpcomplete#GetClassLocation(classname) " {{{
	" Check classname may be name of built in object
	if !exists("g:php_omni_bi_classes")
		let g:php_omni_bi_classes = {}
		for i in keys(g:php_builtin_object_functions)
			let g:php_omni_bi_classes[substitute(i, '::.*$', '', '')] = ''
		endfor
	endif
	if has_key(g:php_omni_bi_classes, a:classname)
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

	" Get class location
	for fname in tagfiles()
		let fhead = fnamemodify(fname, ":h")
		if fhead != ''
			let psep = '/' " Note: slash is potential problem!
			let fhead .= psep
		endif
		let fname = escape(fname, " \\")
		exe 'silent! vimgrep /^'.a:classname.'.*\tc\(\t\|$\)/j '.fname
		let qflist = getqflist()
		" As in GetClassName we can manage only one element if it exists
		if len(qflist) > 0
			let classlocation = matchstr(qflist[0]['text'], '\t\zs\f\+\ze\t')
		else
			return ''
		endif
		" And only one class location
		if classlocation != ''
			if matchstr(classlocation,'^/') != '/'
				let classlocation = fhead.classlocation
			endif
			return classlocation
		else
			return ''
		endif
	endfor

endfunction
" }}}

function! phpcomplete#GetClassContents(file, name) " {{{
	let cfile = join(a:file, "\n")
	" We use new buffer and (later) normal! because
	" this is the most efficient way. The other way
	" is to go through the looong string looking for
	" matching {}

	" remember the window we started at
	let phpcomplete_original_window = winnr()

	below 1new
	0put =cfile
	let endline = search('{')
	call search('class\s\+'.a:name)
	let cfline = line('.')
	let content = join(getline(cfline, endline),"\n")
	" Catch extends
	if content =~ 'extends'
		let extends_class = matchstr(content, 'class\_s\+'.a:name.'\_s\+extends\_s\+\zs[a-zA-Z_0-9\x7f-\xff]\+\ze')
	else
		let extends_class = ''
	endif
	call search('{')
	normal! %

	let classcontent = cfile

	bw! %

	" go back to original window
	exe phpcomplete_original_window.'wincmd w'

	if extends_class != ''
		let classlocation = phpcomplete#GetClassLocation(extends_class)
		if filereadable(classlocation)
			let classfile = readfile(classlocation)
			let classcontent .= "\n".phpcomplete#GetClassContents(classfile, extends_class)
		endif
	endif

	return classcontent
endfunction
" }}}

function! phpcomplete#LoadData() " {{{
" Keywords/reserved words, all other special things {{{
" Later it is possible to add some help to values, or type of
" defined variable
runtime! misc/php_keywords.vim

" Built in functions
" You can regenerate this list with the bin/extract_functions.php
runtime! misc/php_builtin_functions.vim

" Built in class methods
" You can regenerate this list with the bin/extract_functions.php
runtime! misc/php_builtin_object_functions.vim


" Add control structures (they are outside regular pattern of PHP functions)
let php_control = {
			\ 'include(': 'string filename | resource',
			\ 'include_once(': 'string filename | resource',
			\ 'require(': 'string filename | resource',
			\ 'require_once(': 'string filename | resource',
			\ }
call extend(g:php_builtin_functions, php_control)
endfunction
" }}}
" vim:set foldmethod=marker:

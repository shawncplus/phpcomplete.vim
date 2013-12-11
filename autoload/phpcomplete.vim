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
"			Enables completion of variables and functions in "everything under the sun" fashion
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
"		let g:phpcomplete_cache_taglists = 1/0 [default 1]
"			When enabled the taglist() lookups will be cached and subsequent searches
"			for the same pattern will not check the tagfiles any more, thus making the
"			lookups faster. Cache expiration is based on the mtimes of the tag files.
"
"		let g:phpcomplete_add_function_extensions = [...]
"		let g:phpcomplete_add_class_extensions = [...]
"		let g:phpcomplete_add_interface_extensions = [...]
"		let g:phpcomplete_add_constant_extensions = [...]
"		let g:phpcomplete_remove_function_extensions = [...]
"		let g:phpcomplete_remove_class_extensions = [...]
"		let g:phpcomplete_remove_interface_extensions = [...]
"		let g:phpcomplete_remove_constant_extensions = [...]
"			Built-in functions, classes, interfaces and constatns are grouped together by the extension.
"			Only the enabled extensions will be loaded for the plugin, the defaultly enabled ones can be
"			found in.
"
"				g:phpcomplete_active_function_extensions
"				g:phpcomplete_active_class_extensions
"				g:phpcomplete_active_interface_extensions
"				g:phpcomplete_active_constant_extensions
"
"			If you want to enable an extension that is disabled you can add it to the enabled lists
"			in your vimrc. Let's say you want to have the mongo extension's classes and functions
"			to be completed by the plugin, you can add it like this (in your `.vimrc`):
"
"				let g:phpcomplete_add_class_extensions = ['mongo']
"				let g:phpcomplete_add_function_extensions = ['mongo']
"
"			If you want to disable an otherwise enabled one, use the ..._remove_... version of these options:
"
"				let g:phpcomplete_remove_function_extensions = ['xslt_php_4']
"				let g:phpcomplete_remove_constant_extensions = ['xslt_php_4']
"
"			For the available extension files, check the directories under `misc/`
"
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

if !exists('g:phpcomplete_cache_taglists')
	let g:phpcomplete_cache_taglists = 1
endif

if !exists('s:cache_classstructures')
	let s:cache_classstructures = {}
endif

if !exists('s:cache_tags')
	let s:cache_tags = {}
endif

if !exists('s:cache_tags_checksum')
	let s:cache_tags_checksum = ''
endif


let g:phpcomplete_active_function_extensions = [
			\'apache', 'apc', 'apd', 'arrays', 'bc_math', 'bzip2', 'calendar', 'classes_objects', 'ctype', 'curl', 'date_time', 'dba', 'dbase',
			\'directories', 'dom', 'enchant', 'error_handling', 'exif', 'fastcgi_process_manager', 'fileinfo', 'filesystem', 'filter', 'ftp',
			\'function_handling', 'gd', 'geoip', 'gettext', 'gmp', 'hash', 'iconv', 'iis', 'json', 'ldap', 'libxml', 'mail', 'math', 'mcrypt',
			\'memcache', 'mhash', 'misc', 'mongo', 'msql', 'mssql', 'multibyte_string', 'mysql', 'mysqli', 'network', 'nsapi', 'oci8', 'odbc',
			\'openssl', 'output_control', 'parsekit', 'password_hashing', 'pcntl', 'pcre', 'php_options_info', 'posix', 'posix_regex', 'postgresql',
			\'program_execution', 'ps', 'pspell', 'readline', 'recode', 'runkit', 'sessions', 'shared_memory', 'simplexml', 'snmp', 'soap', 'sockets',
			\'solr', 'spl', 'sqlite', 'sqlsrv', 'streams', 'strings', 'tidy', 'tokenizer', 'urls', 'variable_handling', 'wddx', 'xml_parser',
			\'xmlwriter', 'xslt_php_4', 'zip', 'zlib']
let g:phpcomplete_active_class_extensions = [
			\'apc', 'curl', 'date_time', 'directories', 'dom', 'imagemagick', 'libxml', 'memcache', 'memcached', 'mongo', 'mysqli', 'pdo', 'phar',
			\'predefined_exceptions', 'predefined_interfaces_and_classes', 'reflection', 'sessions', 'simplexml', 'snmp', 'soap', 'solr', 'sphinx',
			\'spl', 'sqlite3', 'streams', 'tidy', 'varnish', 'xmlreader', 'xsl', 'zip']
let g:phpcomplete_active_interface_extensions = [
			\'json', 'predefined_interfaces_and_classes', 'spl']
let g:phpcomplete_active_constant_extensions = [
			\'apc', 'apd', 'arrays', 'calendar', 'classkit', 'command_line_usage', 'common', 'curl', 'date_time', 'directories', 'dom', 'error_handling', 'exif',
			\'fileinfo', 'filesystem', 'filter', 'ftp', 'gd', 'geoip', 'gmp', 'handling_file_uploads', 'hash', 'iconv', 'iis', 'imagemagick', 'imap',
			\'json', 'ldap', 'libxml', 'list_of_parser_tokens', 'list_of_reserved_words', 'math', 'mcrypt', 'memcache', 'mhash', 'misc', 'ms_sql_server_pdo',
			\'msql', 'mssql', 'multibyte_string', 'mysql', 'mysql_pdo', 'mysqli', 'network', 'odbc', 'openssl', 'output_control', 'parsekit', 'password_hashing',
			\'pcntl', 'pcre', 'pdo', 'php_options_info', 'phpini_directives', 'posix', 'posix_regex', 'postgresql', 'program_execution', 'pspell', 'runkit',
			\'sessions', 'snmp', 'soap', 'sockets', 'solr', 'sphinx', 'spl', 'sqlite', 'sqlite3', 'sqlsrv', 'streams', 'strings', 'tidy', 'types', 'urls',
			\'variable_handling', 'varnish', 'xml_parser', 'xsl', 'xslt_php_4', 'zlib']

if exists('g:phpcomplete_add_function_extensions')
	let g:phpcomplete_active_function_extensions += g:phpcomplete_add_function_extensions
endif
if exists('g:phpcomplete_remove_function_extensions')
	call filter(g:phpcomplete_active_function_extensions, 'index(g:phpcomplete_remove_function_extensions, v:val) == -1')
endif

if exists('g:phpcomplete_add_class_extensions')
	let g:phpcomplete_active_class_extensions += g:phpcomplete_add_class_extensions
endif
if exists('g:phpcomplete_remove_class_extensions')
	call filter(g:phpcomplete_active_class_extensions, 'index(g:phpcomplete_remove_class_extensions, v:val) == -1')
endif

if exists('g:phpcomplete_add_interface_extensions')
	let g:phpcomplete_active_interface_extensions += g:phpcomplete_add_interface_extensions
endif
if exists('g:phpcomplete_remove_interface_extensions')
	call filter(g:phpcomplete_active_interface_extensions, 'index(g:phpcomplete_remove_interface_extensions, v:val) == -1')
endif

if exists('g:phpcomplete_add_constant_extensions')
	let g:phpcomplete_active_constant_extensions += g:phpcomplete_add_constant_extensions
endif
if exists('g:phpcomplete_remove_constant_extensions')
	call filter(g:phpcomplete_active_constant_extensions, 'index(g:phpcomplete_remove_constant_extensions, v:val) == -1')
endif

let s:script_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

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
			let b:phpbegin = phpbegin
			let b:compl_context = phpcomplete#GetCurrentInstruction(line('.'), col('.') - 1, phpbegin)

			" chop of the "base" from the end of the current instruction
			let b:compl_context = substitute(b:compl_context, '\s*\$\?\([a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\)*$', '', '')

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

	let [current_namespace, imports] = phpcomplete#GetCurrentNameSpace(getline(0, line('.')))

	if context =~? '^use\s'
		return phpcomplete#CompleteUse(a:base)
	endif

	if context =~ '\(->\|::\)$'
		" {{{
		" Get name of the class
		let classname = phpcomplete#GetClassName(line('.'), context, current_namespace, imports)

		" Get location of class definition, we have to iterate through all
		if classname != ''
			if classname =~ '\'
				" split the last \ segment as a classname, everything else is the namespace
				let classname_parts = split(classname, '\')
				let namespace = join(classname_parts[0:-2], '\')
				let classname = classname_parts[-1]
			else
				let namespace = '\'
			endif
			let classlocation = phpcomplete#GetClassLocation(classname, namespace)
		else
			let classlocation = ''
		endif

		if classlocation != ''
			if classlocation == 'VIMPHP_BUILTINOBJECT' && has_key(g:php_builtin_classes, classname)
				return phpcomplete#CompleteBuiltInClass(context, classname, a:base)
			endif

			if filereadable(classlocation)
				let classfile = readfile(classlocation)
				let classcontent = ''
				let classcontent .= "\n".phpcomplete#GetClassContents(classlocation, classname)
				let sccontent = split(classcontent, "\n")
				let visibility = expand('%:p') == fnamemodify(classlocation, ':p') ? 'private' : 'public'

				return phpcomplete#CompleteUserClass(context, a:base, sccontent, visibility)
			endif
		endif

		return phpcomplete#CompleteUnknownClass(a:base, context)
		" }}}
	elseif context =~? 'implements'
		return phpcomplete#CompleteClassName(a:base, ['i'], current_namespace, imports)
	elseif context =~? 'extends'
		let kinds = context =~? 'class\s' ? ['c'] : ['i']
		return phpcomplete#CompleteClassName(a:base, kinds, current_namespace, imports)
	elseif context =~? 'new'
		return phpcomplete#CompleteClassName(a:base, ['c'], current_namespace, imports)
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
			let tags = phpcomplete#GetTaglist('^\('.namespace_match_pattern.'\|'.classname_match_pattern.'\)')
		else
			let tags = phpcomplete#GetTaglist('^'.namespace_match_pattern)
		endif

		for tag in tags
			if tag.kind ==? 'n' && tag.name =~? '^'.namespace_match_pattern
				call add(res, {'word': tag.name, 'kind': 'n', 'menu': tag.filename, 'info': tag.filename })
			elseif has_key(tag, 'namespace') && (tag.kind ==? 'c' || tag.kind ==? 'i') && tag.namespace ==? namespace_for_class
				call add(res, {'word': namespace_for_class.'\'.tag.name, 'kind': tag.kind, 'menu': tag.filename, 'info': tag.filename })
			endif
		endfor
	endif

	if base !~ '\'
		let builtin_classnames = filter(keys(copy(g:php_builtin_classnames)), 'v:val =~? "^'.classname_match_pattern.'"')
		for classname in builtin_classnames
			call add(res, {'word': classname, 'kind': 'c'})
		endfor
		let builtin_interfacenames = filter(keys(copy(g:php_builtin_interfacenames)), 'v:val =~? "^'.classname_match_pattern.'"')
		for interfacename in builtin_interfacenames
			call add(res, {'word': interfacename, 'kind': 'i'})
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
		if c_name != '' && c_name =~# '^'.substitute(a:base, '\\', '\\\\', 'g')
			let int_constants[leading_slash.c_name] = ''
		endif
	endfor

	" Prepare list of functions from tags file
	let ext_functions  = {}
	let ext_constants  = {}
	let ext_classes    = {}
	let ext_interfaces = {}
	let ext_namespaces = {}

	let base = substitute(a:base, '^\\', '', '')
	let [tag_match_pattern, namespace_for_tag] = phpcomplete#ExpandClassName(a:base, a:current_namespace, a:imports)
	let namespace_match_pattern  = substitute((namespace_for_tag == '' ? '' : namespace_for_tag.'\').tag_match_pattern, '\\', '\\\\', 'g')

	let tags = []
	if len(namespace_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion && len(tag_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion && tag_match_pattern != namespace_match_pattern
		let tags = phpcomplete#GetTaglist('\c^\('.tag_match_pattern.'\|'.namespace_match_pattern.'\)')
	elseif len(namespace_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion
		let tags = phpcomplete#GetTaglist('\c^'.namespace_match_pattern)
	elseif len(tag_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion
		let tags = phpcomplete#GetTaglist('\c^'.tag_match_pattern)
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
			elseif tag.kind ==? 'c' || tag.kind ==? 'i'
				let info = ' - '.tag.filename

				let key = ''
				if !has_key(tag, 'namespace')
					let key = tag.name
				else
					if tag.namespace ==? namespace_for_tag
						if leading_slash == ''
							let key = relative_name
						else
							let key = '\'.full_name
						endif
					endif
				endif

				if key != ''
					if tag.kind ==? 'c'
						let ext_classes[key] = info
					elseif tag.kind ==? 'i'
						let ext_interfaces[key] = info
					endif
				endif
			endif
		endif
	endfor

	let builtin_constants  = {}
	let builtin_classnames = {}
	let builtin_interfaces = {}
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
		for [interfacename, info] in items(g:php_builtin_interfacenames)
			if interfacename =~? '^'.base
				let builtin_interfaces[leading_slash.classname] = info
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
			if import.kind ==? 'c'
				if import.builtin
					let builtin_classnames[imported_name] = ' '.import.name
				else
					let ext_classes[imported_name] = ' '.import.name.' - '.import.filename
				endif
			elseif import.kind ==? 'i'
				if import.builtin
					let builtin_interfaces[imported_name] = ' '.import.name
				else
					let ext_interfaces[imported_name] = ' '.import.name.' - '.import.filename
				endif
			endif

			" no builtin interfaces
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

	" Add external interfaces
	call extend(all_values, ext_interfaces)

	" Add built-in classes
	call extend(all_values, builtin_classnames)

	" Add built-in interfaces
	call extend(all_values, builtin_interfaces)

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
		elseif has_key(ext_interfaces, i) || has_key(builtin_interfaces, i)
			let info = has_key(ext_interfaces, i) ? ext_interfaces[i] : builtin_interfaces[i].' - builtin'
			let final_list += [{'word':i, 'kind': 'i', 'menu': info, 'info': i.info}]
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

function! phpcomplete#CompleteUnknownClass(base, context) " {{{
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
	if a:context =~ '::'
		let variables = filter(deepcopy(file),
					\ 'v:val =~ "^\\s*\\(static\\|static\\s\\+\\(public\\|var\\)\\|\\(public\\|var\\)\\s\\+static\\)\\s\\+\\$"')
	elseif a:context =~ '->'
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
	let tags = phpcomplete#GetTaglist('^'.substitute(a:base, '^\$', '', ''))
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
		if i =~? '^\$[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*=\s*new'
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
	let tags = phpcomplete#GetTaglist('\C^'.substitute(a:base, '^\$', '', ''))
	for tag in tags
		if tag.kind ==? 'v'
			let item = tag.name
			let m_menu = ''
			if tag.cmd =~? tag['name'].'\s*=\s*new\s\+'
				let m_menu = matchstr(tag.cmd,
							\ '\c=\s*new\s\+\zs[a-zA-Z_0-9\x7f-\xff]\+\ze')
			endif
			let ext_vars['$'.item] = m_menu
		endif
	endfor

	call extend(int_vars, ext_vars)

	for m in sort(keys(int_vars))
		if m =~# '^\'.a:base
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

function! phpcomplete#CompleteClassName(base, kinds, current_namespace, imports) " {{{
	let kinds = sort(a:kinds)
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
	let filterstr = ''

	if kinds == ['c', 'i']
		let filterstr = 'v:val =~? "\\(class\\|interface\\)\\s\\+[a-zA-Z_\\x7f-\\xff][a-zA-Z_0-9\\x7f-\\xff]*\\s*"'
	elseif kinds == ['c']
		let filterstr = 'v:val =~? "class\\s\\+[a-zA-Z_\\x7f-\\xff][a-zA-Z_0-9\\x7f-\\xff]*\\s*"'
	elseif kinds == ['i']
		let filterstr = 'v:val =~? "interface\\s\\+[a-zA-Z_\\x7f-\\xff][a-zA-Z_0-9\\x7f-\\xff]*\\s*"'
	endif

	call filter(file, filterstr)

	for line in file
		let c_name = matchstr(line, '\c\(class\|interface\)\s*\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*')
		let kind = (line =~? '^\s*class' ? 'c' : 'i')
		if c_name != '' && c_name =~? '^'.base
			call add(res, {'word': c_name, 'kind': kind})
		endif
	endfor

	" resolve the typed in part with namespaces (if theres a \ in it)
	let [tag_match_pattern, namespace_for_class] = phpcomplete#ExpandClassName(a:base, a:current_namespace, a:imports)

	let tags = []
	if len(tag_match_pattern) >= g:phpcomplete_min_num_of_chars_for_namespace_completion
		let tags = phpcomplete#GetTaglist('^'.tag_match_pattern)
	endif

	if len(tags)
		for tag in tags
			if !has_key(tag, 'namespace') && index(kinds, tag.kind) != -1 && tag.name =~? '^'.base
				call add(res, {'word': leading_slash.tag.name, 'kind': tag.kind, 'menu': tag.filename, 'info': tag.filename })
			endif
			if has_key(tag, 'namespace') && index(kinds, tag.kind) != -1 && tag.namespace ==? namespace_for_class
				let full_name = tag.namespace.'\'.tag.name " absolute namespaced name (without leading '\')

				let base_parts = split(a:base, '\')
				if len(base_parts) > 1
					let namespace_part = join(base_parts[0:-2], '\')
				else
					let namespace_part = ''
				endif
				let relative_name = (namespace_part == '' ? '' : namespace_part.'\').tag.name

				call add(res, {'word': leading_slash == '\' ? leading_slash.full_name : relative_name, 'kind': tag.kind, 'menu': tag.filename, 'info': tag.filename })
			endif
		endfor
	endif

	" look for built in classnames and interfaces
	let base_parts = split(base, '\')
	if a:current_namespace == '\' || (leading_slash == '\' && len(base_parts) < 2)
		if index(kinds, 'c') != -1
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

		if index(kinds, 'i') != -1
			let builtin_interfaces = filter(keys(copy(g:php_builtin_interfaces)), 'v:val =~? "^'.substitute(a:base, '\\', '', 'g').'"')
			for interfacename in builtin_interfaces
				call add(res, {'word': leading_slash.interfacename, 'kind': 'i', 'menu': ''})
			endfor
		endif
	endif

	" add matching imported things
	for [imported_name, import] in items(a:imports)
		if imported_name =~? '^'.base && index(kinds, import.kind) != -1
			let menu = import.name.(import.builtin ? ' - builtin' : '')
			call add(res, {'word': imported_name, 'kind': import.kind, 'menu': menu})
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

function! phpcomplete#EvaluateModifiers(modifiers, required_modifiers, prohibited_modifiers) " {{{
	" if theres no modifier, and no modifier is allowed and no modifier is required
	if len(a:modifiers) == 0 && len(a:required_modifiers) == 0
		return 1
	else
		" check if every requred modifier is present
		for required_modifier in a:required_modifiers
			if index(a:modifiers, required_modifier) == -1
				return 0
			endif
		endfor

		for modifier in a:modifiers
			" if the modifier is prohibited its a no match
			if index(a:prohibited_modifiers, modifier) != -1
				return 0
			endif
		endfor

		" anything that is not explicitly required or prohibited is allowed
		return 1
	endif
endfunction
" }}}

function! phpcomplete#CompleteUserClass(context, base, sccontent, visibility) " {{{
	let final_list = []
	let res  = []

	let required_modifiers = []
	let prohibited_modifiers = []

	if a:visibility == 'public'
		let prohibited_modifiers += ['private', 'protected']
	endif

	" limit based on context to static or normal methods
    let static_con = ''
	if a:context =~ '::$'
		if g:phpcomplete_relax_static_constraint != 1
            let required_modifiers += ['static']
		endif
	elseif a:context =~ '->$'
        let prohibited_modifiers += ['static']
	endif

	let all_function = filter(deepcopy(a:sccontent),
				\ 'v:val =~ "^\\s*\\(public\\s\\+\\|protected\\s\\+\\|private\\s\\+\\|final\\s\\+\\|abstract\\s\\+\\|static\\s\\+\\)*function"')

	let functions = []
	for i in all_function
		let modifiers = split(matchstr(tolower(i), '\zs.\+\zefunction'), '\s\+')
		if phpcomplete#EvaluateModifiers(modifiers, required_modifiers, prohibited_modifiers) == 1
			call add(functions, i)
		endif
	endfor

	let c_functions = {}
	let c_doc = {}
	for i in functions
		let f_name = matchstr(i,
					\ 'function\s*&\?\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
		let f_args = matchstr(i,
					\ 'function\s*&\?[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\s*(\zs.\{-}\ze)\_s*\({\|\_$\)')
		if f_name != ''
			let c_functions[f_name.'('] = f_args
			if g:phpcomplete_parse_docblock_comments
				let c_doc[f_name.'('] = phpcomplete#GetDocBlock(a:sccontent, 'function\s*\<'.f_name.'\>')
			endif
		endif
	endfor

	" limit based on context to static or normal attributes
	if a:context =~ '::$'
		" variables must have static to be accessed as static unlike functions
		let required_modifiers += ['static']
	endif
	let all_variable = filter(deepcopy(a:sccontent),
					\ 'v:val =~ "^\\s*\\(var\\s\\+\\|public\\s\\+\\|protected\\s\\+\\|private\\s\\+\\|final\\s\\+\\|abstract\\s\\+\\|static\\s\\+\\)\\+\\$"')

	let variables = []
	for i in all_variable
		let modifiers = split(matchstr(tolower(i), '\zs.\+\ze\$'), '\s\+')
		if phpcomplete#EvaluateModifiers(modifiers, required_modifiers, prohibited_modifiers) == 1
			call add(variables, i)
		endif
	endfor

	let jvars = join(variables, ' ')
	let svars = split(jvars, '\$')
	let c_variables = {}

	let var_index = 0
	for i in svars
		let c_var = matchstr(i,
					\ '^\zs[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*\ze')
		if c_var != ''
			if a:context =~ '::$'
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
		if stridx(m, a:base) == 0
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

function! phpcomplete#CompleteBuiltInClass(context, classname, base) " {{{
	let class_info = g:php_builtin_classes[a:classname]
	let res = []
	if a:context =~ '->$' " complete for everything instance related
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
	elseif a:context =~ '::$' " complete for everything static
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

function! phpcomplete#GetTaglist(pattern) " {{{

	let cache_checksum = ''
	if g:phpcomplete_cache_taglists == 1
		" build a string with  format of "<tagfile>:<mtime>$<tagfile2>:<mtime2>..."
		" to validate that the tags are not changed since the time we saved the results in cache
		for tagfile in sort(tagfiles())
			let cache_checksum .= fnamemodify(tagfile, ':p').':'.getftime(tagfile).'$'
		endfor

		if s:cache_tags_checksum != cache_checksum
			" tag file(s) changed
			" since we don't know where individual tags coming from when calling taglist() we zap the whole cache
			" no way to clear only the entries originating from the changed tag file
			let s:cache_tags = {}
		endif

		if has_key(s:cache_tags, a:pattern)
			return s:cache_tags[a:pattern]
		endif
	endif

	let tags = taglist(a:pattern)
	let s:cache_tags[a:pattern] = tags
	let has_key = has_key(s:cache_tags, a:pattern)
	let s:cache_tags_checksum = cache_checksum
	return tags
endfunction
" }}}

function! phpcomplete#GetCurrentInstruction(line_number, col_number, phpbegin) " {{{
	" locate the current instruction (up until the previous non comment or string ";" or php region start (<?php or <?) without newlines
	let col_number = a:col_number
	let line_number = a:line_number
	let line = getline(a:line_number)
	let instruction = ''
	let parent_depth = 0

	let phpbegin_length = len(matchstr(getline(a:phpbegin[0]), '\zs<?\(php\)\?\ze'))
	let phpbegin_end = [a:phpbegin[0], a:phpbegin[1] - 1 + phpbegin_length]

	" will hold the first place where a coma could have ended the match
	let first_coma_break_pos = -1

	while !(line_number == 1 && col_number == 1)
		let current_char = line[col_number]
		let synIDName = synIDattr(synID(line_number, col_number + 1, 0), 'name')

		" skip comments
		if synIDName =~? 'comment\|phpDocTags'
			let current_char = ''
		endif

		" if the current char should be considered
		if current_char != '' && parent_depth >= 0 && synIDName !~? 'comment\|string'

			" break if we are reached the previous statemenet,
			if current_char == ';'
				break
			endif

			" save the coma position for later use if theres a "naked" , possibly separating a parameter and it is not in a parented part
			if first_coma_break_pos == -1 && current_char == ','
				let first_coma_break_pos = len(instruction)
			endif

			" break if theres a "naked" = signaling end of rvalue, and it's not in a parented part
			if current_char == '='
				break
			endif

			" break if theres an unbalanced ( signaling a conditional or function call not part of the instruction
			if current_char == '('
				break
			endif

		endif

		" count nested darenthesis so we can tell if we need to break on a ';' or not (think of for (;;) loops)
		if (current_char == '(' || current_char == ')') && synIDName =~? 'phpBraceFunc\|phpParent\|Delimiter'
			if current_char == '('
				let parent_depth += 1
			elseif current_char == ')'
				let parent_depth -= 1
			endif
		endif

		" stop collecting chars if we see a function start { (think of first line in a function)
		if (current_char == '{' || current_char == '}') && synIDName =~? 'phpBraceFunc\|phpParent\|Delimiter'
			break
		endif

		" break if we are reached the php block start (<?php or <?)
		if [line_number, col_number] == phpbegin_end
			break
		endif

		let instruction = current_char.instruction

		" step a char or a line back if we are on the first column of the line already
		let col_number -= 1
		if col_number == -1
			let line_number -= 1
			let line = getline(line_number)
			let col_number = strlen(line)
		endif
	endwhile
	" strip leading whitespace
	let instruction = substitute(instruction, '^\s\+', '', '')

	" there were a "naked" coma in the instruction
	if first_coma_break_pos != -1
		if instruction !~? '^use' " use ... statements should not be broken up
			let pos = -1 * first_coma_break_pos + 1
			let instruction = instruction[pos :]
		endif
	endif

	" HACK to remove one line conditionals from code like "if ($foo) echo 'bar'"
	" what the plugin really need is a proper php tokenizer
	if instruction =~? '\c^\(if\|while\|foreach\|for\)\s*('
		" clear everything up until the first (
		let instruction = substitute(instruction, '^\(if\|while\|foreach\|for\)\s*(\s*', '', '')

		" lets iterate trough the instruction until we can find the pair for the opening (
		let i = 0
		let depth = 1
		while i < len(instruction)
			if instruction[i] == '('
				let depth += 1
			endif
			if instruction[i] == ')'
				let depth -= 1
			endif
			if depth == 0
				break
			end
			let i += 1
		endwhile
		let instruction = instruction[i + 1 : len(instruction)]
	endif

	" trim whitespace from the ends
	let instruction = substitute(instruction, '\v^(^\s+)|(\s+)$', '', 'g')

	return instruction
endfunction " }}}

function! phpcomplete#GetCallChainReturnType(classname_candidate, class_candidate_namespace, imports, methodstack) " {{{
	" Tries to get the classname and namespace for a chained method call like:
	"	$this->foo()->bar()->baz()->

	let classname_candidate = a:classname_candidate
	let class_candidate_namespace = a:class_candidate_namespace
	let methodstack = a:methodstack
	let unknown_result = ['', '']

	if (len(methodstack) == 1)
		let [classname_candidate, class_candidate_namespace] = phpcomplete#ExpandClassName(classname_candidate, class_candidate_namespace, a:imports)
		return [classname_candidate, class_candidate_namespace]
	else
		" Remove the first item from the stack
		call remove(methodstack, 0)
		let method_is_array = (methodstack[0] =~ '\v^[^[]+\[' ? 1 : 0)
		let method = matchstr(methodstack[0], '\v^\$*\zs[^[(]+\ze')

		let classlocation = phpcomplete#GetClassLocation(classname_candidate, class_candidate_namespace)

		if classlocation == 'VIMPHP_BUILTINOBJECT' && has_key(g:php_builtin_classes, classname_candidate)
			let class_info = g:php_builtin_classes[classname_candidate]
			if has_key(class_info['methods'], method)
				return phpcomplete#GetCallChainReturnType(class_info['methods'][method].return_type, '\', a:imports, methodstack)
			endif
			if has_key(class_info['properties'], method)
				return phpcomplete#GetCallChainReturnType(class_info['properties'][method].type, '\', a:imports, methodstack)
			endif
			if has_key(class_info['static_methods'], method)
				return phpcomplete#GetCallChainReturnType(class_info['static_methods'][method].return_type, '\', a:imports, methodstack)
			endif
			if has_key(class_info['static_properties'], method)
				return phpcomplete#GetCallChainReturnType(class_info['static_properties'][method].type, '\', a:imports, methodstack)
			endif

			return unknown_result

		elseif filereadable(classlocation)
			" Read the next method from the stack and extract only the name

			let classcontents = phpcomplete#GetCachedClassContents(classlocation, classname_candidate)

			" Get Structured information of all classes and subclasses including namespace and includes
			" try to find the method's return type in docblock comment
			for classstructure in classcontents
				let doclock_target_pattern = 'function\s\+'.method.'\|\(public\|private\|protected\|var\).\+\$'.method
				let doc_str = phpcomplete#GetDocBlock(split(classstructure.content, '\n'), doclock_target_pattern)
				if doc_str != ''
					break
				endif
			endfor
			if doc_str != ''
				let docblock = phpcomplete#ParseDocBlock(doc_str)
				if has_key(docblock.return, 'type') || has_key(docblock.var, 'type')
					let type = has_key(docblock.return, 'type') ? docblock.return.type : docblock.var.type

					" if we are looking for an array ...
					if method_is_array
						" ... and we got one, just return the class name
						if type =~ '\[\]$'
							let type = matchstr(type, '\v^[^[]+')
						else
							return unknown_result
						endif
					endif

					" there's a namespace in the type, threat the type as FQCN
					if type =~ '\\'
						let parts = split(substitute(type, '^\\', '', ''), '\')
						let class_candidate_namespace = join(parts[0:-2], '\')
						let classname_candidate = parts[-1]
						" check for renamed namepsace in imports
						if has_key(classstructure.imports, class_candidate_namespace)
							let class_candidate_namespace = classstructure.imports[class_candidate_namespace].name
						endif
					else
						" no namespace in the type, threat it as a relative classname
						let returnclass = type
						if has_key(classstructure.imports, returnclass)
							if has_key(classstructure.imports[returnclass], 'namespace')
								let fullnamespace = classstructure.imports[returnclass].namespace
							else
								let fullnamespace = class_candidate_namespace
							endif
						else
							let fullnamespace = class_candidate_namespace
						endif
						let [classname_candidate, class_candidate_namespace] = phpcomplete#ExpandClassName(returnclass, fullnamespace, a:imports)
					endif

					return phpcomplete#GetCallChainReturnType(classname_candidate, class_candidate_namespace, a:imports, methodstack)
				endif
			endif

			return unknown_result
		else
			return unknown_result
		endif
	endif
endfunction " }}}

function! phpcomplete#GetMethodStack(line) " {{{
	let methodstack = []
	let i = 0
	let end = len(a:line)

	let current_part = ''

	let parent_depth = 0
	let in_string = 0
	let string_start = ''

	let next_char = ''

	while i	< end
		let current_char = a:line[i]
		let next_char = i + 1 < end ? a:line[i + 1] : ''
		let prev_char = i >= 1 ? a:line[i - 1] : ''
		let prev_prev_char = i >= 2 ? a:line[i - 2] : ''

		if in_string == 0 && parent_depth == 0 && ((current_char == '-' && next_char == '>') || (current_char == ':' && next_char == ':'))
			call add(methodstack, current_part)
			let current_part = ''
			let i += 2
			continue
		endif

		" if it's looks like a string
		if current_char == "'" || current_char == '"'
			" and it is not escaped
			if prev_char != '\' || (prev_char == '\' && prev_prev_char == '\')
				" and we are in a string already
				if in_string
					" and that string started with this char too
					if current_char == string_start
						" clear the string mark
						let in_string = 0
					endif
				else " ... and we are not in a string
					" set the string mark
					let in_string = 1
					let string_start = current_char
				endif
			endif
		endif

		if !in_string && a:line[i] == '('
			let parent_depth += 1
		endif
		if !in_string && a:line[i] == ')'
			let parent_depth -= 1
		endif

		let current_part .= current_char
		let i += 1
	endwhile

	" add the last remaining part, this can be an empty string and this is expected
	" the empty string represents the completion base (which happen to be an empty string)
	if current_part != ''
		call add(methodstack, current_part)
	endif

	return methodstack
endfunction
" }}}

function! phpcomplete#GetClassName(start_line, context, current_namespace, imports) " {{{
	" Get class name
	" Class name can be detected in few ways:
	" @var $myVar class
	" in the same line (php 5.4 (new Class)-> syntax)
	" line above
	" or line in tags file

	let class_name_pattern = '[a-zA-Z_\x7f-\xff\\][a-zA-Z_0-9\x7f-\xff\\]*'
	let function_name_pattern = '[a-zA-Z_\x7f-\xff][a-zA-Z_0-9\x7f-\xff]*'

	let classname_candidate = ''
	let class_candidate_namespace = a:current_namespace
	let class_candidate_imports = a:imports
	let methodstack = phpcomplete#GetMethodStack(a:context)

	if a:context =~? '\$this->' || a:context =~? '\(self\|static\)::'
		let i = 1
		while i < a:start_line
			let line = getline(a:start_line - i)

			" Don't complete self:: or $this if outside of a class
			" (assumes correct indenting)
			if line =~ '^}'
				return ''
			endif

			if line =~? '^\s*abstract\s*class'
				let classname_candidate = matchstr(line, '\c^\s*abstract\s*class\s*\zs'.class_name_pattern.'\ze')
			elseif line =~? '^\s*class'
				let classname_candidate = matchstr(line, '\c^\s*class\s*\zs'.class_name_pattern.'\ze')
			else
				let i += 1
				continue
			endif

			if classname_candidate != ''
				let [classname_candidate, class_candidate_namespace] = phpcomplete#GetCallChainReturnType(classname_candidate, class_candidate_namespace, class_candidate_imports, methodstack)
				" return absolute classname, without leading \
				return (class_candidate_namespace == '\' || class_candidate_namespace == '') ? classname_candidate : class_candidate_namespace.'\'.classname_candidate
			endif
		endwhile
	elseif a:context =~? '(\s*new\s\+'.class_name_pattern.'\s*)->'
		let classname_candidate = matchstr(a:context, '\cnew\s\+\zs'.class_name_pattern.'\ze')
		let [classname_candidate, class_candidate_namespace] = phpcomplete#GetCallChainReturnType(classname_candidate, class_candidate_namespace, class_candidate_imports, methodstack)
		" return absolute classname, without leading \
		return (class_candidate_namespace == '\' || class_candidate_namespace == '') ? classname_candidate : class_candidate_namespace.'\'.classname_candidate
	else
		" check Constant lookup
		let constant_object = matchstr(a:context, '\zs'.class_name_pattern.'\ze::')
		if constant_object != ''
			let classname_candidate = constant_object
		endif

		"extract the variable name from the context
		let object = methodstack[0]
		let object_is_array = (object =~ '\v^[^[]+\[' ? 1 : 0)
		if object_is_array
			let object = matchstr(object, '\v^[^[]+')
		endif

		" scan the file backwards from current line for explicit type declaration (@var $variable Classname)
		let i = 1 " start from the current line - 1
		while i < a:start_line
			let line = getline(a:start_line - i)
			" in file lookup for /* @var $foo Class */
			if line =~# '@var\s\+'.object.'\s\+'.class_name_pattern
				let classname_candidate = matchstr(line, '@var\s\+'.object.'\s\+\zs'.class_name_pattern.'\ze\(\[\]\)\?')
				break
			elseif line !~ '^\s*$'
				" type indicator comments should be next to the variable
				" non empty lines break the search
				break
			endif
			let i += 1
		endwhile

		if classname_candidate != ''
			let [classname_candidate, class_candidate_namespace] = phpcomplete#GetCallChainReturnType(classname_candidate, class_candidate_namespace, class_candidate_imports, methodstack)
			" return absolute classname, without leading \
			return (class_candidate_namespace == '\' || class_candidate_namespace == '') ? classname_candidate : class_candidate_namespace.'\'.classname_candidate
		endif

		" scan the file backwards from the current line
		let i = 1
		while i < a:start_line
			let line = getline(a:start_line - i)

			" do in-file lookup of $var = new Class
			if line =~# '^\s*'.object.'\s*=\s*new\s\+'.class_name_pattern && !object_is_array
				let classname_candidate = matchstr(line, object.'\c\s*=\s*new\s*\zs'.class_name_pattern.'\ze')
				break
			endif

			" in-file lookup for Class::getInstance()
			if line =~# '^\s*'.object.'\s*=&\?\s*'.class_name_pattern.'\s*::\s*getInstance' && !object_is_array
				let classname_candidate = matchstr(line, object.'\s*=&\?\s*\zs'.class_name_pattern.'\ze\s*::\s*getInstance')
				break
			endif

			" do in-file lookup for static method invocation of a built-in class, like: $d = DateTime::createFromFormat()
			if line =~# '^\s*'.object.'\s*=&\?\s*'.class_name_pattern.'\s*::\s*$\?[a-zA-Z_0-9\x7f-\xff]\+'
				let classname  = matchstr(line, '^\s*'.object.'\s*=&\?\s*\zs'.class_name_pattern.'\ze\s*::')
				if has_key(a:imports, classname) && a:imports[classname].kind == 'c'
					let classname = a:imports[classname].name
				endif
				if has_key(g:php_builtin_classes, classname)
					let sub_methodstack = phpcomplete#GetMethodStack(matchstr(line, '^\s*'.object.'\s*=&\?\s*\s\+\zs.*'))
					let [classname_candidate, class_candidate_namespace] = phpcomplete#GetCallChainReturnType(classname, '\', {}, sub_methodstack)
					return classname_candidate
				else
					" try to get the class name from the static method's docblock
					let [classname, namespace_for_class] = phpcomplete#ExpandClassName(classname, a:current_namespace, a:imports)
					let sub_methodstack = phpcomplete#GetMethodStack(matchstr(line, '^\s*'.object.'\s*=&\?\s*\s\+\zs.*'))
					let [classname_candidate, class_candidate_namespace] = phpcomplete#GetCallChainReturnType(
						\ classname,
						\ a:current_namespace,
						\ a:imports,
						\ sub_methodstack)
					return (class_candidate_namespace == '\' || class_candidate_namespace == '') ? classname_candidate : class_candidate_namespace.'\'.classname_candidate
				endif
			endif

			" in-file lookup for typehinted function arguments
			"   - the function can have a name or be anonymous (e.g., function qux() { ... } vs. function () { ... })
			"   - the type-hinted argument can be anywhere in the arguments list.
			if line =~? 'function\(\s\+'.function_name_pattern.'\)\?\s*(.\{-}'.class_name_pattern.'\s\+'.object && !object_is_array
				let f_args = matchstr(line, '\cfunction\(\s\+'.function_name_pattern.'\)\?\s*(\zs.\{-}\ze)')
				let args = split(f_args, '\s*\zs,\ze\s*')
				for arg in args
					if arg =~# object.'\(,\|$\)'
						let classname_candidate = matchstr(arg, '\s*\zs'.class_name_pattern.'\ze\s\+'.object)
						break
					endif
				endfor
				if classname_candidate != ''
					break
				endif
			endif

			" if we see a function declaration, try loading the docblock for it and look for matching @params
			if line =~? 'function\(\s\+'.function_name_pattern.'\)\?\s*(.\{-}'.object
				let match_line = substitute(line, '\\', '\\\\', 'g')
				let sccontent = getline(0, a:start_line - i)
				let doc_str = phpcomplete#GetDocBlock(sccontent, match_line)
				if doc_str != ''
					let docblock = phpcomplete#ParseDocBlock(doc_str)
					for param in docblock.params
						if param.name =~? object
							let classname_candidate = matchstr(param.type, class_name_pattern.'\ze\(\[\]\)\?')
							break
						endif
					endfor
					if classname_candidate != ''
						break
					endif
				endif
			endif

			if line =~# '^\s*'.object.'\s*=&\?\s*\$[a-zA-Z_0-9\x7f-\xff]'
				let tailing_semicolon = match(line, ';\s*$')
				let prev_context = phpcomplete#GetCurrentInstruction(a:start_line - i, tailing_semicolon - 1, b:phpbegin)
				let prev_class = phpcomplete#GetClassName(a:start_line - i, prev_context, a:current_namespace, a:imports)

				if object_is_array
					if prev_class =~ '\[\]$'
						let prev_class = matchstr(prev_class, '\v^[^[]+')
					else
						let prev_class = ''
						break
					endif
				endif

				if stridx(prev_class, '\') != -1
					let classname_parts = split(prev_class, '\\\+')
					let classname_candidate = classname_parts[-1]
					let class_candidate_namespace = join(classname_parts[0:-2], '\')
				else
					let classname_candidate = prev_class
					let class_candidate_namespace = '\'
				endif
			endif

			if line =~? 'foreach\s*(.\{-}\s\+'.object.'\s*)'
				let sub_context = matchstr(line, 'foreach\s*(\s*\zs.\{-}\ze\s\+as')
				let prev_class = phpcomplete#GetClassName(a:start_line - i - 1, sub_context, a:current_namespace, a:imports)

				if stridx(prev_class, '\') != -1
					let classname_parts = split(prev_class, '\\\+')
					let classname_candidate = classname_parts[-1]
					let class_candidate_namespace = join(classname_parts[0:-2], '\')
				else
					let classname_candidate = prev_class
					let class_candidate_namespace = '\'
				endif
			endif

			let i += 1
		endwhile

		if classname_candidate != ''
			let [classname_candidate, class_candidate_namespace] = phpcomplete#GetCallChainReturnType(classname_candidate, class_candidate_namespace, class_candidate_imports, methodstack)
			" return absolute classname, without leading \
			return (class_candidate_namespace == '\' || class_candidate_namespace == '') ? classname_candidate : class_candidate_namespace.'\'.classname_candidate
		endif

		" OK, first way failed, now check tags file(s)
		" This method is useless when local variables are not indexed by ctags and
		" pretty inaccurate even if it is
		let tags = phpcomplete#GetTaglist('^'.substitute(object, '^\$', '', ''))
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

	if a:namespace == ''
		let search_namespace = '\'
	else
		let search_namespace = tolower(a:namespace)
	endif
	let [current_namespace, imports] = phpcomplete#GetCurrentNameSpace(getline(0, line('.')))

	" do in-file lookup for class definition
	let i = 1
	while i < line('.')
		let line = getline(line('.')-i)
		if line =~ '^\s*class ' . a:classname  . '\(\s\+\|$\)' && tolower(current_namespace) == search_namespace
			return expand('%:p')
		else
			let i += 1
			continue
		endif
	endwhile

	" Get class location from tags
	let no_namespace_candidate = ''
	let tags = phpcomplete#GetTaglist('^'.a:classname.'$')
	for tag in tags
		if tag.kind == 'c' || tag.kind == 'i'
			if !has_key(tag, 'namespace')
				let no_namespace_candidate = tag.filename
			else
				if search_namespace == tolower(tag.namespace)
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

function! phpcomplete#GetCachedClassContents(classlocation, class_name) " {{{
	let full_file_path = fnamemodify(a:classlocation, ':p')
	let cache_key = full_file_path.'#'.a:class_name.'#'.getftime(full_file_path)

	" try to read from the cache first
	if has_key(s:cache_classstructures, cache_key)
		let classcontents = s:cache_classstructures[cache_key]
		" cached class contents can contain content from multiple files (superclasses) so we have to
		" validate cached result's validness by the filemtimes used to create the cached value
		let valid = 1
		for classstructure in classcontents
			if getftime(classstructure.file) != classstructure.mtime
				let valid = 0
				" we could break here, but the time required for checking probably worth
				" the the memory we can free by checking every file in the cached hirearchy
				call phpcomplete#ClearCachedClassContents(classstructure.file)
			endif
		endfor

		if valid
			" cache hit, we found an entry for this file + class pair and every
			" file in the response is also valid
			return classcontents
		else
			" clear the outdated cached value from the cache store
			call remove(s:cache_classstructures, cache_key)
			call phpcomplete#ClearCachedClassContents(full_file_path)

			" fall trough for the read from files path
		endif
	else
		call phpcomplete#ClearCachedClassContents(full_file_path)
	endif

	" cache miss, fetch the content from the files itself
	let classfile = readfile(a:classlocation)
	let classcontents = phpcomplete#GetClassContentsStructure(full_file_path, classfile, a:class_name)
	let s:cache_classstructures[cache_key] = classcontents

	return classcontents
endfunction " }}}

function! phpcomplete#ClearCachedClassContents(full_file_path) " {{{
	for [cache_key, cached_value] in items(s:cache_classstructures)
		if stridx(cache_key, a:full_file_path.'#') == 0
			call remove(s:cache_classstructures, cache_key)
		endif
	endfor
endfunction " }}}

function! phpcomplete#GetClassContentsStructure(file_path, file_lines, class_name) " {{{
	" returns dictionary containing content, namespace and imports for the class and all parent classes.
	" Example:
	" [
	"	{
	"		class: 'foo',
	"		content: '... class foo extends bar ... ',
	"		namespace: 'NS\Foo',
	"		imports : { ... },
	"		file: '/foo.php',
	"		mtime: 42,
	"	},
	"	{
	"		class: 'bar',
	"		content: '... class bar extends baz ... ',
	"		namespace: 'NS\Bar',
	"		imports : { ... }
	"		file: '/bar.php',
	"		mtime: 42,
	"	},
	"	...
	" ]
	"
	let full_file_path = fnamemodify(a:file_path, ':p')
	let class_name_pattern = '[a-zA-Z_\x7f-\xff\\][a-zA-Z_0-9\x7f-\xff\\]*'
	let cfile = join(a:file_lines, "\n")
	let result = []
	" We use new buffer and (later) normal! because
	" this is the most efficient way. The other way
	" is to go through the looong string looking for
	" matching {}

	" remember the window we started at
	let phpcomplete_original_window = winnr()

	silent! below 1new
	silent! 0put =cfile
	call search('\(class\|interface\)\s\+'.a:class_name.'\(\>\|$\)')
	let cfline = line('.')
	call search('{')
	let endline = line('.')

	let content = join(getline(cfline, endline),"\n")
	" Catch extends
	if content =~? 'extends'
		let extends_class = matchstr(content, 'class\_s\+'.a:class_name.'\_s\+extends\_s\+\zs'.class_name_pattern.'\ze')
	else
		let extends_class = ''
	endif
	call searchpair('{', '', '}', 'W')
	let classcontent = join(getline(cfline, line('.')), "\n")
	silent! bw! %
	let [current_namespace, imports] = phpcomplete#GetCurrentNameSpace(a:file_lines[0:cfline])
	" go back to original window
	exe phpcomplete_original_window.'wincmd w'
	call add(result, {
				\ 'class': a:class_name,
				\ 'content': classcontent,
				\ 'namespace': current_namespace,
				\ 'imports': imports,
				\ 'file': full_file_path,
				\ 'mtime': getftime(full_file_path),
				\ })

	if extends_class != ''
		let [extends_class, namespace] = phpcomplete#ExpandClassName(extends_class, current_namespace, imports)
		if namespace == ''
			let namespace = '\'
		endif
		let classlocation = phpcomplete#GetClassLocation(extends_class, namespace)
		if filereadable(classlocation)
			let full_file_path = fnamemodify(classlocation, ':p')
			let result += phpcomplete#GetClassContentsStructure(full_file_path, readfile(full_file_path), extends_class)
		elseif tolower(current_namespace) == tolower(namespace)
			" try to find the declaration in the same file.
			let result += phpcomplete#GetClassContentsStructure(full_file_path, a:file_lines, extends_class)
		endif
	endif

	return result
endfunction
" }}}

function! phpcomplete#GetClassContents(classlocation, class_name) " {{{
	let classcontents = phpcomplete#GetCachedClassContents(a:classlocation, a:class_name)
	let result = []
	for classstructure in classcontents
		call add(result, classstructure.content)
	endfor
	return join(result, "\n")
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
			call add(res.params, {
						\ 'line': parts[0],
						\ 'type': phpcomplete#GetTypeFromDocBlockParam(get(parts, 1, '')),
						\ 'name': get(parts, 2, ''),
						\ 'description': get(parts, 3, '')})
		endif
	endfor

	let return_line = filter(copy(docblock_lines), 'v:val =~? "^@return"')
	if len(return_line) > 0
		let return_parts = matchlist(return_line[0], '@return\s\+\(\S\+\)\s*\(.*\)')
		let res['return'] = {
					\ 'line': return_parts[0],
					\ 'type': phpcomplete#GetTypeFromDocBlockParam(get(return_parts, 1, '')),
					\ 'description': get(return_parts, 2, '')}
	endif

	let exception_lines = filter(copy(docblock_lines), 'v:val =~? "^\\(@throws\\|@exception\\)"')
	for exception_line in exception_lines
		let parts = matchlist(exception_line, '^\(@throws\|@exception\)\s\+\(\S\+\)\s*\(.*\)')
		if len(parts) > 0
			call add(res.throws, {
						\ 'line': parts[0],
						\ 'type': phpcomplete#GetTypeFromDocBlockParam(get(parts, 2, '')),
						\ 'description': get(parts, 3, '')})
		endif
	endfor

	let var_line = filter(copy(docblock_lines), 'v:val =~? "^@var"')
	if len(var_line) > 0
		let var_parts = matchlist(var_line[0], '@var\s\+\(\S\+\)\s*\(.*\)')
		let res['var'] = {
					\ 'line': var_parts[0],
					\ 'type': phpcomplete#GetTypeFromDocBlockParam(get(var_parts, 1, '')),
					\ 'description': get(var_parts, 2, '')}
	endif

	return res
endfunction
" }}}

function! phpcomplete#GetTypeFromDocBlockParam(docblock_type) " {{{
	if a:docblock_type !~ '|'
		return a:docblock_type
	endif

	let primitive_types = [
				\ 'string', 'float', 'double', 'int',
				\ 'scalar', 'array', 'bool', 'void', 'mixed',
				\ 'null', 'callable', 'resource', 'object']

	" add array of primitives to the list too, like string[]
	let primitive_types += map(copy(primitive_types), 'v:val."[]"')
	let types = split(a:docblock_type, '|')
	for type in types
		if index(primitive_types, type) == -1
			return type
		endif
	endfor

	" only primitive types found, return the first one
	return types[0]

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
	let file_lines = reverse(copy(a:file_lines))
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
					let tags = phpcomplete#GetTaglist('^\('.namespace_name_candidate.'\|'.classname.'\)$')
					if len(tags) > 0
						for tag in tags
							" if there's a namespace with the name of the import
							if tag.kind == 'n' && tag.name == import.name
								call extend(import, tag)
								let import['builtin'] = 0
								break
							endif
							" if the name matches with the extracted classname and namespace
							if (tag.kind == 'c' || tag.kind == 'i') && tag.name == classname && has_key(tag, 'namespace') && tag.namespace == namespace_for_classes
								call extend(import, tag)
								let import['builtin'] = 0
								break
							endif
						endfor
					else
						" if no tags are found, extract the namespace from the name
						let ns = matchstr(import.name, '\c\zs[a-zA-Z0-9\\]\+\ze\\' . name)
						if len(ns) > 0
							let import['name'] = name
							let import['namespace'] = ns
							let import['builtin'] = 0
						endif
					endif
				else
					" if no \ in the name, it can be a built in class
					if has_key(g:php_builtin_classnames, import.name)
						let import['kind'] = 'c'
						let import['builtin'] = 1
					elseif has_key(g:php_builtin_interfaces, import.name)
						let import['kind'] = 'i'
						let import['builtin'] = 1
					else
						" or can be a tag with exactly matchign name
						let tags = phpcomplete#GetTaglist('^'.import['name'].'$')
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
	if has_key(a:imports, a:classname) && (a:imports[a:classname].kind == 'c' || a:imports[a:classname].kind == 'i')
		let namespace = has_key(a:imports[a:classname], 'namespace') ? a:imports[a:classname].namespace : ''
		return [a:imports[a:classname].name, namespace]
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
	if a:classname =~ '\\' || (a:current_namespace != '\' && a:current_namespace != '')
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
" Later it is possible to add some help to values, or type of defined variable
runtime! misc/php_keywords.vim

" Built in functions
let g:php_builtin_functions = {}
call phpcomplete#LoadDataFiles('builtin_functions', g:phpcomplete_active_function_extensions)

" Built in classs
let g:php_builtin_classes = {}
call phpcomplete#LoadDataFiles('builtin_classes', g:phpcomplete_active_class_extensions)

" Built in interfaces
let g:php_builtin_interfaces = {}
call phpcomplete#LoadDataFiles('builtin_interfaces', g:phpcomplete_active_interface_extensions)

" Built in constants
let g:php_constants = {}
call phpcomplete#LoadDataFiles('php_constants', g:phpcomplete_active_constant_extensions)

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

let g:php_builtin_interfacenames = {}
for [interfacename, info] in items(g:php_builtin_interfaces)
	let g:php_builtin_interfacenames[interfacename] = ''
	for [method_name, method_info] in items(class_info.methods)
		let g:php_builtin_object_functions[classname.'::'.method_name.'('] = method_info.signature
	endfor
	for [method_name, method_info] in items(class_info.static_methods)
		let g:php_builtin_object_functions[classname.'::'.method_name.'('] = method_info.signature
	endfor
endfor


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

function! phpcomplete#LoadDataFiles(dir, enabled_files) " {{{
	let enabled_files = map(copy(a:enabled_files), 'v:val.".vim"')
	let files = split(glob(s:script_path.'/../misc/'.a:dir.'/*.vim'), "\n")
	for file in files
		let basename = fnamemodify(file, ':t')
		if index(enabled_files, basename) != -1
			exec 'source '.file
		endif
	endfor
endfunction
" }}}

" vim: foldmethod=marker:noexpandtab:ts=4:sts=4:tw=4

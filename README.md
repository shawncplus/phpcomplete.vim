## About
Improved PHP omni-completion. Based on the default phpcomplete.vim.
## Features
 * Correct restriction of static or standard methods based on context ( show only static methods with `::` and only standard with `->`)
 * Real support for `self::` and `$this->` with the aforementioned context restriction
 * Constant variable completion (not just `define(VARIABLE, 1)` but `const VARIABLE = 1`)
 * Better class detection:
	 - Recognize `/* @var $yourvar YourClass */` type mark comments
	 - Recognize `$instance = new Class;` class instantiations
	 - Recognize `$instance = Class::getInstance();` singleton instances
	 - Recognize `$date = DateTime::createFromFormat(...)` built-in class return types
	 - Recognize type hinting in function prototypes
     - Recognize types in `@param` lines in function docblocks
     - Recognize `$object = SomeClass::staticCall(...)` return types from docblocks
 * Displays docblock info in the preview for methods and properties
 * Updated built-in class support with constants, methods and properties
 * Updated list of PHP constants
 * Updated list of built-in PHP functions
 * Namespace support ( **Requires** [patched ctags](https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags) )

## Install

### Pathogen
 1. Install the [pathogen.vim](https://github.com/tpope/vim-pathogen) plugin, [follow the instructions here](https://github.com/tpope/vim-pathogen#installation)
 2. Clone the repository under your `~/.vim/bundle/` directory:

         cd ~/.vim/bundle
         git clone git://github.com/shawncplus/phpcomplete.vim.git

### Vundle
 1. Install and configure the [Vundle](https://github.com/gmarik/vundle) plugin manager, [follow the instructions here](https://github.com/gmarik/vundle#quick-start)
 2. Add the following line to your `.vimrc`:

         Bundle 'shawncplus/phpcomplete.vim'
 3. Source your `.vimrc` with `:so %` or otherwise reload your vim
 4. Run the `:BundleInstall` commmand

## ctags
In order to support some php features introduced in PHP 5.3 you will have to use
a ctags binary that can generate the appropriate tags files. At this moment there's no
offical build of ctags that would do the job, so you will have to build one for yourself.<br>
Check out the **[wiki page about the patched ctags](https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags)** for more information.

## Options

**let g:phpcomplete\_relax\_static\_constraint = 1/0  [default 0]** <br>
Enables completion for non-static methods when completing for static context (`::`).
This generates `E_STRICT` level warning, but php calls these methods nontheless.

**let g:phpcomplete\_complete\_for\_unknown\_classes = 1/0 [default 1]** <br>
Enables completion of variables and functions in "everything under the sun" fassion
when completing for an instance or static class context but the code can't tell the class
or locate the file that it lives in.
The completion list generated this way is only filtered by the completion base
and generally not much more accurate then simple keyword completion.

**let g:phpcomplete\_min\_num\_of\_chars\_for\_namespace\_completion = n [default 1]** *Requires [patched ctags](https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags)* <br>
This option controls the number of characters the user needs to type before
the tags will be searched for namespaces and classes in typed out namespaces in
"use ..." context. Setting this to 0 is not recommended because that means the code
have to scan every tag, and vim's taglist() function runs extremly slow with a
"match everything" pattern.<br>

**let g:phpcomplete\_parse\_docblock\_comments = 1/0 [default 0]**<br>
When enabled the preview window's content will include information
extracted from docblock comments of the completions.
Enabling this option will add return types to the completion menu for functions too.

**let g:phpcomplete\_cache\_taglists = 1/0 [default 0]**<br>
When enabled the taglist() lookups will be cached and subsequent searches
for the same pattern will not check the tagfiles any more, thus making the
lookups faster (no cache expiration implemented as of now).

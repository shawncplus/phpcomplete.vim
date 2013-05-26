## About
Improved PHP omni-completion. Based on the default phpcomplete.vim.
## Features
 * Correct restriction of static or standard methods based on context ( show only static methods with `::` and only standard with `->`)
 * Real support for `self::` and `$this->` with the aforementioned context restriction
 * Constant variable completion (not just `define(VARIABLE, 1)` but `const VARIABLE = 1`)
 * Better class detection:
	 - Recognize `/* @var $yourvar YourClass */` type mark comments.
	 - Recognize `$instance = new Class;` class instantiations.
	 - Recognize `$instance = Class::getInstance();` singleton instances.
	 - Recognize `$date = DateTime::createFromFormat(...)` built-in class return types.
	 - Recognize type hinting in function prototypes.
 * Updated built-in class support with constants, methods and properties
 * Updated list of PHP constants
 * Updated list of built-in PHP functions

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

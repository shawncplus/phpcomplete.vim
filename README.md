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

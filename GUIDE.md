## Beginner's Guide

phpcomplete.vim complements Vim's built-in omnicomplete functions. It relies on Vim's access to a `tags` file, that is, a metadata file that can describe your code and the relationships between its elements, like Classes, Interfaces, Methods, etc.

phpcomplete.vim does not generate this tags file for you, so before using phpcomplete.vim, you'll need to generate tags for your PHP project.

### Generating a `tags` file

First, you'll need a program that can parse your PHP project and output a tags file. There are a few choices for that and they're outlined here: [Getting Better Tags](/shawncplus/phpcomplete.vim/wiki/Getting-better-tags).

Once you have a `ctags` or `phpctags` program in place, make sure it's in your `$PATH` ((relevant StackExchange post)[https://unix.stackexchange.com/questions/26047/how-to-correctly-add-a-path-to-path]). The rest of this guide will assume you're using `phpctags`; if you're using something else, substitute the `phpctags` command with `ctags`.

Now we're ready to generate our tags file. First, change directories to your project root, then run the following command.

```sh
$ cd /path/to/your/project
$ phpctags -R
```

This should generate a `tags` file in the current directory. You may want to add this to your `.gitignore`. If you're working with non-Vim users, you may want to add it to `.git/info/exclude` so as not to pollute the project's `.gitignore` with your Vim-specific rules.

**Note**: If you're using `phpctags` and your project is large enough, `phpctags` might run out of memory and silently fail, not outputting a `tags` file. If that's the case, replaces the command above with: `phpctags --memory=-1 -R`. This will give `phpctags` unlimited memory.

### Making sure Vim can read your `tags` file

By default, Vim will look for your `tags` file in the directory from which it's opened. To help Vim find your `tags` file. Place the following in your `.vimrc`:

```
set tags=./tags;/
```

This will search the current directory, then go up the directory tree until it reaches your directory root.

### Getting completions

Once you have everything set up above, you can finally get completions! The command to get Vim to open up suggestions is `<ctrl-x><ctrl-o>`. That means hitting the <kbd>CTRL</kbd> key and <kbd>x</kbd> key at the same time, then hitting the <kbd>CTRL</kbd> key and the <kbd>x</kbd> key at the same time, one after the other.

If there are multiple suggestions, you can use <kbd>CTRL</kbd>+<kbd>n</kbd> to scroll down the list and <kbd>CTRL</kbd>+<kbd>n</kbd> to scroll up the list.

Hitting <kbd>TAB</kbd> will complete the word under your cursor with your selection.

**That's it, enjoy!**

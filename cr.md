
### Search
```/```  Search moving forward

- Search moving backward: ?
- Repeat last search: n
- Repeat last search backward: N
- e.g. /findthistext then hit enter then type 'n' to go to next occurrence
- Ignore case on a single search with '\c': /ignore\c

- Set ignore case: :set ic
- Unset ignore case: :set noic
- Toggle ignore case (or any option be prepending command with 'inv'): :set invic
- Remove the hightlighting of matches enter: :nohlsearch 
- Smart case (lower matches upper and lower, upper only matches upper): set smartcase

### Substitute
- Substitute first occurrence only: :s/old/new
- Substitute globally: :s/old/new/g
- Substitute range of lines: :#,#s/old/new/g
- Substitute in entire file: :%s/old/new/g
- Substitute in entire file with confirmation: :%s/old/new/gc

### External Commands
- To run an external command just like you would in the terminal: :<command>! (e.g. :!ls)

### Visual Selection
- To select some text: v
- After it's selected use normal commands and motions (e.g. copy, delete, save)
- E.g. 'v' make selection ':w TEST' selection will now be saved as file named 'TEST'

### Retrieving and Merging Files
- To insert contents of a file: :r FILENAME
- You can also read outputs of commands into it: :r !ls will add output from ls into file

### Copy and Paste
- To copy or yank: y
- To copy current line: yy
- To copy multiple words: yw
- To paste or put: p
- Use 'v' visual mode to make a selection then copy paste it: 'v' enter 'j$' to end of next line 'y' to copy 'p' to paste
- Visual mode based on lines: V

### Multiple tabs
- Create a tab: shift t
- Via split panels: Ctrl w + h j k l 


### Windows / Views
- Create new window: :new
- Rotate windows: <c-w> <c-w> (Control + w twice)
- Split pane: :sp or <c-w> s
- Vertical split pane: :vsp or <c-w> v
- Close window: :q
- Resize window: :resize 10 to resize to 10 lines long
- Make other windows as small as possible: <C-w> _
- Make all windows equal size: <c-w> =

### Multiple Tabs
- Open new tab: :tabnew
- Switch between tabs: gt
- Switch betwwen tabs opposite directino: gT
- Close tabs: :tabc or :q
- Reorder tabs: :tabmove 0 to move tab to first position, :tabmove 2 to move to 3rd position etc.

### Open/edit/close
- Open path /path: :cd <path>
- Edit: :edit <path> or :e <path>
- Save as: :saveas <path/to/file>
- Find and open files: , e

### Macros
- Start recording in register a `qa`
- Run a bunch of commands then type `q` to stop recording.
- Finally run macro with `@a`

### Scripting
- List available color schemes:
```
:colorscheme <tab>
```

### Functions
- How many chars in current line:
```
:echo strlen(getline("."))
```
- Store result in variable:
```
:let len = strlen(getline("."))
:echo "We have" len "characters in this line."
```
- Create your own functions:
```
:function CurrentLineLength()
: let len = strlen(getline("."))
: return len
:endfunction
```
Now on any line
```
:echo CurrentLineLength()
```
- Function names have to start with an upper case. This is to differentiate that built-in functions start with a lower case and user-defined functions start with an upper case.
- If you want to simply "call" a function to run but not display the contents, you can use
```
:call CurrentLineLength()
```

### Variables
- Types of variables available with prefixes:
	- `$` for environment variables.
	- `&` for options.
	- `@` for registers.
```
:echo $HOME
:echo &filetype
:echo @a
```

### Conditionals
- if
```
: if <some-condition>
:   <do-stuff>
: else
:   <do-other-stuff>
: endif
```
`
- while
```
:let i = 0
:while i < 5
:  echo i
:  let i += 1
:endwhile
```

- for
```
:for i in range(5)
:  echo i
:endfor
```

### Data Structures
- Build in support for lists and dictionaries
```
:let fruits = ['apple', 'mango', 'coconut']

:echo fruits[0]
" apple

:echo len(fruits)
" 3

:call remove(fruits, 0)
:echo fruits
" ['mango', 'coconut']

:call sort(fruits)
:echo fruits
" ['coconut', 'mango']

:for fruit in fruits
: echo "I like" fruit
:endfor
" I like coconut
" I like mango
```

### Basic script
- Create basic script in root dir (same as this file) named hello_world.vim:
```
let w = "world"
echo "Hello, " . w
```
- Run hello_world.vim:
```
:source hello_world.vim
```

[vim-plug](https://github.com/junegunn/vim-plug)
-------------------------------------------------------------------------------
Plugin manager

### [Installation](https://github.com/junegunn/vim-plug#installation)
Download plug.vim and put it in the "autoload" directory:
- `~/.vim/autoload/plug.vim` for vim
- `~/.config/nvim/autoload/plug.vim` for nvim
Plugins installed in:
- `~/.vim/plugged` for vim
- `~/.config/nvim/plugged/` for nvim

### [Automatic Installation](https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation)
Place the following code in your .vimrc before plug#begin() call
```
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
```

### Installing plugins
Declare the list of plugins you want to use in your Vim configuration file. 
- `~/.vimrc` for ordinary Vim
- `~/.config/nvim/init.vim` for Neovim.

The list should start with call `plug#begin(PLUGIN_DIRECTORY)` and end with `call plug#end()`.
```
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
```
After adding the above to the top of your Vim configuration file, reload it `(:source ~/.vimrc)` or restart Vim.
Now run `:PlugInstall` to install the plugins.

### Updating plugins
Run `:PlugUpdate` to update the plugins. After the update is finished, you can review the changes by pressing `D` in the window. Or you can do it later by running `:PlugDiff`.

### Reviewing the changes
Updated plugins may have new bugs and no longer work correctly. With `:PlugDiff` command you can review the canges from the last `:PlugUpdate` and roll each plugin back to the previous state before the update by pressing `X` on each paragraph.

### Removing plugins
Delete or comment out Plug commands for the plugins you want to remove.
Reload vimrc (`:source ~/.vimrc`) or restart Vim
Run `:PlugClean`. It will detect and remove undeclared plugins.

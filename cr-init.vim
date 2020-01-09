call plug#begin('~/.config/nvim/plugged')

Plug 'cocopon/iceberg.vim'

" Top Plugins https://vimawesome.com/
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'dense-analysis/ale'

call plug#end()

colorscheme iceberg

" Enable line numbers
set number
set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing

" In order to find files in a large repo
" https://github.com/kien/ctrlp.vim/issues/234
let g:ctrlp_max_files=0

" Update GitGutter response time
" https://vimawesome.com/plugin/vim-gitgutter
set updatetime=100
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_line_number = 1

" Let ALE jump to definitions
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1
let g:ale_rename_tsserver_find_in_strings = 1 

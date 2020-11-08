set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme'
Plug 'prettier/vim-prettier'

call plug#end()

set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number
set relativenumber
set title
set cursorline
set showcmd
set showmatch
highlight clear CursorLine
highlight CursorLineNR ctermbg=blue



colorscheme onedark
syntax on

 
highlight Normal ctermbg=None

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:prettier#autoformat = 1

:nnoremap <C-@> :YcmCompleter GetType<CR>


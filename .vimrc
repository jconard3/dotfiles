set nocompatible

" vim-plug begin
call plug#begin()
Plug 'dracula/vim', {'as': 'dracula', 'tag': 'v1.2.0'}
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
call plug#end()

syntax on
filetype plugin indent on

" Allow backspacing over everything in insert mode
set bs=indent,eol,start

set title

" Turn on line numbers
set number
set ruler
set cursorline cursorcolumn

" Turn tabs into two spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Highlight search results
set hlsearch

" Status line
set laststatus=2

" Don't store swap files in $CMD
set backupdir=/tmp//
set directory=/tmp//

let python_highlight_all=1

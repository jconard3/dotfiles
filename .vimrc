set nocompatible

" vim-plug begin
call plug#begin()
Plug 'dracula/vim', {'as': 'dracula', 'tag': 'v1.2.0'}
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'faith/vim-go'
Plug 'Valloric/YouCompleteMe'
call plug#end()

syntax on
filetype plugin indent on

" Airline theme
let g:airline_theme='dracula'

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

set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'jacoborus/tender.vim'
Plug 'scrooloose/syntastic'

call plug#end()

set nobackup
set noswapfile
set autoread

set title
set number
set ruler
set cursorline
set smartindent
set virtualedit=onemore
set visualbell
set laststatus=2

syntax enable

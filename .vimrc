execute pathogen#infect()

set nocompatible
let mapleader = ","

" Syntax highlighting
syntax on
filetype plugin indent on
set encoding=utf-8
set shell=/bin/zsh
" Additional info
set number
set showcmd
" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

set autoindent

set mouse=a

" MiniBufExpl
let g:miniBufExplBuffersNeeded = 1
nnoremap <c-j> :bnext<cr>
nnoremap <c-k> :bprevious<cr>

colorscheme molokai


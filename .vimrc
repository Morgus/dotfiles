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

set tags+=tags;$HOME
" Tags can be browsed with leader and movement keys
nnoremap <leader>k <c-]>
nnoremap <leader>j <c-t>
nnoremap <leader>h :tprevious<cr>
nnoremap <leader>l :tnext<cr>

" MiniBufExpl
let g:miniBufExplBuffersNeeded = 1
nnoremap <c-j> :bnext<cr>
nnoremap <c-k> :bprevious<cr>

colorscheme molokai


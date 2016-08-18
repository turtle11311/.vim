"""""""""""""""""""""""""""""""""""""""""""""""""
" => General Setting & UI Setting
"""""""""""""""""""""""""""""""""""""""""""""""""
" Set VIM Mode
set nocompatible

" Enable filetype plugins
filetype plugin on
filetype indent on

set history=50

" Relative Line number
set relativenumber

" Always show current MODE
set showmode

" Show command
set showcmd

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Confirm
set confirm

" Makes search act like search in modern browsers
set incsearch

" Highlight search
set hlsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" For regular expressions turn magic on
set magic

" Always show the status line
set laststatus=2

" Always in PWD
set autochdir

" use bash-shell
set shell=/bin/bash

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Color and syntax
"""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax
syntax enable
syntax on
set t_Co=256
colorscheme PaperColor

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent and Tabshift
"""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=8

" Indent
set autoindent
set cindent
set smartindent

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Map
"""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=";"

nmap <leader>s :set filetype=
nmap <leader>i gg=G
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprev<CR>
nmap <leader>bd :bclose<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => check vim-Plug
"""""""""""""""""""""""""""""""""""""""""""""""""
let vimplug_readme=expand('~/autoload/plug.vim')
if !filereadable(vimplug)
    echo "Installing vim-Plug.."
    echo ""
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    source $vimplug
    :PlugInstall
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'moll/vim-bbye'
Plug 'jpalardy/vim-slime'

" Plug for C/C++
Plug 'vim-scripts/a.vim'
Plug 'justmao945/vim-clang'

" Plug for markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
call plug#end()

" Airline
let g:airline#extensions#tabline#enabled = 1

" vim-slime
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()

" EasyMotion
let g:EasyMotion_leader_key='<leader><leader>'

" NERDTree
noremap <leader>n :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 0

" bbye
noremap <leader>bd :Bdelete<CR>

" a.vim
nnoremap <leader>a :A<CR>

" vim-clang
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11'

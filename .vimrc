set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加
set number
set nocompatible
set hidden
set nocp
filetype plugin on
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set relativenumber number
set undodir=~/.vim/undo_dir
set undofile
set clipboard=unnamed
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
set ignorecase smartcase

set hlsearch
set incsearch
noremap <esc><esc> :noh<return><esc>

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cursorline

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

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" 同时安装两个插件
Plugin 'vim-airline/vim-airline' 
Plugin 'tpope/vim-fugitive'


" Add your plugins here

call vundle#end()            " required
filetype plugin indent on    " required
"
" 显示文件类型
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
"
" 显示当前工作目录
let g:airline#extensions#branch#enabled = 1
"
" 显示Git分支
let g:airline#extensions#branch#enabled = 1
"
" 显示当前编辑模式
let g:airline#extensions#mode#enabled = 1
"
" 显示当前光标所在行号和列号
let g:airline#extensions#cursorline#enabled = 1
"
" 显示当前文件名
let g:airline#extensions#filename#enabled = 1
"
" 显示当前光标所在位置在文件中的百分比
let g:airline#extensions#percent#enabled = 1

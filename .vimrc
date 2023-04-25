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
Plugin 'preservim/nerdcommenter'
Plugin 'scrooloose/nerdtree'


" Add your plugins here

call vundle#end()            " required
filetype plugin indent on    " required
""" vim-airline
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

""" nerdcommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1
"
" " Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
"
"
" " Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"
" " Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

""" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

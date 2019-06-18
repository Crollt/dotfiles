set nocompatible              " required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/seoul256.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'justinmk/vim-syntax-extra'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'itchyny/lightline.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ap/vim-buftabline'
Plugin 'easymotion/vim-easymotion'
Plugin 'lifepillar/vim-mucomplete'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Auto complete menu
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c   " Shut off completion messages
set completeopt-=preview
let g:mucomplete#enable_auto_at_startup = 1

set incsearch

set undofile
set undodir=~/.vim/undo/
set termguicolors
colorscheme OceanicNext

let mapleader = ";"
" Find and replace under cursor
nnoremap <Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>

nnoremap <Leader>s :CtrlPTag<CR>

set encoding=utf-8

set updatetime=250

" Buffer nav mappings
nnoremap <C-I> :bn<CR>
nnoremap <C-U> :bp<CR>
nnoremap <C-D> :bd<CR>

set laststatus=2
set number relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showmatch
set cursorline
set wildmenu
set autoindent
set splitbelow
set splitright
syntax on

" set incsearch
" set hlsearch

set pastetoggle=<F2>

nnoremap j gj
nnoremap k gk

" Close braces automatically
inoremap {<CR> {<CR>}<Esc>ko
" inoremap ( ()<Esc>i
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap        [  []<Left>
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
" inoremap        <  <><Left>
" inoremap <expr> >  strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

set cc=120

" Skeleton files
" au BufNewFile *.c 0r ~/.vim/c.skel
" au BufNewFile *.cpp 0r ~/.vim/cpp.skel
" au BufNewFile *.py 0r ~/.vim/py.skel
" au BufNewFile Makefile 0r ~/.vim/make.skel

set noshowmode
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ }

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_modified_removed = 'ww'

" YCM config
" let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'


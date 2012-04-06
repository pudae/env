syntax on

set smartindent
set ts=4
set sw=4
set nu

set tags=./tags,./TAGS,tags,TAGS,/Users/pudae/src/nwm/tags,/opt/local/include/tags,/usr/include/tags

colorscheme molokai

" Plugin 
call pathogen#infect()

" NERD tree configure
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" End NERD tree configure

let g:SuperTabDefaultCompletionType="context"

" Vundle 
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'ervandew/supertab'
Bundle 'crooloose/nerdtree'
" Bundle 'crooloose/nerdcommenter'
" Bundle 'crooloose/syntastic'
" Bundle 'tpope/vim-surround'
" Bundle 'tpope/vim-repeat'
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"
" End Vundle 

" End Plugin 

syntax on

set smartindent
set ts=4
set sw=4
set nu

set tags+=./tags
set tags+=./TAGS
set tags+=/Users/pudae/src/nwm/tags
set tags+=/usr/local/include/boost/tags
set tags+=/usr/include/c++/tags

colorscheme bubblegum

" Plugin 
call pathogen#infect()

" NERD tree configure
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" End NERD tree configure

" let g:SuperTabDefaultCompletionType="context"
let g:clang_auto_select=1
let g:clang_complete_auto=1
let g:clang_snippets=1
let g:clang_snippets_engine="clang_complete"
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,abs:/usr/local/include/boost,abs:/usr/include/c++'

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
Bundle 'Rip-Rip/clang_complete'
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

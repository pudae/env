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

colors bubblegum

call pathogen#infect()
filetype plugin indent on

set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'DoxygenToolkit.vim'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:clang_auto_select=1
let g:clang_complete_auto = 1
let g:clang_snippets=1
let g:clang_snippets_engine='snipmate'
let g:clang_sort_algo='auto'
let g:clang_use_library=1

let g:DoxygenToolkit_commentType='C++'


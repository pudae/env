syntax on
syntax enable

set smartindent
set ts=2
set sw=2
set expandtab
set nu
set cursorline
set showmatch

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'klen/python-mode'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree configuration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeNodeDelimiter="\u00a0"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN %{bufnr("%")}'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pymode configuration
"let g:pymode = 1
let g:pymode_python = 'python3'

syntax on
syntax enable

set relativenumber
" set number

set smartindent
set ts=4
set sw=4
set expandtab
set nu
set cursorline
set showmatch

call plug#begin('~/.vim/plugged')

" awesome languageserver support
" Plug 'neoclide/coc.nvim', {'do': 'yarn  install --frozen-lockfile'}  
Plug 'neoclide/coc.nvim', {'do': 'yarn  install --immutable'}  

" nice white colortheme
Plug 'jonathanfilip/vim-lucius'

" split function arguments etc.
Plug 'AndrewRadev/splitjoin.vim'  

" better indenting for python
Plug 'Vimjas/vim-python-pep8-indent'  

" auto remove search highlight
Plug 'romainl/vim-cool'

" sort of scrollbar indicator
Plug 'drzel/vim-line-no-indicator'

" color and sort imports
Plug 'tweekmonster/impsort.vim'

" show tags in a bar (functions etc) for easy browsing
Plug 'majutsushi/tagbar'

" automatically create tags
Plug 'ludovicchabant/vim-gutentags'

" auto shiftwidth
Plug 'tpope/vim-sleuth'

" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'vim-airline/vim-airline'
" Plug 'klen/python-mode'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree configuration
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" map <C-n> :NERDTreeToggle<CR>
" 
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" let NERDTreeNodeDelimiter="\u00a0"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline configuration
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline_section_b = '%{strftime("%c")}'
" let g:airline_section_y = 'BN %{bufnr("%")}'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pymode configuration
" let g:pymode = 1
" let g:pymode_python = 'python3'
" let g:pymode_rope = 0
" let g:pymode_trim_whitespaces = 1
" let g:pymode_options_max_line_length = 79
" let g:pymode_options_colorcolumn = 1
" let g:pymode_indent = 1
" let g:pymode_folding = 1
" let g:pymode_motion = 1
" let g:pymode_doc = 1
" let g:pymode_doc_bind = 'K'
" let g:pymode_run = 1
" let g:pymode_run_bind = '<leader>r'
" let g:pymode_lint = 1
" let g:pymode_lint_on_fly = 0
" let g:pymode_lint_ignore = "E501,W"
" let g:pymode_python = 'python3'

" Use <C-t> to open tagbar
map <C-t> :set nosplitright<CR>:TagbarToggle<CR>:set splitright<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Lucius
" colorscheme options
let g:lucius_style="dark"
let g:lucius_contrast="low"
colo lucius
set background=dark


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Color tweaks
" Change colorscheme Coc errors/warning/hints
hi Pmenu ctermbg=253 ctermfg=240
hi Search cterm=bold ctermbg=None ctermfg=0
hi IncSearch ctermfg=0 ctermbg=254 cterm=bold
hi VertSplit ctermbg=253

hi default CocSubtle term=None
hi default link CocErrorHighlight CocSubtle
hi default link CocWarningHighlight CocSubtle
hi default link CocInfoHighlight CocSubtle
hi default link CocHintHighlight CocSubtle

hi CocWarningHighlight ctermbg=254
hi CocInfoHighlight ctermbg=254
hi CocErrorHighlight ctermbg=254
hi CocHintHighlight ctermbg=254

hi Function cterm=None ctermfg=34
hi Statement cterm=None ctermfg=32
hi Type cterm=None ctermfg=30

" Import option
hi pythonImportedObject ctermfg=126 cterm=None
hi pythonImportedFuncDef ctermfg=126 cterm=None
hi pythonImportedClassDef ctermfg=126 cterm=None

" hi LineNR ctermbg=254 
hi CursorLineNR ctermbg=254 
hi Function ctermfg=35
hi Number ctermfg=173
hi String ctermfg=173
hi Constant ctermfg=173
hi Keyword ctermfg=31


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Statusline
function! CocErrors() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, ' ' . info['error'] . ' ')
  endif
  return join(msgs, ' ')
endfunction

function! CocWarnings() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'warning', 0)
    call add(msgs, ' ' . info['warning'] . ' ')
  endif
  return join(msgs, ' ')
endfunction

function! CocStatus() abort
  return get(g:, 'coc_status', '')
endfunction

set statusline=
set statusline+=%#ColorColumn#
set statusline+=\ %f 
set statusline+=%m\ 
set statusline+=%#DiffDelete#
set statusline+=%{CocErrors()}
set statusline+=%#DiffChange#
set statusline+=%{CocWarnings()}
set statusline+=%#ColorColumn#
set statusline+=%=
set statusline+=\ 
set statusline+=%#ScrollBarHi#
set statusline+=%{LineNoIndicator()}

" Remove all trailing whitespace by pressing C-S
nnoremap <C-S> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" coc.nvim settings
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nowritebackup

" You will have bad experience for diagnostic messages when it's default 4000.
" set updatetime=1000

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
 
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Or use `complete_info` if your vim support it, like:
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

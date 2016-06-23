"filetype plugin indent on
set wrap
set title  " Set window title automatically

set undofile
set undodir=~/.vim/undodir
set undolevels=1000

set foldmethod=indent   " Enable code folding with z,a
set foldlevel=99

set backspace=indent,eol,start
set shiftwidth=2
set shiftround
set tabstop=2
set smarttab
set expandtab
set wildmenu

set showmatch
set showcmd     "To show partial command in status bar
set nu        "For current line number
set rnu       "Relative numbering for the rest of the lines
set sidescroll=1

set ignorecase
set smartcase     "CSen only when capitals used.
set incsearch   "Starts showing results as you type
set hlsearch

set autoindent
set copyindent
set smartindent
set cindent

set history=1000
set scrolloff=6
set autoread    "Reloads file on change
set lazyredraw    " redraw only when we need to

set guioptions-=m
set guioptions-=T

" To avoid expanding tabs
autocmd Filetype make set noexpandtab

" To reset cursor position on reopening file
" Gold!
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" Cursor shape tweaks
" Use bar in insert mode (much better than default one)
if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
endif

" Bug fix for messy line numbers in nvim term
if has('nvim')
  augroup term
    autocmd!
    autocmd BufWinEnter,WinEnter term://* setlocal nonumber norelativenumber
  augroup END
endif

" To use nasm mode for asm
au BufRead,BufNewFile *.asm set filetype=nasm

" For LaTeX-Suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" Ignore gitignored files in ctrlp output
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  "To autoclose if only nerd left

" Completions
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

syntax on
filetype plugin indent on
syntax enable
set wrap
set title  " Set window title automatically

set undofile
set undodir=~/.vim/undodir
set undolevels=1000

set foldmethod=indent   " Enable code folding with z,a
set foldlevel=99

set backspace=indent,eol,start
set background=dark
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
:autocmd Filetype make set noexpandtab

" To reset cursor position on reopening file
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

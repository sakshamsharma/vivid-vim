" NeoBundle
"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/saksham/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/saksham/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'scrooloose/syntastic'
call neobundle#config('syntastic', {
	\ 'lazy' : 1,
	\ 'autoload' : {
	\   'insert' : 1,
	\ }})

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


" Plugins
" =====================================
" =====================================

call plug#begin()

" Functionality
Plug 'vim-scripts/AutoComplPop'
Plug 'scrooloose/nerdtree'
Plug 'edsono/vim-matchit'
Plug 'ervandew/supertab'
Plug 'sjl/gundo.vim'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'vim-scripts/camelcasemotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'autoswap.vim'
Plug 'KabbAmine/zeavim.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'

" Shortcuts
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-scripts/closetag.vim'

" Appearance
Plug 'bling/vim-airline'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'myusuf3/numbers.vim'

" Colorschemes
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'
Plug 'Pychimp/vim-luna'
Plug 'altercation/vim-colors-solarized'

" Language-specific
Plug 'derekwyatt/vim-scala'
Plug '2072/vim-syntax-for-PHP'
Plug 'raichoo/haskell-vim'
Plug 'fatih/vim-go'
Plug 'dart-lang/dart-vim-plugin'
Plug 'digitaltoad/vim-jade'
Plug 'lervag/vimtex'
Plug 'rgrinberg/vim-ocaml'
Plug 'kchmck/vim-coffee-script'
Plug 'vhda/verilog_systemverilog.vim'

Plug 'eagletmt/neco-ghc'            " For haskell completions
Plug 'eagletmt/ghcmod-vim'

call plug#end()
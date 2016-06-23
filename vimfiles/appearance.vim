set nocompatible
set t_Co=256
syntax on
set background=dark " dark | light "
colorscheme solarized
filetype plugin on
call togglebg#map("<F6>")
set cursorline

" Airline customization
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  let g:airline_powerline_fonts = 1
endif
let g:airline_symbols.space = "\ua0"

if has("win32") || has("win16") || has("win64")
  " Harsh times call for harsh measures
  set guifont=Liberation_Mono_for_Powerline:h10 
  set encoding=utf-8 
else
  " Home sweet home
  set guifont=Liberation\ Mono\ for\ Powerline\ 10
endif

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#right_sep = ' '
let g:airline_left_sep=''
let g:airline_right_sep=''

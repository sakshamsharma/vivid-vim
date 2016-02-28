"set t_Co=256

" Settings for solarized theme
let g:solarized_termcolors=16
let g:solarized_termtrans = 1
syntax enable
set background=dark
colorscheme solarized

set gfn=monofur\ for\ Powerline\ Regular\ 14

" For airline
if has('unix')
  set guifont=Liberation\ Mono\ for\ Powerline\ 14
  set laststatus=2
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_theme="base16"
endif

if has('unix')
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
endif

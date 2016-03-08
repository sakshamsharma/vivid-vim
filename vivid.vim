source ~/.vim/vimfiles/plugins.vim
source ~/.vim/vimfiles/functions.vim
source ~/.vim/vimfiles/keys.vim
source ~/.vim/vimfiles/settings.vim
source ~/.vim/vimfiles/appearance.vim
source ~/.vim/vimfiles/haskell.vim
source ~/.vim/vimfiles/syntastic.vim

if has('nvim')
  let g:deoplete#enable_at_startup = 1
else
  source ~/.vim/vimfiles/neocomplete.vim
endif

" TODO
" Move these commands into their proper places (?) sometime

" For LaTeX-Suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" For haskell
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1
let g:haskell_indent_if = 3

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  "To autoclose if only nerd left

" Tabularize
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

" Miscellaneous
" ===============
" ===============

" Cursor shape tweaks
" Use bar in insert mode (much better than default one)
if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
else
  let &t_SI = "\<Esc>[6 q"
  let &t_SR = "\<Esc>[4 q"
  let &t_EI = "\<Esc>[2 q"
endif

" The following content taken from Harsh Sharma's vimrc

" To toggle line numbering
noremap <F4> :set invnu invrnu<CR>

" Switch between different tab widths
nnoremap <Leader>2 :set sw=2 <Bar> set sts=2<CR>
nnoremap <Leader>4 :set sw=4 <Bar> set sts=4<CR>

" capitalize the word preceding the cursor in insert mode
imap <C-C> <Esc>gUiw`]a

map <F8> :noremap j 3j <CR> :noremap k 3k <CR>
map <S-F8> :noremap j j <CR> :noremap k k <CR>


" Notes
" ===============
"
" For syntastic
" ===
"
" C/C++   ==> Install gcc
" CSS     ==> sudo npm install -g csslint
" Dart    ==> dartanalyzer (comes with dart)
" JS/HTML ==> sudo npm install -g jshint
" JSON    ==> sudo npm install -g jsonlint
"
" For haskell
" ===
" Install ghc-mod, hsdevtools

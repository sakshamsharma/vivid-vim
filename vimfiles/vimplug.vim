" Plugins
" =====================================
" =====================================

function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()

" Functionality
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'marcweber/vim-addon-mw-utils'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'ervandew/supertab'
Plug 'rking/ag.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'tpope/vim-sleuth'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Lokaltog/vim-easymotion'
Plug 'vim-scripts/closetag.vim', { 'on': [] }

Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'

" Languages
Plug 'justinmk/vim-syntax-extra'

Plug 'scrooloose/nerdcommenter' "{{{
  nmap <F3> ;NERDTreeToggle<return>
"}}}

Plug 'vim-scripts/camelcasemotion' "{{{
  map <silent> w <Plug>CamelCaseMotion_w
  map <silent> b <Plug>CamelCaseMotion_b
  map <silent> e <Plug>CamelCaseMotion_e
  sunmap w
  sunmap b
  sunmap e
"}}}


Plug 'ctrlpvim/ctrlp.vim' "{{{
  let g:ctrlp_match_window = 'bottom,order:btt,min:20,max:20,results:20'

  set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
  set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

  let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'file': '\.pyc$\|\.pyo$',
        \ }

  let g:ctrlp_root_markers = ['.repo', '.git']
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  let g:ctrlp_working_path_mode = 'ra'
"}}}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'terryma/vim-multiple-cursors'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } "{{{
  nnoremap <silent> <F3> ;NERDTreeToggle<CR>
  nnoremap <silent> <F5> :NERDTreeFind<CR>
  let NERDTreeShowHidden=1
"}}}

Plug 'junegunn/fzf', { 'do': './install --all' }

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ } "{{{

  let g:LanguageClient_serverCommands = {
      \ 'c': ['ccls-wrap', '--log-file=/tmp/cc.log'],
      \ 'cpp': ['ccls-wrap', '--log-file=/tmp/cc.log'],
      \ 'h': ['ccls-wrap', '--log-file=/tmp/cc.log'],
      \ 'hpp': ['ccls-wrap', '--log-file=/tmp/cc.log'],
      \ }

  nn <silent> <M-.> :call LanguageClient#textDocument_definition()<cr>
  nn <silent> <M-?> :call LanguageClient#textDocument_references({'includeDeclaration': v:false})<cr>
  nn <silent> K :call LanguageClient#textDocument_hover()<cr>
  nnoremap <silent> <M-,> <C-O>
"}}}

"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "let g:deoplete#enable_at_startup = 1
"endif

call plug#end()

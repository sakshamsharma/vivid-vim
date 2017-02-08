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
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ervandew/supertab'
Plug 'rking/ag.vim'
"Plug 'benekastah/neomake', Cond(has('nvim'), { 'on': 'Neomake' })
Plug 'vim-scripts/AutoComplPop'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Lokaltog/vim-easymotion'
Plug 'vim-scripts/closetag.vim', { 'on': [] }

Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'

" Languages
Plug 'justinmk/vim-syntax-extra'
Plug 'derekwyatt/vim-scala'
"Plug 'ensime/ensime-vim' "{{{
  "nnoremap <localleader>t :EnTypeCheck<CR>
  "au FileType scala nnoremap <localleader>df :EnDeclaration<CR>
""}}}
Plug 'rust-lang/rust.vim' "{{{
    let g:rustfmt_autosave = 1
"}}}
Plug 'racer-rust/vim-racer' "{{{
    set hidden
    let g:racer_cmd = "$HOME/.cargo/bin/racer"
    let g:racer_experimental_completer = 1
    au FileType rust nmap gd <Plug>(rust-def)
    au FileType rust nmap gs <Plug>(rust-def-split)
    au FileType rust nmap gx <Plug>(rust-def-vertical)
    au FileType rust nmap <leader>gd <Plug>(rust-doc)
"}}}

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

Plug 'sirver/ultisnips', { 'on': [] } "{{{
  let g:UltiSnipsSnippetsDir = '~/.vim/plugged/vim-snippets/UltiSnips'
  let g:UltiSnipsExpandTrigger="<c-j>"
  let g:UltiSnipsJumpForwardTrigger="<c-j>"
  let g:UltiSnipsJumpBackwardTrigger="<c-k>"
  "let g:UltiSnipsListSnippets="<c-l>"

  inoremap <silent> <C-j> <C-r>=LoadUltiSnips()<cr>

  " This function only runs when UltiSnips is not loaded
  function! LoadUltiSnips()
    let l:curpos = getcurpos()
    execute plug#load('ultisnips')
    call cursor(l:curpos[1], l:curpos[2])
    call UltiSnips#ExpandSnippet()
    return ""
  endfunction
"}}}

Plug 'saaguero/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } "{{{
  nnoremap <silent> <F3> ;NERDTreeToggle<CR>
  nnoremap <silent> <F5> :NERDTreeFind<CR>
  let NERDTreeShowHidden=1
"}}}

Plug 'ctrlpvim/ctrlp.vim' "{{{
  let g:ctrlp_match_window = 'bottom,order:btt,min:20,max:20,results:20'

  set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
  set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

  let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'file': '\.pyc$\|\.pyo$',
        \ }
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlPMRUFiles'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
  let g:ctrlp_working_path_mode = 'ra'

  "map <C-[> ;CtrlPBuffer<return>
"}}}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'eagletmt/neco-ghc'            " For haskell completions
Plug 'eagletmt/ghcmod-vim'
Plug 'bitc/vim-hdevtools'
Plug 'dag/vim2hs'
Plug 'terryma/vim-multiple-cursors'

"Plug 'klen/python-mode' "{{{
    "" Override go-to.definition key shortcut to Ctrl-]
    "let g:pymode_rope_goto_definition_bind = "<C-]>"

    "" Override run current python file key shortcut to Ctrl-Shift-e
    "let g:pymode_run_bind = "<C-S-e>"

    "" Override view python doc key shortcut to Ctrl-Shift-d
    "let g:pymode_doc_bind = "<C-S-d>"
""}}}

Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-surround'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'fatih/vim-go'

Plug 'sakshamsharma/encfile-mode'

call plug#end()

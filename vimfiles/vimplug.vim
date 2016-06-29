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
Plug 'benekastah/neomake', Cond(has('nvim'), { 'on': 'Neomake' })
Plug 'vim-scripts/AutoComplPop'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Lokaltog/vim-easymotion'
Plug 'vim-scripts/closetag.vim', { 'on': [] }
Plug 'altercation/vim-colors-solarized'

" Languages
Plug 'derekwyatt/vim-scala'
Plug 'ensime/ensime-vim' "{{{
  nnoremap <localleader>t :EnTypeCheck<CR>
  au FileType scala nnoremap <localleader>df :EnDeclaration<CR>
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

Plug 'haya14busa/incsearch.vim' "{{{
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
"}}}

Plug 'sirver/ultisnips', { 'on': [] } "{{{
  let g:UltiSnipsSnippetsDir = '~/.vim/plugged/vim-snippets/UltiSnips'
  let g:UltiSnipsExpandTrigger="<c-j>"
  let g:UltiSnipsJumpForwardTrigger="<c-j>"
  let g:UltiSnipsJumpBackwardTrigger="<c-k>"
  let g:UltiSnipsListSnippets="<c-l>"

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
  nnoremap <silent> <F4> :NERDTreeToggle<CR>
  nnoremap <silent> <F5> :NERDTreeFind<CR>
  let NERDTreeShowHidden=1
"}}}

Plug 'ctrlpvim/ctrlp.vim' "{{{
  nnoremap <leader>e :CtrlP<cr>
  nnoremap <leader>E :CtrlPCurFile<cr>
  nnoremap <leader>t :CtrlPBufTag<cr>
  nnoremap <leader>T :CtrlPTag<cr>
  nnoremap <leader>a :CtrlPBuffer<cr>
  nnoremap <leader>A :CtrlPMRUFiles<cr>

  let g:ctrlp_match_window = 'bottom,order:btt,min:20,max:20,results:20'
  let g:ctrlp_working_path_mode = 0
  let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
        \ 'file': '\.pyc$\|\.pyo$',
        \ }
  let g:ctrlp_open_multiple_files = '1jr'
  let g:ctrlp_max_files = 0
  let g:ctrlp_lazy_update = 50
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
  let g:ctrlp_buftag_types = { 'ant': '--language-force=ant' }
"}}}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

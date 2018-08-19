function InstallOptPlugs()
  Plug 'sakshamsharma/encfile-mode'

  """
  """ Python, Go, Scala
  """
  Plug 'davidhalter/jedi-vim'
  Plug 'fatih/vim-go'
  Plug 'derekwyatt/vim-scala'

  """
  """ Typescript
  """
  Plug 'Quramy/tsuquyomi'
  Plug 'leafgarland/typescript-vim'

  """
  """ Haskell
  """
  Plug 'eagletmt/neco-ghc'            " For haskell completions
  Plug 'eagletmt/ghcmod-vim'
  Plug 'bitc/vim-hdevtools'
  Plug 'dag/vim2hs'

  """
  """ Rust and Scala
  """
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

  """
  """ ClangFormat
  """
  Plug 'rhysd/vim-clang-format' "{{{
  let g:clang_format#style_options = {
              \ "AccessModifierOffset" : -4,
              \ "IndentWidth" : 4,
              \ "TabWidth" : 4,
              \ "AllowShortIfStatementsOnASingleLine" : "false",
              \ "AllowShortBlocksOnASingleLine" : "false",
              \ "AllowShortLoopsOnASingleLine" : "false",
              \ "AlwaysBreakTemplateDeclarations" : "true",
              \ "PointerAlignment" : "Right",
              \ "DerivePointerAlignment" : "false",
              \ "ColumnLimit" : 75,
              \ "Standard" : "C++11" }
  "}}}

  augroup filetype_compile
    autocmd!
    autocmd BufWritePre *.c,*.cpp,*.objc,*.h ClangFormat
  augroup END

endfunction

if has('nvim')
  let g:deoplete#enable_at_startup = 1
  let g:neocomplete#enable_at_startup = 0
  let g:acp_enableAtStartup = 0
else
  source ~/.vim/vimfiles/neocomplete.vim
endif

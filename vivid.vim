source ~/.vim/vimfiles/plugins.vim
source ~/.vim/vimfiles/functions.vim
source ~/.vim/vimfiles/keys.vim
source ~/.vim/vimfiles/settings.vim
source ~/.vim/vimfiles/appearance.vim
source ~/.vim/vimfiles/haskell.vim
source ~/.vim/vimfiles/completions.vim

" Syntax checking make plugin
if has('nvim')
  source ~/.vim/vimfiles/neomake.vim
else
  source ~/.vim/vimfiles/syntastic.vim
endif

" TODO
" Move these commands into their proper places (?) sometime


Vivid vim
==========

The end result of an year with Vim, and only Vim.

```
____   ____.__      .__    .___
\   \ /   /|__|__  _|__| __| _/
 \   Y   / |  \  \/ /  |/ __ | 
  \     /  |  |\   /|  / /_/ | 
   \___/   |__| \_/ |__\____ | 
                            \/ 
```

A vimrc tailored to my tastes, myriads of packages I cannot live without, keybindings I miss instantly when I use some other editor, and lots more.

# Installation
Why? That's a perfectly sane question. Ideally, you should be cloning this repo, and then pulling necessary things into your vimrc.

Still, if you want the easy way, here's it:
Simple, backup your ```.vim``` folder, pull this repo in there, and source the main ```vivid.vim``` from your vimrc.

```
cd ~
cp -r .vim .vim.old
cp .vimrc .vimrc.old
git clone https://github.com/sakshamsharma/vivid-vim
echo "source ~/.vim/vivid.vim" > ~/.vimrc
echo "Installing plugins :smile: "
vim +NeoBundleInstall +qall
```

# Highlights
+ Mapping ```:``` to ```;```. No I'm not insane, this is perfectly logical. Try it.
+ All the cool plugins you would ever need (more like: You *should* be using)
+ Convenient mappings for using the system clipboard (who like to use ```"+p``` for a simple paste?)
+ Undodir. Never ever lose your edit history because of prematurely quitting Vim.
+ All the sane settings you should ever need.
+ An awesome looking Airline statusline.
+ Plugins and sane configurations for many commonly used programming languages (more like: languages I use).

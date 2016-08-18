#!/bin/bash

# install powerline fonts
git clone https://github.com/powerline/fonts ~/powerfonts
cd ~/powerfonts
./install.sh
cd ..
rm -rf ~/powerfonts

git clone https://github.com/turtle11311/.vim ~/.vim
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vim/vimrc $XDG_CONFIG_HOME/nvim/init.vim

#!/bin/bash

echo "Cloning git repo into ~/dotfiles"
git clone https://github.com/hatboysam/dotfiles.git ~/dotfiles

echo "Symlinking ~/.vimrc"
ln -s ~/dotfiles/vimrc ~/.vimrc

echo "Done"

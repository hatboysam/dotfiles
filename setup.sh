#!/bin/bash

#Clone files into dotfiles
git clone https://github.com/hatboysam/dotfiles.git ~/dotfiles

#Symlink vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

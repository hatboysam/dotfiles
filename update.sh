#!/bin/bash

echo "Backing up ~/.vimrc to ~/.vimrcbak"
cp ~/.vimrc ~/.vimrcbak

echo "Pulling latest from git..."
cd ~/dotfiles
git pull origin master

echo "Done"

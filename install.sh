#!/bin/bash

# Create backup directory
mkdir -p ~/DotfilesBackup

# Backup existing dotfiles
mv ~/.bashrc ~/DotfilesBackup/
mv ~/.vimrc ~/DotfilesBackup/
mv ~/.tmux.conf ~/DotfilesBackup/

# Create symbolic links to new dotfiles
ln -s .bashrc ~/.bashrc
ln -s .vimrc ~/.vimrc
ln -s .tmux.conf ~/.tmux.conf

# Reload bash configuration
source ~/.bashrc

# Install vim plugins
vim +PlugInstall +qall

# load tmux conf
tmux source-file ~/.tmux.conf


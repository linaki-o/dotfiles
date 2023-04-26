#!/bin/bash

# Determine operating system
if [[ "$(uname)" == "Darwin" ]]; then
    OS="macOS"
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    if [ -f "/etc/redhat-release" ]; then
        OS="CentOS"
    elif [ -f "/etc/lsb-release" ]; then
        OS="Ubuntu"
    fi
fi
# Define software to be installed
software_command=("vim" "bash" "tmux" "git")

# Loop through software commands
for command in "${software_command[@]}"
do
    # Check if software is installed
    if ! command -v $command &> /dev/null
    then
	# Install software
        if [ $OS == "CentOS" ]; then
            sudo yum install -y $command
        elif [ $OS == "Ubuntu" ]; then
            # sudo apt-get update
            sudo apt-get install -y $command
        fi
    fi
done
# Create backup directory
mkdir -p ~/DotfilesBackup

# Backup existing dotfiles
mv ~/.bashrc ~/DotfilesBackup/
mv ~/.vimrc ~/DotfilesBackup/
mv ~/.tmux.conf ~/DotfilesBackup/

# Create symbolic links to new dotfiles
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

# Reload bash configuration
source ~/.bashrc

# Install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PlugInstall +qall

# load tmux conf
tmux source-file ~/.tmux.conf


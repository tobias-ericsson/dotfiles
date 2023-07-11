#!/bin/bash

######### Variables
 
dir=~/dev/me/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=".vimrc .uh.yaml .ch.yaml .zshrc"        # list of files/folders to symlink in homedir
 
##########
 
# Creating $olddir for backup of any existing dotfiles in ~
mkdir -p $olddir

echo "Move existing dotfiles in homedir to dotfiles_old directory, then create symlinks for $files"

cd $dir
for file in $files; do
    echo "Moving $file from ~ to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done


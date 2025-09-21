#!/bin/bash

######### Variables

dotfiles_dir=~/dev/me/dotfiles       # Dotfiles directory
backup_dir=~/dotfiles_old            # Backup directory for old dotfiles
files=".vimrc .uh.yaml .ch.yaml .gitconfig .config/gh/config.yml"  # List of files/folders to symlink in home directory

##########

# Create backup directory for existing dotfiles
mkdir -p $backup_dir

echo "Processing dotfiles:"

# Loop through each file in the list
for file in $files; do
    target=~/$file

    if [ -L "$target" ]; then
        echo "Skipping $file as it is already a symlink."
    else
        if [ -e "$target" ]; then
            echo "Moving existing $file from home directory to $backup_dir."
            mv "$target" "$backup_dir/"
        fi

        echo "Creating symlink for $file in the home directory."
        ln -s "$dotfiles_dir/$file" "$target"
    fi
done

echo "Dotfiles setup complete."

#!/bin/bash 
shopt -s dotglob

fromPath=~
toPath=/d/dev/dotfiles/home
echo from: $fromPath
echo to: $toPath

cp -rv "$fromPath/bin" "$toPath/"
cp -rv "$fromPath/.dotfiles" "$toPath/"
cp -rv "$fromPath/.bashrc" "$toPath/.bashrc"

echo done



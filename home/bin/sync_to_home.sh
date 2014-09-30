#!/bin/bash 
shopt -s dotglob

fromPath=/d/dev/dotfiles/home
toPath=~
echo from: $fromPath
echo to: $toPath

cp -rv "$fromPath/bin" "$toPath/"
cp -rv "$fromPath/.dotfiles" "$toPath/"
cp -rv "$fromPath/.bashrc" "$toPath/.bashrc"

echo done



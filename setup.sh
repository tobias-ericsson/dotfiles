#!/bin/bash

function have() {
   which $1 &> /dev/null
}

./setupdev.sh
./setuppath.sh
source ${HOME}/.zprofile

#Simplified and community-driven man pages
#https://github.com/tldr-pages/tldr
have tldr || npm install -g tldr

./listprograms.sh
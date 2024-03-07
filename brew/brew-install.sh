#!/bin/bash

#Packages to install
packages=(
    curl
    wget
    git
    autojump
    terraform
    gh
    go-task
    vim
    vlc
#replace ls    
    eza
#replace cat    
    bat
    mdcat
#command line YAML processor
    yq
#command line JSON processor
    jq
#command line fuzzy finder
    fzf
    kubectl
    kubectx
    kubens
    kube-ps1
    ripgrep
    npm
    tldr
    youtube-dl
#databases   
    redis
    postgresql
)

function have() {
   which $1 &> /dev/null
}

function install() {
   which $1
   have $1 || brew install $1
}

echo "brew update"
brew update

for package in "${packages[@]}"; do
    install ${package}
done


#!/bin/bash

#Packages to install
packages=(
    curl
    wget
    git
    autojump
    terraform
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


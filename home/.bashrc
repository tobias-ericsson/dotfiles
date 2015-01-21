#load settings from .dotfiles
#source ~/.dotfiles/bash_prompt.sh
source ~/.dotfiles/alias.sh

# get tab completion from ssh/config
complete -W "$(<~/.ssh/config)" ssh

#clear screen
clear

#say hello
echo "Hej..."
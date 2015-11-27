# load zgen
source "${HOME}/dev/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting
    #zgen load /path/to/super-secret-private-plugin

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen oh-my-zsh themes/arrow

    # save all to init script
    zgen save
fi

# alias
alias chrome='google-chrome'
alias cheat=tldr
alias rdesktop.xencenter01='rdesktop -u administrator -k sv 10.99.10.12'

# autojump with j
[[ -s ${HOME}/.autojump/etc/profile.d/autojump.sh ]] && source ${HOME}/.autojump/etc/profile.d/autojump.sh

if test -d ${HOME}/.local/bin ; then
	export PATH=${HOME}/.local/bin:$PATH
fi


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

# autojump with j
[[ -s /home/tobias/.autojump/etc/profile.d/autojump.sh ]] && source /home/tobias/.autojump/etc/profile.d/autojump.sh




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
alias rdesktop.malmo='rdesktop -u pt/pt-admin-tobias -k sv 10.99.12.32'
alias rdesktop.xencenter01='rdesktop -u administrator -k sv 10.99.10.12'
#docker
alias dc=docker-compose
alias all=$(docker ps -a -q)

# autojump with j
[[ -s ${HOME}/.autojump/etc/profile.d/autojump.sh ]] && source ${HOME}/.autojump/etc/profile.d/autojump.sh

if test -d ${HOME}/.local/bin ; then
	export PATH=${HOME}/.local/bin:$PATH
fi

if test -d ${HOME}/dev/go ; then
        export PATH=/usr/lib/go-1.9/bin:${HOME}/program/liteide/bin/:$PATH
	export GOPATH=${HOME}/dev/go
        export GOBIN=${HOME}/dev/go/bin
        export GOROOT=/usr/lib/go-1.9
fi

if test -d ${HOME}/program/java/jdk1.8.0_71 ; then
    export JAVA_HOME=${HOME}/program/java/jdk1.8.0_71
    export PATH=${JAVA_HOME}/bin:$PATH
fi

if test -d ${HOME}/program/google-cloud-sdk/bin ; then
    export PATH=$PATH:/${HOME}/program/google-cloud-sdk/bin
fi



xbacklight -set 75
#PS1='%{$fg[$NCOLOR]%}%c [$(kubectl config current-context)] ➤ %{$reset_color%}'


source /home/tobias.ericsson/.local/bin/aws_zsh_completer.sh

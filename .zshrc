source /home/tobias/dev/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
#antigen bundle git
#antigen bundle heroku
#antigen bundle pip
#antigen bundle lein
#antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

# ----------------------------------------------


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# get tab completion from ssh/config 
#complete -W "$(<~/.ssh/config)" ssh


#PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;}'echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'

# aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias chrome='google-chrome'


[[ -s /home/tobias/.autojump/etc/profile.d/autojump.sh ]] && source /home/tobias/.autojump/etc/profile.d/autojump.sh

# PROMT

autoload -U colors && colors
PS1="%{$fg[red]%}-%{$reset_color%}%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}% "

#PROMPT='%m %~ '

autoload -Uz vcs_info
	
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' formats '[%b]'

precmd () { vcs_info }
setopt prompt_subst
PS1="$PS1\${vcs_info_msg_0_}$ "


#local knownhosts
#knownhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%##%,*} )
#zstyle ':completion:*:(ssh|scp|sftp):*' hosts $knownhosts

#zstyle -s ':completion:*:hosts' hosts _ssh_config
#[[ -r ~/.ssh/config ]] && _ssh_config+=($(cat ~/.ssh/config | sed -ne #'s/Host[=\t ]//p'))
#zstyle ':completion:*:hosts' hosts $_ssh_config


#clear screen
clear

#say hello
fortune
#echo "Hej!"





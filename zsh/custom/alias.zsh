

alias python="python3"
alias pip="pip3"
alias kgp="kubectl get pods"
alias k="kubectl"
# ansi works with both light and dark background
alias cat='bat --theme=ansi -pp'
alias ls="eza -la"
alias l="eza -l --no-permissions --no-user --no-time -ssize"
alias fzfp="fzf --preview 'bat --color always {}'"
alias ak="goak"
alias func="print -l ${(ok)functions[(I)[^_]*]}" #functions

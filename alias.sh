#Compact, colorized git log
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#Visualise git log (like gitk, in the terminal)
alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

workdone(){
    default="1 day ago"
    git log --committer=tobias.ericsson@mobenga.com --pretty=format:"%Cgreen%ar (%h)%n%Creset> %s %b%n" --since="${1:-$default}" --no-merges
}
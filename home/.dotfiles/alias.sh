#Compact, colorized git log
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#Visualise git log (like gitk, in the terminal)
alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

workdone(){
    default="1 day ago"
    git log --committer=tobias.ericsson@mobenga.com --pretty=format:"%Cgreen%ar (%h)%n%Creset> %s %b%n" --since="${1:-$default}" --no-merges
}

export HISTFILESIZE=3000 # the bash history should save 3000 commands
export HISTCONTROL=ignoredups #don't put duplicate lines in the history.
alias hist='history | grep $1' #Requires one input




# Alias's to local workstations
alias f-web01='ssh -A deployer@web01.fortuna-internal.staging.mobenga.net'
alias f-ipad01='ssh -A deployer@web01.ipad-fortuna-internal.staging.mobenga.net'
alias f-prod01='ssh ericsson@10.50.68.32'
alias f-preprod01='ssh ericsson@10.50.68.36'



#Show active network listeners
alias netlisteners='lsof -i -P | grep LISTEN'
alias openports='netstat -a |grep LISTENING'

#Show which commands you use the most
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

#Recursive directory listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

#Search for process
alias tm='ps -ef | grep'

#Find text in any file
findit() { 
	find . -name "$2" -exec grep -il "$1" {} \;
}


#Copy public key to remote machine (dependency-less)
function authme() {
  ssh "$1" 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys' \
    < ~/.ssh/id_dsa.pub
}

#Find the biggest in a folder
alias ds='du -ks *|sort -n'


#My public address IP
alias myip='curl ip.appspot.com'

alias ls='ls --color=auto'

# get rid of command not found
alias cd..='cd ..'


#ENV
#export EDITOR="/usr/bin/vim"
export VISUAL='vim -f'
export EDITOR='vim -f'
set -o vi

#disable mysql history for security
#export MYSQL_HISTFILE=/dev/null

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
#aliases
alias h='history'
alias g='grep'
alias vim='mvim -v'
alias be='bundle exec'
alias ber='bundle exec rspec'
alias zer='zeus rspec'

#run sql plus with functional left/right arrows and history
alias sqlplus="rlwrap sqlplus"

#projects
alias www='cd /Users/valbrodsky/src/www'
alias yoda='cd /Users/valbrodsky/src/yoda'
alias jedi='cd /Users/valbrodsky/src/jedi'
alias list='cd /Users/valbrodsky/src/listeners'
alias komodo='cd /Users/valbrodsky/src/komodo'
alias eis='cd /Users/valbrodsky/src/eis'
alias eis-oms='cd /Users/valbrodsky/src/eis/eis-oms-app'
alias eis-orch='cd /Users/valbrodsky/src/eis/eis-orchestration-app'
alias eis-erp='cd /Users/valbrodsky/src/eis/eis-erp-app'
alias eis-wms='cd /Users/valbrodsky/src/eis/eis_wms_app'


export PATH=/usr/local/bin:/usr/local/sbin:$PATH

#load ssh key to login to amazon servers
#ssh-add ~/.ssh/Development.pem
ssh-add ~/.ssh/id_rsa
#new key, but since it requires password, I do not load it by default
#ssh-add ~/.ssh/id_rsa_zestfinance_engineering_20131010

#ssh completion for known hosts
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi
#source ~/git-completion.bash

source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

Green='\[\e[0;32m\]'
BIGreen='\[\e[1;92m\]'
Color_Off='\[\e[0m\]'
export PS1=$Green'\w $(__git_ps1 "(%s)")'$BIGreen'$ '$Color_Off

#iterm2
PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'


source ~/.oracle_client


# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#Setting path for Maven M2_HOME
MAVEN_VERSION=3.3.9
M2_HOME=/usr/local/maven/apache-maven-$MAVEN_VERSION
M2=$M2_HOME/bin

export M2_HOME
export M2

export PATH=$M2:$PATH

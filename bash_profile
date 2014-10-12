#dev stuff
#secret
#export EPHRASE="ed hardy needs a loan"
#Scout for bork
#export scout_username='vlb@zestfinance.com'
#export scout_password='E8_z7euS'




#chef stuff
#export OPSCODE_USER=vbrodsky
#export aws_access_key_id="AKIAJDQXADMRDBIEILYQ"
#export aws_secret_access_key="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"
#export DATABAG_KEY_PATH="/Users/vlb/.secrets/zestcash/development/application_keys/chef_development_databag.key"

#ENV
#export EDITOR="/usr/bin/vim"
export VISUAL='vim -f'
export EDITOR='vim -f'
set -o vi

#disable mysql history for security
#export MYSQL_HISTFILE=/dev/null

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
alias capt='cd /Users/valbrodsky/src/captain_solo'
alias yoda='cd /Users/valbrodsky/src/yoda'
alias jedi='cd /Users/valbrodsky/src/jedi'


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
source ~/.oracle_client

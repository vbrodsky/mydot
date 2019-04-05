#ENV
#export EDITOR="/usr/bin/vim"
export VISUAL='vim -f'
export EDITOR='vim -f'
export HEROKU_ORGANIZATION=snacknation

#export JAVA_HOME=$(/usr/libexec/java_home)
#aliases
alias h='history'
alias g='grep'
alias vim='mvim -v'
alias be='bundle exec'
alias ber='bundle exec rspec'
alias a='atom .'


#projects
alias ngr='cd ~/Downloads; ./ngrok start admin'
alias ngrt='cd ~/Downloads; ./ngrok start admin-test'
alias fcommit='git commit --amend --no-edit'
alias refr='git checkout master; git pull; git checkout -; git rebase master'
alias rdbm='be rake db:migrate'
alias rdb='rails dbconsole -p'
alias rc='rails c'
alias gs='git status'
alias gb='git branch'
alias gl="git log --graph --pretty=format:'%C(magenta)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset' --abbrev-commit"


#load ssh key to login to amazon servers
#ssh-add ~/.ssh/Development.pem
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_rsa_clutter
#new key, but since it requires password, I do not load it by default
#ssh-add ~/.ssh/id_rsa_zestfinance_engineering_20131010

#ssh completion for known hosts
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

source ~/git_completion.bash

Green='\[\e[0;32m\]'
BIGreen='\[\e[1;92m\]'
Color_Off='\[\e[0m\]'
export PS1=$Green'\w $(__git_ps1 "(%s)")'$BIGreen'$ '$Color_Off

#iterm2
#PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

eval "$(rbenv init -)"

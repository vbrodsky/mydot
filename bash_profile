#ENV
#export EDITOR="/usr/bin/vim"
export VISUAL='vim -f'
export EDITOR='vim -f'
set -o vi

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101/Contents/Home
export JAVA_HOME=$(/usr/libexec/java_home)
#aliases
alias h='history'
alias g='grep'
alias vim='mvim -v'
alias be='bundle exec'
alias ber='bundle exec rspec'
alias a='atom .'


#projects
alias plat='cd /Users/valbrodsky/src/clutter'
alias ngr='cd ~/Downloads; ./ngrok start admin'
alias ngrt='cd ~/Downloads; ./ngrok start admin-test'
alias gems='cd /opt/boxen/rbenv/versions/2.2.3/lib/ruby/gems/2.2.0/gems'
alias fcommit='git commit --amend --no-edit'
alias refr='git checkout master; git pull; git checkout -; git rebase master'
alias rdbm='be rake db:migrate'
alias rdb='rails dbconsole -p'
alias rc='rails c'
alias gs='git status'
alias gl='git log'

source /opt/boxen/env.sh
export PATH=/usr/local/Cellar/qt@5.5/5.5.1/bin:$PATH
export PATH=~/Downloads/apache-maven-3.2.2/bin:$PATH

#load ssh key to login to amazon servers
#ssh-add ~/.ssh/Development.pem
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_clutter
#new key, but since it requires password, I do not load it by default
#ssh-add ~/.ssh/id_rsa_zestfinance_engineering_20131010

#ssh completion for known hosts
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh


#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  source $(brew --prefix)/etc/bash_completion
#fi
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

Green='\[\e[0;32m\]'
BIGreen='\[\e[1;92m\]'
Color_Off='\[\e[0m\]'
export PS1=$Green'\w $(__git_ps1 "(%s)")'$BIGreen'$ '$Color_Off

#iterm2
PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

#TEAL Stuff
#export TWILIO_INTERCEPT_MESSAGE_WHITELIST=+19175765005

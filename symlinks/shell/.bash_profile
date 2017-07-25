export PS1="\[\e[31;1m\]\h\[\e[0m\] \W "
export EDITOR="/usr/local/bin/atom --wait"

git config --global user.name "Kunal Shah"
git config --global user.email "me@kunalashah.com"

git config --global core.editor "atom"
git config --global core.excludesfile ~/.gitignore

git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto

git config --global diff.renamelimit 4000
git config --global diff.renames true

# Git
alias gs="git status"
alias gp="git push"
alias gd="git diff"
alias gds="git diff | subl"
alias gdc="git diff --cached"
alias gls="gs | grep 'both modified' | awk '{print $4}' | head -n 1 | xargs subl"

alias mountdir="ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd).start'"

# Development
alias bi='bundle install'
alias o='open .'

function gcm(){
  git commit -m "$1";
}

# Directory Shortcuts
alias p="cd ~/Projects"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.rbenv/bin:$PYENV_ROOT/bin:$PATH"

eval "$(rbenv init -)"
eval "$(direnv hook bash)"

alias start_redis="redis-server /usr/local/etc/redis.conf"
alias start_pg="pg_ctl -D /usr/local/var/postgres/ -l logfile start"
alias stop_pg="pg_ctl -D /usr/local/var/postgres/ stop"
alias start_mysql="mysql.server start"

export NVM_DIR="/Users/kshah/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
eval "$(pyenv init -)"

alias python2="/Users/kshah/.pyenv/versions/2.7.13/bin/python"

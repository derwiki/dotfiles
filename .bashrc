# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin/:$PATH"

. /usr/local/etc/bash_completion.d/git-prompt.sh
. /usr/local/etc/bash_completion.d/git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

export PS1='\D{%F %T} \h:\w$(__git_ps1 "\[\e[32m\][%s]\[\e[0m\]")$
$ '
export EDITOR=vim

alias g=git
alias gg='git grep'
alias raquo='echo » | pbcopy'

alias h=heroku
alias ho='heroku addons:open'

function def
{
  ag "def (self\.)?$@"
}
function f
{
  find . -iname "*$@*"
}
# search python
function sp
{
  /usr/local/bin/rg -p -tpy "$@" | less -XFR
}
# search javascript
function sjs
{
  /usr/local/bin/rg -p -tjs "$@" | less -XFR
}
# pretty print JSON
function jv
{
  cat $@ | python -m json.tool | less
}
# strip colorcodes
function sc
{
  sed "s,$(printf '\033')\\[[0-9;]*[a-zA-Z],,g"   
}
# pretty print sql                                                                 
function ppsql                                                                     
{                                                                                  
  python -c "import sys;import sqlparse;print sqlparse.format(sys.stdin.read(), reindent=True, keyword_case='upper')"
} 

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules,venv}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
bind -x '"\C-p": vim $(fzf);'


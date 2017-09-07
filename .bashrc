# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin/:$PATH"

. /usr/local/etc/bash_completion.d/git-prompt.sh
. /usr/local/etc/bash_completion.d/git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

export PS1='\h:\w$(__git_ps1 "\[\e[32m\][%s]\[\e[0m\]")$
$ '
export EDITOR=vim

alias g=git
alias gg='git grep'
alias raquo='echo » | pbcopy'

function def
{
  ag "def (self\.)?$@"
}
function f
{
  find . -iname "*$@*"
}

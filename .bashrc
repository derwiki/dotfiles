export PATH=$PATH:$HOME/bin
. /usr/local//etc/bash_completion.d/git-prompt.sh
. /usr/local/etc/bash_completion.d/git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

export PS1='\h:\w$(__git_ps1 "\[\e[32m\][%s]\[\e[0m\]")$
$ '
export EDITOR=vim

export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000
alias g=git
alias gg='git grep'
alias raquo='echo » | pbcopy'
function tailfor
{
  tail -f log/development.log | grep $@
}
function def
{
  ag "def (self\.)?$@"
}
function f
{
  find . -iname "*$@*"
}

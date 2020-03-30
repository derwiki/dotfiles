# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin/:$PATH"

. /usr/local/etc/bash_completion.d/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

# setopt PROMPT_SUBST
export PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ 
$ '
# export PS1='\h:\w$(__git_ps1 "\[\e[32m\][%s]\[\e[0m\]")$
# $ '
bindkey '^R' history-incremental-search-backward
export EDITOR=vim
bindkey -e  # set vim mode

alias g=git
alias gg='git grep -n'
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

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

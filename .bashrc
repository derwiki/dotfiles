if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias ll='ls -l --color=tty'

. $HOME/.git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export PS1='\h:\w$(__git_ps1 "\[\e[32m\][%s]\[\e[0m\]")$ '

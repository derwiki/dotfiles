if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias ll='ls -l --color=tty'

alias ipython="ipython tools/interactive.py -noconfirm_exit"
alias screen=agentscreen
alias agentscreen="agentscreen -xRR"
alias s=agentscreen
alias ssh="ssh -A"
alias m='mysql -u$USER yelp -p$DBPASSWORD -h'

# Change the window title of X terminals
case $TERM in
        xterm*|rxvt*|Eterm)
                PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
                ;;
        screen)
                PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
                ;;
esac

export PATH=~/bin:$PATH:~/pg/loc/aws/bin
export PYTHONPATH=$PYTHONPATH:~/python_libs
#export PS1='\[\e[1;34m\]\u\[\e[0;39m\]@\[\e[1;32m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]$(" \[\e[1;36m\](%s)\[\e[0;39m\] ")\$ '

unsetopt notify
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kardan"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails3)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/adam/.rbenv/shims:/home/adam/.rbenv/bin:/home/adam/.rbenv/shims:/home/adam/.rbenv/bin:/usr/NX/bin:/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/data/philotic/sbin:/home/adam/bin:/opt/python2.7/bin:/home/adam/bin:/home/adam/scripts/:/home/adam/devscripts/:/home/adam/devscripts/gerrit:/home/adam/devscripts/git:/opt/python2.7/bin:/home/adam/bin:/home/adam/scripts/:/home/adam/src/devscripts/:/data/philotic/sbin:/home/adam/bin:/opt/python2.7/bin:/home/adam/bin:/home/adam/scripts/:/home/adam/devscripts/:/home/adam/devscripts/gerrit:/home/adam/devscripts/git:/opt/python2.7/bin:/home/adam/bin:/home/adam/scripts/:/home/adam/src/devscripts/

[[ -s ~/scripts/helpers.sh ]] && source ~/scripts/helpers.sh
[[ -s ~/devscripts/helpers.sh ]] && source ~/devscripts/helpers.sh
export PATH=~/bin:$PATH
export PATH=~/scripts/:$PATH
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000
export EDITOR=vim

[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && source ~/.autojump/etc/profile.d/autojump.zsh

# -*- mode: shell-script; -*-
# ~/.bashrc 
# Read by interactive non-login bash.

# User specific environment variables
export EDITOR=emacs
export SVN_EDITOR=vim
if [ -d "$HOME/bin" ]; then
    export PATH=$PATH:"$HOME/bin"
fi
export CLASSPATH=".:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar"

# set colors for `man'
export LESS_TERMCAP_mb=$'\E[1;37m'
export LESS_TERMCAP_md=$'\E[1;37m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[0;30m\E[47m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[0;32m'

# Set my console prompt
if [ $TERM = linux ]; then
    # The terminator
    export PS1="\[\e[32;1m\]\u@\h:\w[$?]\$\[\e[0m\] "
elif [ $TERM = dumb -o $TERM = emacs ]; then
    # Emacs shell
    export PS1="\u@\h:\W[$?]\$ "
else
    # The terminator emulator
    export PS1='\[\e]0;\u@\h:\w\007\]\[\e[32m\]\u:\w[$?]\$\[\e[0m\] '
fi

export LANG=en_US.UTF-8

# User specific aliases 
alias rm='rm -i'
alias cp='cp -i -v'
alias mv='mv -i -v'
if [ $TERM = dumb ]; then
    alias ls='ls --classify'
elif [ $(uname) = Darwin ]; then
    alias ls='ls -G -F'
else
    alias ls='ls --color=always --classify'
fi
alias ll='ls -lh'
alias less='less -R'
alias grep='grep --color=auto'
alias matlab='matlab -nosplash'
alias bindkey='bind'
alias ansic='cc -W -Wall -ansi -pedantic'
alias c99='gcc -W -Wall -std=c99 -pedantic'

# allow core dump
ulimit -c unlimited

# Include local config.
if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

# Automatic completion.
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# Install z.sh.
if [ -f ~/bin/z.sh ]; then
    source ~/bin/z.sh
fi

# Local config
if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

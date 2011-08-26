if [ "$TERM" = "linux" ]; then
	echo -en "\e]P00f0f0f"
	echo -en "\e]P8555753"
	echo -en "\e]P1ed3434"
	echo -en "\e]P9ff6767"
	echo -en "\e]P2afd700"
	echo -en "\e]PAafd75f"
	echo -en "\e]P3ff9000"
	echo -en "\e]PBffc123"
	echo -en "\e]P4204a87"
	echo -en "\e]PC1165e9"
	echo -en "\e]P5af0087"
	echo -en "\e]PDd70087"
	echo -en "\e]P6008787"
	echo -en "\e]PE7dc9e3"
	echo -en "\e]P7555753"
	echo -en "\e]PFa1a1a1"
	clear
fi

stty -ixon
stty susp undef

PS1='\[\e[0;36m\]┌─\[\e[0;36m\][\[\e[0;37m\]\u\[\e[1;36m\]·\[\e[0;37m\]\\
\h\[\e[0;36m\]]\[\e[0;36m\][\[\e[0;37m\]\w\[\e[0;36m\]]\n\[\e[0;36m\]\\
└─[\[\e[0;37m\]\D{%H}\[\e[0;36m\]:\[\e[0;37m\]\D{%M}\[\e[0;36m\]:\[\e[0;37m\]\\
\D{%S}\[\e[0;36m\]]\[\e[1;36m\]>\[\e[0;37m\] '
PS2='\[\e[1;36m\]>\[\e[0;37m\] '

export HISTFILESIZE=100
export HISTCONTROL=ignoreboth
export LC_TIME=de_DE.utf8
export LC_COLLATE=C
export EDITOR=vim
export VISUAL=vim
export BROWSER=vimprobable2-tabbed
export PAGER='less -q -R'
export MANPAGER='less -q -R'
export GOROOT=/store/shop/go
export PATH=$PATH:$GOROOT/bin:$HOME/bin
export XDG_RUNTIME_DIR=$HOME/.runtime
export RXVT_SOCKET=$XDG_RUNTIME_DIR/urxvt_socket
export GREP_COLOR='0;32'
export GROFF_NO_SGR=1
export LESS_TERMCAP_mb=$'\E[00;31m'
export LESS_TERMCAP_md=$'\E[00;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[0;32m'
export DICT_COLOR1=$'\E[0;39m'
export DICT_COLOR2=$'\E[0;32m'
export DICT_COLOR3=$'\E[0;35m'
export FSPIEL_DATE=$'\E[0;32m'
export FSPIEL_TIME=$'\E[0;32m'
export FSPIEL_RUNTIME=$'\E[1;34m'
export FSPIEL_STATION=$'\E[0;36m'
export FSPIEL_TITLE=$'\E[0;33m'
export FSPIEL_GENRE=$'\E[0;31m'
export FSPIEL_LINK=$'\E[1;36m'
export FSPIEL_RUNNING=$'\E[0;31m'
export FSPIEL_FINISHED=$'\E[0;31m'
export FSPIEL_DELIMITER=$'\E[0;36m'

alias vi='vim'
alias svi='sudo vim'
alias ls='/bin/ls -F --format=single-column'
alias lc='/bin/ls -F'
alias ll='/bin/ls -lF'
alias cp='cp -r'
alias rm='rm -r'
alias df='df -h'
alias du='du -h'
alias less="less -q -R"
alias mkdir='mkdir -p'
alias grep='grep --color=auto'
alias dict='dict -c'
alias filmspiel='filmspiel --color'

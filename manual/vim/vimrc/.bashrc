# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

LS_COLORS='di=36:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
# User specific aliases and functions
alias www='cd /data/httpd/htdocs;ll'
alias tvb='cd /opt/php/lib/php/TVB;ll'
alias ll='ls -al'
alias cls='clear'
alias vi='vim'
export SVN_EDITOR=/usr/bin/vim

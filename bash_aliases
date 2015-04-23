#about dir
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -ltrhA'
alias ..='cd ../'
alias ...='cd ../..'

alias c='clear'
alias r='reset'

alias f='file'
alias s='stat'

#functions
md5(){ echo -n "$1" | md5sum; }
ipadrs(){ curl ipinfo.io/$1; echo "";}
wh(){ whois $1 ;}
p(){ url1=$1;url2=`echo ${url1#http://}`;url=`echo ${url2%%/**}`;ping -c 5 $url; }

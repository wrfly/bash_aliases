#about ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -ltrhA'
alias ..='cd ../'
alias ...='cd ../..'

#about terminal
alias c='clear'
alias r='reset'

#about files
alias f='file'
alias s='stat'

#others
alias mkdir='mkdir -pv'
alias top='htop' # you should install htop first

#about system
alias update='sudo apt-get update && sudo apt-get upgrade'

#functions
md5(){ echo -n "$1" | md5sum; }
ipadrs(){ curl ipinfo.io/$1; echo "";}
wh(){ whois $1 ;}
p(){ url1=$1;url2=`echo ${url1#http://}`;url=`echo ${url2%%/**}`;ping -c 5 $url; }
mcd(){ mkdir -p "$1"; cd "$1";}

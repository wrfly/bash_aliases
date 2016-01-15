#about ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -ltrhA'
alias ..='cd ../'
alias ...='cd ../..'
alias gl='ls|grep --color'

#about terminal
alias c='clear'
alias r='reset'

alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
alias vps='ssh root@8.8.8.8 -p 888 -i /home/mr/.ssh/vps_pri'

#about files
alias f='file'
alias s='stat'
alias rm='rm -i'
alias opwd='nautilus .'

#Other functions
alias mkdir='mkdir -pv'
alias top='htop' # you should install htop first
alias bc='bc -ql'
alias vps='ssh root@your_vps_address -p port'

f-gitpush() { cd .git &> /dev/null && cd .. && git add -A && git commit -m "${1:-push`date`}" && git push || echo "WARNING! This is not a git folder."; }
f-unzip() { unzip -O cp936 $1; } #解决乱码问题
f-iconv() { for i in "$@";do iconv -f gbk -t utf8 "$1" -o "$1"; shift;done; } # iconv more easier

mcd(){ mkdir -p "$@" && cd "$@";}
alias update='sudo apt-get update && sudo apt-get upgrade'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com' #Get your wan ipaddress
md5(){ echo -n "$1" | md5sum; }
ipadrs(){ curl ipinfo.io/$1; echo "";}
wh(){ whois $1 ;}
p(){ url1="$1";url2=${url1#*://};url=${url2%%/**};/bin/ping -c 5 $url; }
alias ping='p' #enable ping http://www.github.com/hello
mcd(){ mkdir -p "$1"; cd "$1";}
c-iconv() { iconv -f gbk -t utf8 $1 -o $1 ;} # iconv more easier
cat(){ /bin/cat $@ | lolcat; } # install lolcat first


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

#others
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
alias ghistory="history | grep"
alias port='netstat -tulanp'
alias listen="lsof -P -i -n" 
alias ?='man' #haha

alias f='file'
alias s='stat'
alias rm='rm -i'
alias opwd='nautilus .'
alias svi='sudo vi' #超级用户权限写入

#Other functions
alias mkdir='mkdir -pv' # 建立多层目录
alias top='htop' # you should install htop first
alias bc='bc -ql' # 预先导入数学库

f-gitpush() { cd .git &> /dev/null && cd .. && git add -A && git commit -m "${1:-push`date`}" && git push || echo "WARNING! This is not a git folder."; }
f-unzip() { unzip -O cp936 $1; } #解决解压时候的乱码问题
f-iconv() { for i in "$@";do iconv -f gbk -t utf8 "$1" -o "$1"; shift;done; } # 更快的转换编码

mcd(){ mkdir -p "$@" && cd "$@";} # 建立之后再进入
alias update='sudo apt-get update && sudo apt-get upgrade' # 一步到位
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com' # 得到公网IP
md5(){ echo -n "$1" | md5sum; } # 生成MD5
ipadrs(){ curl ipinfo.io/$1; echo "";} # 查看某个IP的地理位置/查看你的IP地址
p(){ url1="$1";url2=${url1#*://};url=${url2%%/**};/bin/ping -c 5 $url; }
# p(){ url=`echo $1 | sed "s:\(.*//\(.*\)/.*\):\2:g"`;/bin/ping -c 5 $url; } # 另一种方法截取URL地址
alias ping='p' # Enable ping http://www.github.com/hello
cat(){ /bin/cat $@ | lolcat; } # install lolcat first

# VPS相关
alias vps='ssh root@your_vps_address -p port -i ~/.ssh/identify' # 登陆VPS
alias vps-1='ssh root@vps-1-address -p port' # 登陆VPS-1
alias vps-2='ssh root@vps-2-address -p port' # 登陆VPS-2
alias vps-3='ssh root@vps-3-address -p port' # 登陆VPS-3
function vps-ctl(){
    command=$1
    if [[ "$command" != '' ]]; then
        echo -n "vps-0: "
            vps "$command"
        echo -n "vps-1: "
            vps-1 "$command"
        echo -n "vps-2: "
            vps-2 "$command"
        echo -n "vps-3: "
            vps-3 "$command"
}

# 压缩解压
function tarz() {
        [ "$1" != "" ] && tar -czRf $1.tar.gz $1 && echo "$1.tar.gz created successfully!"|| echo "Usage: tarz [folder_or_file]"
}

function tarj() {
        [ "$1" != "" ] && tar -cjRf $1.tar.bz2 $1 && echo "$1.tar.bz2 created successfully!" || echo "Usage: tarj [folder_or_file]"
}

function utar() {
        [ "$1" != "" ] && tar -xvf $1 || echo "Usage: utar [tar_file_name]"
}

function extract() { 
    if [ -f $1 ] ; then 
      case $1 in 
        *.tar.bz2)   tar xjf $1     ;; 
        *.tar.gz)    tar xzf $1     ;; 
        *.bz2)       bunzip2 $1     ;; 
        *.rar)       unrar e $1     ;; 
        *.gz)        gunzip $1      ;; 
        *.tar)       tar xf $1      ;; 
        *.tbz2)      tar xjf $1     ;; 
        *.tgz)       tar xzf $1     ;; 
        *.zip)       unzip $1       ;; 
        *.Z)         uncompress $1  ;; 
        *.7z)        7z x $1        ;; 
        *)     echo "'$1' cannot be extracted via extract()" ;; 
         esac 
     else 
         echo "'$1' is not a valid file" 
     fi 
}

function ps? () {
        echo "USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND"
        ps aux | grep $1
}



# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
PS1="\e[1;33mMohammadreza - \@ \W >\e[0m"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

ipinfo(){
    curl https://ipinfo.io/$1
    }

dnsdumpster(){
python3 ~/dnsdumpster/dnsdumpster.py -d $1
}

ass(){
echo $1 | assetfinder

}
reversedns(){
    while read x;
    do
        dig -x $x +short
    done;
}

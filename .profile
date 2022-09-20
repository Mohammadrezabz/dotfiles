# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
#Functions
dirse(){
    python3 ~/tools/dirsearch/dirsearch.py -u $1 -e $2 -t 200 -H 'X-Forwarded-For: 127.0.0.1'
}
ass(){
    echo $1 | assetfinder
}
googleforme(){
    for i in $1;do
        xdg-open "https://google.com/search?q=$1"
        done
}
reversedns(){
    while read x;
    do
        dig -x $x +short
    done;
}
findsubs(){
    subfinder -d $1
}

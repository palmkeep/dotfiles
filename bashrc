# "fixa med faktura klarna transaction ID: 31737736"
#
# ~/.bashrc
#

#
# Prompt
# echo ""
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt #
PS1='[\u@\h \W]\$ '


# Bash #
# Set bash to append to command history instead of overwriting
# Multiple shells will otherwise overwrite eachothers history
shopt -s histappend

# Env variables
export EDITOR=vim

# PATH
export PATH="/home/andpal/.bin:$PATH"

# Pintos and TDDB68
export PATH="/home/andpal/courses/tddb68/tddb68_collab/linuxpintos/src/utils:$PATH"

# No worky work No worky workyy
#function pintosdoc {
#    grep $1 --file="/home/andpal/courses/tddb68/pintos-doc/txt_pintos.txt"
#}


# MOUNT USB
function mountusb {
	sudo mount -o gid=users,fmask=113,dmask=002 $1 /mnt/usb/
}
function unmountusb {
	sudo umount /mnt/usb
}

# SSH #

alias startx='ssh-agent startx'

function sshaddkeys {
    ssh-add ~/.ssh/id_rsa
}

# Aliases #

alias rm='rm -vI'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -pv'
alias top='htop'
alias diff='colordiff'

alias dirs='dirs -v'

# Add the name of annoying ls entries in a .hidden file in its parent directory and it will remove those entries from ls output
alias ls='ls -lhN --file-type --color=auto $( if [ -f .hidden ]; then cat .hidden | xargs -I {} echo -n --hide="{}"\ ; fi; )'


# Settng Collate changes the sort order. 
# C: dotfiles end up above all other files
alias lsl='LC_ALL=C ls -lhFA --color=auto'

alias fpwd='find . -name'

alias histg='history | grep'

alias synergy='synergys --config  ~/.synergyrc'



### Programs ###
# Valgrind #
function VGMEM {
    if [ -z "$1" ] ; then
        echo "valgrind --tool=memcheck --leak-check=yes"
        echo "Usage: VGMEM ./<file>"
    else
        valgrind --tool=memcheck --leak-check=yes $1
    fi
}

### Functions ###
# SSH #
function andpa149@liu {
    ssh andpa149@remote-und.ida.liu.se
}
function andpa149@ixtab {
    ssh andpa149@ixtab.edu.isy.liu.se
}
function antpal@lys {
    ssh antpal@teyla.lysator.liu.se
}
function antpal@lys1 {
    ssh antpal@slartibartfast.lysator.liu.se
}

# Navigation #
function cls {
    clear
    ls $1
}
# Displays all files including those in subdirs
function subls {
	for d in * .[!.]* ..?*; do
		test -d "${d}" && echo ""
		test -d "${d}" && echo "${d}"
		test -d "${d}" && ls -lh --color=always "${d}"
	done
}
function cdl {
    if [ -z "$1" ] ; then
        echo "Usage: cdl <path>"
    else
        cd $1
        ls -l
    fi
}
function cdls {
    if [ -z "$1" ] ; then
        echo "Usage: cdls <path>"
    else
        clear
        cd $1
        ls -l
    fi
}
function mcd {
    mkdir -pv $1
    cd $1
    pwd
}
function fsize {
    du -sh *
}
function .. {
    cd ..
}
function ... {
    cd ../../
}
function .... {
    cd ../../../
}

function pdfpcount {
    find $1 -maxdepth 20 -type f -name '*.pdf' -exec pdfinfo {} \; | grep Pages | cut -b 17-
}


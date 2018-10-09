
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt #
PS1='[\u@\h \W]\$ '

PATH+=":/home/andpal/.scripts/"

# Bash #
# Set bash to append to command history instead of overwriting
# Multiple shells will otherwise overwrite eachothers history
shopt -s histappend

# Env variables
export EDITOR=vim

export QT_SELECT=5


# SSH #
alias startx='ssh-agent startx'


# Load common aliases #
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# MOUNT USB
function mountusb {
	sudo mount -o gid=users,fmask=113,dmask=002 $1 /mnt/usb/
}
function unmountusb {
	sudo umount /mnt/usb
}

function sshaddkey {
    ssh-add ~/.ssh/id_rsa
}


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




export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"


# Bash Aliases #
alias rm="rm -vI"
alias cp="cp -i"
alias mv="mv -i"
alias mkdir="mkdir -pv"
alias top="htop"
alias diff="colordiff"
alias cls="clear && ls"
alias ..="cd ../"
alias ...="cd ../../"
alias dirs="dirs -v"

alias gitdog="git log --all --decorate --oneline --graph"


alias ls="ls -lhN --file-type --color=auto --group-directories-first"
# Setting Collate changes the sort order. 
# C: dotfiles end up above all other files
alias lsl="LC_ALL=C ls -lhFA --color=auto"

alias fpwd="find . -name"

# C++ #
alias 'g17++'="g++ -std=c++17 -Wall -Wextra -pedantic -Weffc++"
# -Weffc++ gives warnings related to class design

alias 'g++uva'="g++ -lm -lcrypt -O2 -std=c++11 -pipe"
alias 'gccuva'="g++ -lm -lcrypt -O2 -pipe"

# COLOUR #
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias histg="history | grep"


# SSH #
#alias andpa149@ixtab="ssh andpa149@ixtab.edu.isy.liu.se"
# Non-functional?

# Youtube-dl
alias yt="youtube-dl --add-metadata -ic"    # Download yt link
alias yta="youtube-dl --add-metadata -xic"  # Download only audio from yt link


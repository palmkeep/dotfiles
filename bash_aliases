# Bash Aliases #

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
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'


alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias histg='history | grep'


export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


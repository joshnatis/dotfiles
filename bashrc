export PATH="$PATH:~/bin"
export CLICOLOR=1
export EDITOR='vim'

alias v="vim"
alias n="nano"
alias j="jobs"
alias mv="mv -i"
alias cp="cp -i"
alias ..="cd .."
alias la="ls -AF"
alias p="python3"
alias python="python3"

alias clearall="clear && printf '\e[3J'"
alias path='echo $PATH | tr -s ":" "\n"'
alias shrug="¯\_(ツ)_/¯"

#====== LE COLORS ======#
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias cdiff="git diff --no-index --"
alias prettylog="git log --graph --pretty=format:'%Cred%h%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)%Creset [%an]' --abbrev-commit --date=relative"
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

#======== LE MAC =======#
alias chrome="open -a 'Google Chrome'"
alias oo="open ."
alias copy="pbcopy"
PS1='\h:\W \u\$ '

if [ $(tty) = "/dev/ttys000" ]; then
	cowsay -f elephant welcome josh! && echo ""
#	(afplay ~/Downloads/startup.mp3 -v 0.1 &) > /dev/null 2>&1
fi

#====== LE LINUX ======#
alias feh="feh -x --scale-down --auto-zoom"
PS1='[\u@\h \W]\$ '
alias open="xdg-open"
alias copy="xclip"

#======== LE WSL =======#
alias wf="cd /mnt/c/Users/josh"
alias open="explorer.exe"
alias copy="clip.exe"

#===== READING LOG =====#
alias rl="readinglog"
alias rlca="cat ~/notes/readinglog"
alias rlc='cut -d"|" -f1 <~/notes/readinglog'
alias rlcp="rl-query all"
alias rle="vim ~/notes/readinglog"
#=======================#

# ... | each command1 command2 "command3 has spaces"
function each() {
    while read line; do
        for f in "$@"; do
            $f $line
        done
    done
}

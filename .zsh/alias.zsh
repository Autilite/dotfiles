alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias "cd.."="cd ../"

alias la="ls -lahv --color=auto"
alias ll="ls -lhv --color=auto"
alias ls="ls -v --color=auto"
alias mkdir="mkdir -p"
alias fuck='sudo $(fc -ln -1)'

# Git
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit -v"
alias gca="git commit -av"
alias gco="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"
alias gf="git fetch"
alias gg="git graph"
alias gm="git merge"
alias gp="git push"
alias gr="git rebase"
alias gs="git status"
alias gss="git status -s"

alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias battery='upower -i $(upower -e | grep BAT)'

alias open='xdg-open'

# Configs
alias realias='$EDITOR ~/.zsh/alias.zsh; source ~/.zsh/alias.zsh'
alias vimrc='$EDITOR ~/.vimrc'
alias nvimrc='$EDITOR ~/.config/nvim/init.vim'
alias i3config='$EDITOR ~/.i3/config'

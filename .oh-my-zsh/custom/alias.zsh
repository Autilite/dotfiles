alias battery='upower -i $(upower -e | grep BAT)'
#alias rm='echo "trashing: use \"\\\rm\" to rm."; trash -v'

# Configs
alias realias='$EDITOR ~/.oh-my-zsh/custom/alias.zsh; source ~/.oh-my-zsh/custom/alias.zsh'
alias vimrc='$EDITOR ~/.vimrc'
alias nvimrc='$EDITOR ~/.config/nvim/init.vim'
alias i3config='$EDITOR ~/.i3/config'

# UBC ssh
alias s8u8-sftp='sftp s8u8@remote.ugrad.cs.ubc.ca'
alias s8u8-ssh='ssh s8u8@remote.ugrad.cs.ubc.ca'

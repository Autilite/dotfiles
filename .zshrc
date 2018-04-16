# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch notify histignoredups
unsetopt beep

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kelvin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
setopt histignorespace

for config (~/.zsh/*.zsh) source $config

EDITOR=vim
VISUAL=vim

autoload -Uz colors && colors

PROMPT="%{$fg[green]%}%M%{$reset_color%} %~ » "
PATH=$PATH:~/bin:~/scripts

function chpwd() {
  ls -v --color=auto
}

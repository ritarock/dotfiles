# environment variable
export LANG=ja_JP.UTF-8
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# color
autoload -Uz colors
colors

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# prompt
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "

# completion
autoload -Uz compinit
compinit
# case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# after ../ does not complement the directory that is PWD
zstyle ':completion:*' ignore-parents parent pwd ..

# view japanes files
setopt print_eight_bit

# not bepp
setopt no_beep

# not finish Ctrl+d
setopt ignore_eof

# cd dir
setopt auto_cd

# share history
setopt share_history

# ignore same command
setopt hist_ignore_all_dups

# vim keybind
bindkey -v
# show prompt mode
# function zle-line-init zle-keymap-select {
#   case $KEYMAP in
#     vicmd)
#     PROMPT="%{$fg[red]%}[%{$reset_color%}%n/%{$fg_bold[red]%}NOR%{$reset_color%}%{$fg[red]%}]%#%{$reset_color%} "
#     ;;
#     main|viins)
#     PROMPT="%{$fg[red]%}[%{$reset_color%}%n/%{$fg_bold[cyan]%}INS%{$reset_color%}%{$fg[red]%}]%#%{$reset_color%} "
#     ;;
#   esac
#   zle reset-prompt
# }
# zle -N zle-line-init
# zle -N zle-keymap-select

# alias
alias ll='ls -l'
alias ltr='ls -ltr'

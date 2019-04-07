# environment variable
export LANG=ja_JP.UTF-8
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
[[ -z "$TMUX" && ! -z "$PS1"  ]] && exec tmux


# color
autoload -Uz colors
colors

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# prompt
# %M    ホスト名
# %m    ホスト名
# %d    カレントディレクトリ(フルパス)
# %~    カレントディレクトリ(フルパス2)
# %C    カレントディレクトリ(相対パス)
# %c    カレントディレクトリ(相対パス)
# %n    ユーザ名
# %#    ユーザ種別
# %?    直前のコマンドの戻り値
# %D    日付(yy-mm-dd)
# %W    日付(yy/mm/dd)
# %w    日付(day dd)
# %*    時間(hh:flag_mm:ss)
# %T    時間(hh:mm)
# %t    時間(hh:mm(am/pm))
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
alias la='ls -a'
alias cp='cp -r'

bindkey '^]' peco-src

function peco-src() {
  local src=$(ghq list --full-path | peco --query "$LBUFFER")
  if [-n "$src"]; then
    BUFFER="cd $src"
    zle accept-line
  fi

  zle -R -c
}

zle -N peco-src

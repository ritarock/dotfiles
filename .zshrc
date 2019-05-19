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
# PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
# %# "

PROMPT="%{${fg[green]}%}[%n] %{${reset_color}%}%~
$ "

# completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
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

# alias
alias ll='ls -l'
alias ltr='ls -ltr'
alias la='ls -a'
alias cp='cp -r'

function fzf-src() {
  local dir
  dir=$(ghq list --full-path | fzf-tmux --reverse +m) &&
    cd $dir
}
zle -N fzf-src
bindkey '^]' fzf-src

# function zle-line-init zle-keymap-select {
#     VIM_NORMAL="%K{208}%F{black}⮀%k%f%K{208}%F{white} % NORMAL %k%f%K{black}%F{208}⮀%k%f"
#     VIM_INSERT="%K{075}%F{black}⮀%k%f%K{075}%F{white} % INSERT %k%f%K{black}%F{075}⮀%k%f"
#     RPS1="${${KEYMAP/vicmd/$VIM_NORMAL}/(main|viins)/$VIM_INSERT}"
#     RPS2=$RPS1
#     zle reset-prompt
# }
# zle -N zle-line-init
# zle -N zle-keymap-select

# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info  }
# precmd_functions+=( precmd_vcs_info  )
# setopt prompt_subst
# RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
# zstyle ':vcs_info:git:*' formats '%b'

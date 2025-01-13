eval "$(starship init zsh)"
eval "$(sheldon source)"

bindkey -v

function select-history() {
  BUFFER=$(history -n -r 1 | fzf --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle reset-prompt
}

zle -N select-history
bindkey '^r' select-history

HISTSIZE=100000
SAVEHIST=100000

ZSH_DIR="${HOME}/.config/zsh"

if [ -d $ZSH_DIR ] && [ -r $ZSH_DIR ] && [ -x $ZSH_DIR ]; then
  for file in ${ZSH_DIR}/*.zsh; do
    [ -r $file ] && source $file
  done
fi

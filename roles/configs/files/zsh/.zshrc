eval "$(starship init zsh)"
eval "$(sheldon source)"

bindkey -v

HISTSIZE=100000
SAVEHIST=100000

ZSH_DIR="${HOME}/.config/zsh"

if [ -d $ZSH_DIR ] && [ -r $ZSH_DIR ] && [ -x $ZSH_DIR ]; then
  for file in ${ZSH_DIR}/*.zsh; do
    [ -r $file ] && source $file
  done
fi

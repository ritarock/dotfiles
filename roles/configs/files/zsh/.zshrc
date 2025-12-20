eval "$(starship init zsh)"
eval "$(sheldon source)"

bindkey -v

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt SHARE_HISTORY        # 全てのセッションでヒストリーを共有
setopt INC_APPEND_HISTORY   # コマンド実行時に即座にヒストリーに追加
setopt HIST_IGNORE_DUPS     # 連続した重複コマンドを記録しない
setopt HIST_IGNORE_ALL_DUPS # 重複コマンドを古いものから削除
setopt HIST_REDUCE_BLANKS   # 余分な空白を削除

ZSH_DIR="${HOME}/.config/zsh"

if [ -d $ZSH_DIR ] && [ -r $ZSH_DIR ] && [ -x $ZSH_DIR ]; then
  for file in ${ZSH_DIR}/*.zsh; do
    [ -r $file ] && source $file
  done
fi

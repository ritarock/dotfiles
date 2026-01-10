function rocket() {
  local d=$(ls ~/dev | fzf)
  [ -n "$d" ] && cd ~/dev/"$d"
}

function cc() {
  local d=$(ls -d */ | fzf)
  [ -n "$d" ] && cd ./"$d"
}

function cd() {
  builtin cd "$@"
  ls
}

function select-history() {
  BUFFER=$(fc -l 1 | awk '{$1=""; print substr($0,2)}' | awk '!seen[$0]++' | grep -i "$BUFFER" | tail -r | fzf --height 40% --reverse --border --query="$BUFFER")
  CURSOR=$#BUFFER
  zle reset-prompt
}

zle -N select-history
bindkey '^r' select-history

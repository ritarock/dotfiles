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
  BUFFER=$(history -n -r 1 | fzf --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle reset-prompt
}

zle -N select-history
bindkey '^r' select-history

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

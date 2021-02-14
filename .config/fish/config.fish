. ~/.config/fish/aliases.fish
. ~/.config/fish/env.fish

fish_vi_key_bindings

function cd
  builtin cd $argv
  ls
end

function rocket
  set d (ls ~/dev|fzf)
  cd ~/work/{$d}
end

function cc
  set d (ls .|fzf)
  cd ./{$d}
end

function hislog
  set d (history|fzf)
  echo $d
end

# dir color
export LSCOLORS=gxfxcxdxbxegedabagacad

starship init fish | source


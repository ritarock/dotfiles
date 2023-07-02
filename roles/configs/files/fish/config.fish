. ~/.config/fish/aliases.fish
. ~/.config/fish/env.fish

fish_vi_key_bindings

function cd
  builtin cd $argv
  ls
end

function rocket
  set d (ls ~/dev|fzf)
  cd ~/dev/{$d}
end

function cc
  set d (ls .|fzf)
  cd ./{$d}
end

# dir color
export LSCOLORS=gxfxcxdxbxegedabagacad

starship init fish | source

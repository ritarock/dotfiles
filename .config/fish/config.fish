. ~/.config/fish/aliases.fish
. ~/.config/fish/env.fish

fish_vi_key_bindings

function cd
  builtin cd $argv
  ls
end

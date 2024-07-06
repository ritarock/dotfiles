alias gb 'git branch'
alias gbdel 'git branch --merged | grep -v "*" | xargs -I git branch -d %'

alias gco 'git checkout'

alias gsw 'git switch'

alias gdiff 'git diff --color-words'

alias gl 'git log'
alias glo 'git log --oneline'
alias glg 'git log --graph'

alias gp 'git pull'

alias gst 'git status -sb'

alias gss 'git stash save -u'
alias gsl 'git stash list'

function gspop
  git stash pop "stash@{$argv[1]}"
end

function gsdrop
  git stash drop "stash@{$argv[1]}"
end

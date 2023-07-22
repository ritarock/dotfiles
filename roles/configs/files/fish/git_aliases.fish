alias gb    'git branch'
alias gbdel 'git branch --merged | grep -v "*" | xargs -I git branch -d %'

alias gco   'git checkout'

alias gdiff 'git diff --color-words'

alias glog  'git log'
alias glogo 'git log --oneline'
alias glogg 'git log --graph'

alias gpull 'git pull'

alias gst   'git status'

alias gss   'git stash save'
alias gsl   'git stash list'
alias gsp   'git stash pop stash@{0}'
alias gsd   'git stash drop stash@{0}'


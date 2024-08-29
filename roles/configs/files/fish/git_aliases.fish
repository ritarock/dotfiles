alias g 'git'

alias gsw 'git switch'

alias gco 'git checkout'

alias gst 'git status'

# move root directory
alias grt 'cd "$(git rev-parse --show-toplevel || echo .)"'

alias gb    'git branch'
alias gbdel 'git branch --merged | egrep -v "\*|develop|main" | xargs git branch -d'

alias gd  'git diff'
alias gdw 'git diff --word-diff'
alias gds 'git diff --staged'

alias glo   'git log --oneline --decorate'
alias glog  'git log --oneline --decorate --graph'
alias gloga 'git log --oneline --decorate --graph --all'

alias gp  'git pull'
alias gpo 'git pull origin (current_branch)'
alias gpu 'git pull upstream (current_branch)'

alias grs 'git reset --soft'
alias grh 'git reset --hard'

alias gstl 'git stash list'
alias gsta 'git stash push'
alias gstp 'git stash pop'
alias gstd 'git stash drop'

function current_branch
  git branch --show-current
end

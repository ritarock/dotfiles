alias ltr 'ls -ltr'
alias tree 'tree -NC'

alias .. 'cd ./..'

alias gst   'git status'
alias gdiff 'git diff --color-words'
alias gpull 'git pull'
alias gb    'git branch'
alias gco   'git checkout'
alias glog  'git log --oneline'
alias glogg 'git log --graph'
alias gbdel 'git branch --merged | grep -v "*" | xargs -I git branch -d %'

alias dcu    'docker-compose up'
alias dcd    'docker-compose down'
alias dcr    'docker-compose run --rm'
alias dpurge 'docker stop (docker ps -aq) && docker rm (docker ps -aq)'

alias gmt 'go mod tidy'


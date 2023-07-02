alias ltr 'ls -ltr'
alias tree 'tree -NC'

alias .. 'cd ./..'

alias gst   'git status'
alias gd    'git diff --color-words'
alias gp    'git pull'
alias gb    'git branch'
alias gbc   'git checkout -b'
alias gco   'git branch | fzf | xargs git checkout'
alias gl    'git log --oneline'
alias gbdel 'git branch --merged | grep -v "*" | xargs -I git branch -d %'

alias dcu    'docker-compose up'
alias dcd    'docker-compose down'
alias dcr    'docker-compose run --rm'
alias dpurge 'docker stop (docker ps -aq) && docker rm (docker ps -aq)'

alias gmt 'go mod tidy'

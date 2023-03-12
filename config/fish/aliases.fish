alias ltr 'ls -ltr'
alias tree 'tree -NC'

alias gst 'git status'
alias gdf 'git diff --color-words'
alias gcm 'git checkout master'
alias gpu 'git pull upstream master'
alias gpr 'git push --set-upstream origin (git name-rev --name-only HEAD)'
alias glog 'git log --oneline'
alias grh 'git reset --mixed HEAD^'
alias gbdel 'git branch --merged | grep -v "*" | xargs -I git branch -d %'

alias dcu 'docker-compose up'
alias dcd 'docker-compose down'
alias dcr 'docker-compose run --rm'
alias dpurge 'docker stop (docker ps -aq) && docker rm (docker ps -aq)'

alias gmt 'go mod tidy'


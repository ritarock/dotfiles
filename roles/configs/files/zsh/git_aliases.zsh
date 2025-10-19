alias g='git'
alias lg='lazygit'

alias gsw='git switch'
alias gco='git checkout'
alias gst='git status'

# move root directory
alias grt='cd "$(git rev-parse --show-toplevel 2>/dev/null || echo .)"'

# git branch
alias gb='git branch'
alias gbd='git branch -D'
alias gbda='git branch --merged | egrep -v "\*|develop|dev|master|main" | xargs git branch -d && git remote prune'

# git diff
alias gd='git diff'
alias gdw='git diff --word-diff'
alias gdc='git diff --cached'
alias gdcw='git diff --cached --word-diff'
alias gds='git diff --staged'

# git log
alias gl='git log'
alias glo='git log --oneline --decorate'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'

# git pull
alias gp='git pull'
alias gpo="git pull origin $current_branch"
alias gpu="git pull upstream $current_branch"

# git add
alias ga='git add'
alias gaa='git add --all'

# git commit
alias gc='git commit'
alias gcmsg='git commit --message'

# git reset
alias grs='git reset --soft'
alias grm='git reset --mixed'
alias grh='git reset --hard'

# git stash
alias gstl='git stash list'
alias gsta='git stash push'
alias gstp='git stash pop'
alias gstd='git stash drop'

# get current branch
function current_branch() {
  git branch --show-current
}

# pull PR
function grw() {
  pr="$1"
  branch_name="${2:-$pr}"
  if [ -n "$pr" ]; then
    git fetch upstream "pull/$pr/head:$branch_name" && git switch "$branch_name"
  else
    echo "Usage: grw <pr-number> [branch-name]"
  fi
}

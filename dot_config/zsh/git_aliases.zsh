alias lg='lazygit'

alias g='git'

alias gsw='git switch'
alias gco='git checkout'
alias gst='git status'

# move root directory
alias grt='cd "$(git rev-parse --show-toplevel 2>/dev/null || echo .)"'

# git branch
alias gb='git branch'
alias gbd='git branch -D'

# git diff
alias gdiff='git diff'
alias gdiffo='git --no-pager diff'

# git log
alias glog='git log'
alias glogo='git log --oneline --decorate'

# git pull
alias gp='git pull'
alias gpo="git pull origin $current_branch"
alias gpu="git pull upstream $current_branch"

# git add
alias ga='git add'
alias gaa='git add --all'

# git commit
alias gc='git commit'

# get current branch
function current_branch() {
  git branch --show-current
}

# pull PR
function gpr() {
  pr="$1"
  branch="${2:-$pr}"
  if [ -n "$pr" ]; then
    git fetch upstream "pull/$pr/head:$branch" && git switch "$branch"
  else
    echo "Usage: grw <pr-number> [branch-name]"
  fi
}

# github open
function gop() {
  local repo_dir=$(git rev-parse --show-toplevel)
  if [ -z "${repo_dir}" ]; then
    echo "Error: Not git repository."
    return 1
  fi

  local repo_url=$(git config --get remote.origin.url)
  if [ -n "repo_url" ]; then
    repo_url=$(echo $repo_url | sed 's|git@github.com:|https://github.com/|' | sed 's|\.git$||')
  fi

  if [ -n "$repo_url" ]; then
    if [ -n "$1" ]; then
      open "${repo_url}/pull/${1}"
    else
      open "$repo_url"
    fi
  else
    echo "Error: Remote origin URL not found."
  fi
}

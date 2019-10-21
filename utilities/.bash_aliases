# General
alias ll="ls -alh"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
# Add more watchers in case the limit is reached with tools such as webpack
alias morewatchers="echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/40-max-user-watches.conf && sudo sysctl --system"
# Editor
alias e="nano"
# Fast command line copy to clipboard (use as such toclipboard '...command...')
toclipboard() {
  eval "$1" | xclip -selection c
}

# Python
alias pp="python -mjson.tool"
alias serve="python -m SimpleHTTPServer 8888"

# Go
gopath() {
  export GOPATH=$(readlink -f $1)
}
goroot() {
  export GOROOT=$(readlink -f $1)
}

# Docker
alias dk-rm="docker rm -vf $(docker ps -a -q)"

# Docker-compose
alias dkcmp="docker-compose"
complete -F _docker_compose dkcmp

# Kubernetes
alias k="kubectl"
source <(kubectl completion bash | sed 's/kubectl/k/g')

# Gcloud
alias g="gcloud"

set -o ignoreeof # immortal tmux

export PATH="$PATH:/opt/nvim/"

alias tconf="cd ~/dev/dotfiles"
alias tnvim="cd ~/.config/nvim"

gc() {
  git commit "$@"
}

gg() {
  git add . && gc && git push origin
}


set -o ignoreeof # immortal tmux

# Env
export PATH="$PATH:/opt/nvim/"
export LIBVIRT_DEFAULT_URI=qemu:///system

# Navigation
alias tconf="cd ~/dev/dotfiles && nvim ."
alias tvim="cd ~/.config/nvim"
alias tdev="cd ~/dev"
alias tclu="cd ~/dev/clu"

# Shortcuts
alias v="nvim ."

# Git aliases
function gc() {
    git commit -m "$1"
}

alias gp="git push origin"

function gg() {
    git add . && gc "$1" && gp
}


alias l="ls -lah"
alias ga="git add ."
alias gp="git push origin"

alias v="nvim ."

alias tsh="nvim ~/dev/dotfiles/.zshenv && source ~/.zshenv"
alias tnvim="cd ~/.config/nvim"

function gc () {
  git commit -m "$1"
}

function gg () {
  ga && (gc $1) && gp
}



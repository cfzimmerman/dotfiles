alias l="ls -lah"
alias ga="git add ."
alias gp="git push origin"

function gc () {
  git commit -m "$1"
}

function gg () {
  ga && (gc $1) && gp
}



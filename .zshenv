export ANDROID_SDK=/Users/cory/Library/Android/sdk
export PATH=/Users/cory/Library/Android/sdk/platform-tools:$PATH
export ANDROID_SDK=/Users/cory/Library/Android/sdk
export PATH=/Users/cory/Library/Android/sdk/platform-tools:$PATH
export ANDROID_SDK=/Users/cory/Library/Android/sdk
export PATH=/Users/cory/Library/Android/sdk/platform-tools:$PATH
export ANDROID_SDK=/Users/cory/Library/Android/sdk
export PATH=/Users/cory/Library/Android/sdk/platform-tools:$PATH
export PATH="/Users/cory/.ebcli-virtual-env/executables:$PATH"
. "$HOME/.cargo/env"

# Aliases
alias sol_en="brew services start redis & brew services start postgresql & brew services start rabbitmq"
alias sol_ex="brew services stop redis & brew services stop postgresql & brew services stop rabbitmq"

alias get_path="pwd | pbcopy"
alias gbranch='git branch --format "%(refname:short) %(upstream)"'
alias python="python3"

alias to_sol="cd ~/Projects/solesca/app"
alias to_lc="cd ~/Projects/dsa/lc/cooler/src/dsa"
alias to_tGuide="nvim ~/tGuide.md"
alias to_zshenv="nvim ~/.zshenv"
alias to_nvim="cd ~/.config/nvim"
alias to_61="cd ~/Projects/school/F23-CS61"
alias to_120="cd ~/Projects/school/F23-CS120"
alias to_ger="cd ~/Projects/school/F23-G20A"
alias to_sandbox="cd ~/Projects/rs-sandbox"
alias v="nvim ."
alias backup_env="cp ~/.zshenv ~/Projects/dotfiles/"
alias ga="git add ."
alias gp="git push origin"

function gc () {
  git commit -m "$1"
}

function log_nonmain() {
  local curr_branch=$(git rev-parse --abbrev-ref HEAD)
  if [[ $curr_branch != *"main"* ]]; then 
    echo "$1" >> /Users/cory/projects/commitlog/log.txt
    git -C /Users/cory/projects/commitlog add .
    git -C /Users/cory/projects/commitlog commit -m "append log"
    git -C /Users/cory/projects/commitlog push origin
  fi
}

function gg () {
  ga && (gc $1) && gp && (log_nonmain $1)
}

function explore_dir () {
  bash /Users/cory/projects/cli-tools/jsonifyDir/jsonifyDir.sh "$(pwd)" \
    '^\.git$|^target$|^node_modules$|^venv$|^.next$'
}

function rng () {
  /Users/cory/projects/cli-tools/rng/target/release/rng "$@"
}

function rmt () {
  mv -fv "$1" ~/.Trash/ ;
}

function json () {
  echo "$1" | python -m json.tool ;
}

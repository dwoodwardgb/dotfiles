HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit
compinit

setopt prompt_subst
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "%b"

precmd() {
    vcs_info
}

PROMPT='%? %1~ (${vcs_info_msg_0_})%# '

alias p="pnpm"
alias gs="git status"
alias y="yarn"
alias m="make"
alias fh="cat ~/.zsh_history | grep "
alias gfpl="git fetch && git pull "

lazy_load_nvm() {
  unset -f node npm npx yarn pnpm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

node() {
  lazy_load_nvm
  node $@
}

npm() {
  lazy_load_nvm
  npm $@
}

npx() {
  lazy_load_nvm
  npx $@
}

yarn() {
  lazy_load_nvm
  yarn $@
}

pnpm() {
  lazy_load_nvm
  pnpm $@
}



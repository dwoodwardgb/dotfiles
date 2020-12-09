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

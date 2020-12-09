HISTFILE=~/.histfile
HISTSIZE=4000
SAVEHIST=4000
bindkey -e
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

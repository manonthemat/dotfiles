HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt beep nomatch
unsetopt appendhistory autocd notify
bindkey -v
zstyle :compinstall filename '/home/m1/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
prompt elite2

bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

alias la='ls -aG'
alias ll='ls -lG'
alias lla='ls -laFG'
alias c11='clang++ -std=c++11 -stdlib=libc++ -lc++abi -Iinclude'

export EDITOR="$(which vim)"

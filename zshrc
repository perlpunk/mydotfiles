HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory autocd notify
unsetopt beep extendedglob nomatch
bindkey -e
autoload -Uz compinit
compinit

# display menu when using completion
zstyle ':completion:*' menu select
# user@host:dir
PROMPT='%n@%m%:%/$ '
# colored
PROMPT="%F{blue}%B%K{blue}█▓▒░%F{white}%K{blue}%B%n@%m%b%F{blue}%K{black}█▓▒░%F{white}%K{black}%B%}%K{black}:%B%~$ %b%k%f"
# don't remove trailing slash from completion
unsetopt AUTO_REMOVE_SLASH

alias ll="ls -lrt"

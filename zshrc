HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory autocd notify
unsetopt beep extendedglob nomatch
# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e
# Use modern completion system
autoload -Uz compinit
compinit
autoload -Uz promptinit
promptinit

# display menu when using completion
zstyle ':completion:*' menu select
# user@host:dir
PROMPT='%n@%m%:%/$ '
# colored
PROMPT="%F{blue}%B%K{blue}█▓▒░%F{white}%K{blue}%B%n@%m%b%F{blue}%K{black}█▓▒░%F{white}%K{black}%B%}%K{black}:%B%~$ %b%k%f"
# don't remove trailing slash from completion
unsetopt AUTO_REMOVE_SLASH

alias ll="ls -lrt"

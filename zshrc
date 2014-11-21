HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000
setopt EXTENDED_HISTORY
unsetopt SHARE_HISTORY
setopt appendhistory autocd notify promptsubst
unsetopt beep extendedglob nomatch
alias dh='dirs -v'
DIRSTACKSIZE=20
setopt AUTOPUSHD

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
#PROMPT='%n@%m% :%~$ '
PROMPT="\$(git branch 2>/dev/null |sed 's@^\* \(.\+\)@[\1] @;tn;d;:n')\${PERLBREW_PERL:+[\$PERLBREW_PERL] }%n@%m% :%~$ "
# colored
#PROMPT="%F{blue}%B%K{blue}█▓▒░%F{white}%K{blue}%B%n@%m%b%F{blue}%K{black}█▓▒░%F{white}%K{black}%B%}%K{black}:%B%~$ %b%k%f"
# don't remove trailing slash from completion
unsetopt AUTO_REMOVE_SLASH

alias ll="ls -lrt"

# thanks to ANDK
_vc_prompt () {
    local GITDIRTY
    local GITPROMPT
    local GITSTATUS
    if [ -d .git -o -d ../.git -o -d ../../.git -o -d ../../../.git ] ; then
        if GITBRANCH=`git branch -a | grep '^\*' | sed 's,\*[ ]*,,'` ; then
            GITSTATUS=`git status --porcelain --untracked-files=no`
            if [ -z $GITSTATUS ] ; then
                GITDIRTY=""
            else
                GITDIRTY="*"
            fi
            GITPROMPT="[$GITBRANCH$GITDIRTY]"
        else
            GITPROMPT="[]"
        fi
    else
        GITPROMPT=""
    fi
    echo $GITPROMPT
}


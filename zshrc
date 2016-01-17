HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000
setopt histignorealldups
setopt EXTENDED_HISTORY
unsetopt SHARE_HISTORY
setopt appendhistory autocd notify promptsubst
unsetopt beep extendedglob nomatch
alias dh='dirs -v'
DIRSTACKSIZE=20
setopt AUTOPUSHD

autoload -U colors && colors

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e
# Use modern completion system
autoload -Uz compinit
compinit
autoload -Uz promptinit
promptinit

# display menu when using completion
zstyle ':completion:*' menu select
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

# read host completion from ~/.ssh/config
[ -r ~/.ssh/config ] && _ssh_config=($(cat ~/.ssh/config | sed -ne 's/Host[=\t ]//p')) || _ssh_config=()
zstyle ':completion:*:hosts' hosts $_ssh_config


# ---------- PROMPT ------------
# user@host:dir
#PROMPT='%n@%m% :%~$ '
PERLBREW_PROMPT='${PERLBREW_PERL:+[$PERLBREW_PERL]}'
THE_COLOR="[1;31m"
PS1=$'%{\e'$THE_COLOR$'%}'%n@%m:%~'`_vc_prompt`'%#$'%{\e[0m%} '
#PROMPT="\$(git branch 2>/dev/null |sed 's@^\* \(.\+\)@[\1] @;tn;d;:n')\${PERLBREW_PERL:+[\$PERLBREW_PERL] }%n@%m% :%~$ "
# colored
#PROMPT="%F{blue}%B%K{blue}█▓▒░%F{white}%K{blue}%B%n@%m%b%F{blue}%K{black}█▓▒░%F{white}%K{black}%B%}%K{black}:%B%~$ %b%k%f"
function get_nr_jobs() {
  jobs | grep '^\[' | wc -l
}

RPROMPT="%{$fg_bold[cyan]%}$PERLBREW_PROMPT"'%{$fg_bold[red]%}[$(get_nr_jobs)] %{$fg_bold[green]%}%*%{$reset_color%}'


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

# ------------ MISC ------------
# don't remove trailing slash from completion
unsetopt AUTO_REMOVE_SLASH

# use ctrl-z not only for putting vim in background but also for getting back
# http://chneukirchen.org/blog/archive/2012/02/10-new-zsh-tricks-you-may-not-know.html
foreground-vi() {
  fg %vi
}
zle -N foreground-vi
bindkey '^Z' foreground-vi


# show red dots, so when completion takes long yoyu see that something's happening
# http://stackoverflow.com/a/844299
expand-or-complete-with-dots() {
  echo -n "\e[31m...\e[0m"
  zle expand-or-complete
  zle redisplay
}
zle -N expand-or-complete-with-dots
bindkey "^I" expand-or-complete-with-dots

alias alias ltr='ls -ltr'
alias ls='ls --color'
alias l='ls -lh'
alias ll='ls -la'

for c in cp rm chmod chown rename; do
    alias $c="$c -v"
done

alias -g L="|less"

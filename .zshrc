# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' matcher-list '' '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' prompt '%e'
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/fadel/'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Prompt config
setprompt() {
    local EXITCODE="%B%F{red}%(?..[%?] )%f%b"
    local TIME="%B[%T]%b "
    local USER="%n"
    local HOST="%m"
    local PSIGN="%#"
    local PWD="%F{green}%~%f"

    PROMPT="${EXITCODE}${TIME}${USER}@${HOST}${PSIGN} "
    RPROMPT="${PWD}"
}

setprompt

# Title
chpwd() {
    printf "\e]0;%s:%s\a" $USERNAME $PWD
}

chpwd

# Custom keybindings
bindkey "^[OH"    beginning-of-line # Home
bindkey "^[[1~"   beginning-of-line # Home
bindkey "^[OF"    end-of-line       # End
bindkey "^[[4~"   end-of-line       # End
bindkey "^[[3~"   delete-char       # Del
bindkey "^[[1;5D" backward-word     # CTRL+Left
bindkey "^[OD"    backward-word     # CTRL+Left
bindkey "^[[1;5C" forward-word      # CTRL+Right
bindkey "^[OC"    forward-word      # CTRL+Right

# Custom aliases
alias ls='ls --color=auto'

complete -sf sudo
sudo mount -t vboxsf -o uid=1000 D_DRIVE /home/fatore/d

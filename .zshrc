export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

zstyle ':omz:update' frequency 13

ENABLE_CORRECTION="false"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autocomplete zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export SDL_IM_MODULE="fcitx"

alias vi="nvim"
alias vim="nvim"
alias vx="nvim ."

alias ls="eza --oneline --icons --group-directories-first"
alias tree="ls --tree --level=1"

alias cd="z"
alias ci="zi"

alias gp="git pull"
alias gs="git switch"
alias lg="lazygit"

alias cls="clear"

alias dcu="docker compose up -d"
alias dcd="docker compose down"

eval "$(zoxide init zsh)"

eval "$(starship init zsh)"


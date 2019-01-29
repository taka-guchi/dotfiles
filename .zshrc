# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

eval "$(rbenv init -)"
eval "$(goenv init -)"
eval "$(pyenv init -)"
eval "$(ndenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

alias vim="nvim"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"
alias fig="docker-compose"
alias fir="docker-conpose run --rm"
alias fie="docker-compose exec"

# Autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=245'
bindkey '^J' autosuggest-execute
bindkey '^K' autosuggest-accept

# spaceship-prompt 
SPACESHIP_VI_MODE_SHOW=false

setopt print_eight_bit

autoload -Uz compinit
compinit


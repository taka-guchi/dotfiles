# environment
eval "$(rbenv init -)"
eval "$(goenv init -)"
eval "$(pyenv init -)"
eval "$(ndenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH="$HOME/.yarn/bin:$PATH"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

# zplugin
if [[ ! -d ~/.zplugin ]];then
  mkdir ~/.zplugin && git clone https://github.com/zdharma/zplugin.git ~/.zplugin/bin
fi
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light zdharma/fast-syntax-highlighting
zplugin light zdharma/history-search-multi-word
zplugin light taka-guchi/spaceship-prompt

zplugin ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*"
zplugin load docker/compose

zplugin ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zplugin light tj/git-extras

# option
setopt mark_dirs
setopt globdots
setopt print_eight_bit

# alias
alias vim="nvim"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"
alias fig="docker-compose"
alias fir="docker-conpose run --rm"
alias fie="docker-compose exec"

# key bind
bindkey '^j' autosuggest-execute
bindkey '^k' autosuggest-accept

# spaceship-prompt
SPACESHIP_VI_MODE_SHOW=false

autoload -Uz compinit
compinit

# completion
zstyle ':completion:*:default' menu select=1
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

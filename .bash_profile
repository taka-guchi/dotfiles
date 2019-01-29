
alias vim='nvim'
alias ll='ls -al'
alias la='ls -a'

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$PYENV_ROOT/versions/anaconda3-5.2.0/bin:$PATH"

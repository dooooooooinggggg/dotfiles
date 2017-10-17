source .bashrc
export PATH=/usr/local/bin:$PATH

export PATH="$HOME/.rbenv/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(rbenv init -)"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH=/usr/local/opt/openssl/bin:$PATH

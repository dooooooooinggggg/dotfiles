#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

##########
# export #
##########

export PATH=/usr/local/bin:$PATH

export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export PYTHONPATH=./site-packages

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH="$HOME/.goenv/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"

eval "$(goenv init -)"

export PATH="$HOME/.poetry/bin:$PATH"

if [ "$(uname -s)" = 'Darwin' ]; then

    if [ "$(arch)" = 'i386' ]; then
        export PATH="/usr/local/opt/openssl/bin:$PATH"
        #export HOMEBREW_CASK_OPTS="—appdir=/Applications"
        export PATH="/usr/local/opt/llvm/bin:$PATH"
        export PATH="/usr/local/opt/cython/bin:$PATH"
        export PATH="/usr/local/sbin:$PATH"
        # LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
        # export PATH="$PATH:`yarn global bin`"

        # The next line updates PATH for the Google Cloud SDK.
        if [ -f '/Users/$(whoami)/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/$(whoami)/google-cloud-sdk/path.zsh.inc'; fi

        # The next line enables shell command completion for gcloud.
        if [ -f '/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc'; fi

    elif [ "$(arch)" = 'arm64' ]; then
        export PATH="/opt/homebrew/bin:$PATH"
        export PATH="/opt/homebrew/opt/zip/bin:$PATH"
        export PATH="/opt/homebrew/opt/unzip/bin:$PATH"
        export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

        export PATH="/opt/homebrew/opt/ncurses/bin:$PATH"
        # export LDFLAGS="-L/opt/homebrew/opt/ncurses/lib"
        # export CPPFLAGS="-I/opt/homebrew/opt/ncurses/include"
        export PKG_CONFIG_PATH="/opt/homebrew/opt/ncurses/lib/pkgconfig"

        export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
        # export LDFLAGS="-L/opt/homebrew/opt/binutils/lib" # binutils
        # export CPPFLAGS="-I/opt/homebrew/opt/binutils/include" # binutils
        export PATH="/opt/homebrew/sbin:$PATH"

        export PATH="/opt/homebrew/opt/zlib/bin:$PATH"
        export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
        export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
        # export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"
        export PATH="/opt/homebrew/opt/curl/bin:$PATH"
        # export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
        # export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
        # export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"

        # The next line updates PATH for the Google Cloud SDK.
        if [ -f "/Users/$(whoami)/google-cloud-sdk/path.zsh.inc" ]; then . "/Users/$(whoami)/google-cloud-sdk/path.zsh.inc"; fi
        # The next line enables shell command completion for gcloud.
        if [ -f "/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc" ]; then . "/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc"; fi
    fi
elif [ "$(uname -s)" = 'Linux' ]; then
    export PATH="$HOME/.npm/bin:$PATH"
    export PATH="/usr/sbin:$PATH"

    export CLOUDSDK_PYTHON=/home/$(whoami)/.pyenv/shims/python3

    export PATH="/home/$(whoami)/.local/bin:$PATH"
    export PATH="/home/$(whoami)/Android/platform-tools:$PATH"

    # The next line updates PATH for the Google Cloud SDK.
    if [ -f '/home/$(whoami)/storage/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/home/$(whoami)/storage/gcloud/google-cloud-sdk/path.zsh.inc'; fi

    # The next line enables shell command completion for gcloud.
    if [ -f '/home/$(whoami)/storage/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/$(whoami)/storage/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

    alias v191='source /opt/Xilinx/Vivado_Lab/2019.1/settings64.sh;sudo chmod o-rw /var/run/dbus/system_bus_socket;sudo chmod -R a+w /dev/bus/usb;unset GNOME_DESKTOP_SESSION_ID'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(pyenv init -)"
eval "$(rbenv init -)"

alias pingping='sh ~/dotfiles/shells/pingping.sh'
# alias brew="PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"
alias sloppycommit='git pull;git add .;git commit -m "Commit";git push'
alias kachi='make'

alias globalip='curl http://inet-ip.info'
alias youtube-dl-mp3='youtube-dl -x --audio-format mp3 '

# 補完
autoload -U compinit
compinit -u

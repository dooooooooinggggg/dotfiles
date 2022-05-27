# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gnzh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##########
# export #
##########

export PATH=/usr/local/bin:$PATH
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

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
        if [ -f '/Users/ishikawatatsunori/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ishikawatatsunori/google-cloud-sdk/path.zsh.inc'; fi

        # The next line enables shell command completion for gcloud.
        if [ -f '/Users/ishikawatatsunori/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ishikawatatsunori/google-cloud-sdk/completion.zsh.inc'; fi

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
    fi

elif [ "$(uname -s)" = 'Linux' ]; then
    export PATH="$HOME/.npm/bin:$PATH"
    export PATH="/usr/sbin:$PATH"

    export CLOUDSDK_PYTHON=/home/tatsunori/.pyenv/shims/python3

    export PATH="/home/tatsunori/.local/bin:$PATH"
    export PATH="/home/tatsunori/Android/platform-tools:$PATH"

    # The next line updates PATH for the Google Cloud SDK.
    if [ -f '/home/tatsunori/storage/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/home/tatsunori/storage/gcloud/google-cloud-sdk/path.zsh.inc'; fi

    # The next line enables shell command completion for gcloud.
    if [ -f '/home/tatsunori/storage/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/tatsunori/storage/gcloud/google-cloud-sdk/completion.zsh.inc'; fi
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

# settings for oh-my-zsh
plugins=(git themes)
source ~/.oh-my-zsh/oh-my-zsh.sh

# 補完を効かせるためのもの
autoload -U compinit
compinit -u

if [ ${ZSH_THEME} = "half-life" ]; then
    PROMPT=$'%{$purple%}%n%{$reset_color%} {%{$purple%}$HOST%{$reset_color%}} in %{$limegreen%}%~%{$reset_color%}$(ruby_prompt_info " with%{$fg[red]%} " v g "%{$reset_color%}")$vcs_info_msg_0_%{$orange%} \nλ%{$reset_color%} ';
fi

alias v191='source /opt/Xilinx/Vivado_Lab/2019.1/settings64.sh;sudo chmod o-rw /var/run/dbus/system_bus_socket;sudo chmod -R a+w /dev/bus/usb;unset GNOME_DESKTOP_SESSION_ID'

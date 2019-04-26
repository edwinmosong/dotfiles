# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="personal"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ssh-agent zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/edwinmo/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin/:/Users/emsong/.scripts/:/Users/emsong/bin/"

export NODE_PATH="/usr/local/lib/node_modules"

# ALIAS
# alias vim="/usr/local/bin/mvim -v"
alias k="kubectl"

# EXPORTS
# setup virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# set up environment variables
export DEV="$HOME/Development"
export REPO="$DEV/git-repos"
export DOT="$REPO/dotfiles/"
export ETC="$DEV/etc/"
export BIN="$HOME/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/Applications/PyCharm.app/Contents/MacOS" # Add pycharm
export PATH="$PATH:/$BIN/scripts"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export EDITOR="vim"
# term, fixes vim on tmux
export TERM="screen-256color"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf-functions
# taken from https://www.reddit.com/r/vim/comments/3f0zbg/psa_if_youre_using_ctrlp_use_this_maintained_fork/cto6285
export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
--color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
--color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

fe() {
    # fe - Open the selected files with the default editor
    local files=$(fzf-tmux --query="$1" --select-1 --exit-0 | sed -e "s/\(.*\)/\'\1\'/")
    local command="${EDITOR:-vim} -p $files"
    [ -n "$files" ] && eval $command
}

fd() {
    # fd - cd to selected directory
    local dir
    dir=$(find ${1:-*} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf-tmux +m) &&
    cd "$dir"
}

fh() {
    # fh - repeat history
    eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf-tmux +s --tac | sed 's/ *[0-9]* *//')
}

fkill() {
    # fkill - kill process
    pid=$(ps -ef | sed 1d | fzf-tmux -m | awk '{print $2}')
    if [ -n "$pid" ]
    then
        kill -${1:-9} $pid
    fi
}

source ~/.credentials/setup_env.sh

launchctl load ~/Library/LaunchAgents/pbcopy.plist
launchctl load ~/Library/LaunchAgents/pbpaste.plist

export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"
alias goto="cd $GOPATH/src/github.com"

# AWS specific
export AWS_DEFAULT_REGION=us-west-1

# Persistence service specific
export NPM_REGISTRY_URL=registry.npmjs.org

killdebug () {
    killme=$(lsof -i tcp:$1 | tail -n 1 | awk '{ print $2 }')
    if [ -n "$killme" ]; then
        echo "Killing pid $killme listening on port $1"
        kill -9 $killme
    else
        echo "No debug process found"
    fi
}

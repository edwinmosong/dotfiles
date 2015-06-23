# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="dpoggi"
ZSH_THEME="personal"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git ssh-agent zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/edwinmo/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin/"
export PATH=$PATH:/Users/emosong/bin

export NODE_PATH="/usr/local/lib/node_modules"

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# setup zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh

# enable autosuggestions manually
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# use ctrl+t to toggle autosuggestions
bindkey '^T' autosuggest-toggle

# set highlight colors
# export AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=15' # white
# export AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=35' # greenish
# export AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=40' # green
# export AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=yellow'
export AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=250'

# export AUTOSUGGESTION_HIGHLIGHT_CURSOR=0
export AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1

# setup virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# set up environment variables
export DEV="$HOME/Dev"
export REPO="$DEV/git-repos"
export DOT="$REPO/dotfiles/"
export BIN="$HOME/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export EDITOR="vim"

# source tmuxinator
source $BIN/tmuxinator.zsh

# token for doing brew searches (so it doesn't lock me out from trying)
export HOMEBREW_GITHUB_API_TOKEN=cfc8c5d2b179e01cd71bb47eb16589d3402a80d9

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

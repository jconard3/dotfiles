# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jconard/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="dst-jconard"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(
  git
  docker
  pyenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

#Auto ls -lah after every cd
function chpwd() {
  emulate -L zsh
    ls -gahG
}
#helm jcompletion
#source <(helm completion zsh)

# golang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/jconard/go/bin

# python virtualenv
export PATH=$PATH:/home/jconard/.local/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jconard/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/home/jconard/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/jconard/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/jconard/Documents/google-cloud-sdk/completion.zsh.inc'; fi

# Dev tools aliases
alias vpn='/home/jconard/Documents/forticlientsslvpn/64bit/forticlientsslvpn_cli -s vpn.spotify.net:443 --vpnuser jconard --keepalive'
alias intellij='snap run intellij-idea-ultimate </dev/null &>/dev/null &'
alias studio='studio.sh </dev/null &>/dev/null &'

#kubectl completion
source <(kubectl completion zsh)

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# maven
alias maven="/usr/bin/mvn"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/shims:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pyenv-virtualenv
eval "$(pyenv virtualenv-init -)"

# android studio
export PATH=$PATH:/home/jconard/android-studio/bin

# helm
export PATH=$PATH:/usr/sbin
source <(helm completion zsh)

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

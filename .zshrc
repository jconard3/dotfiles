# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jconard/.oh-my-zsh"

ZSH_THEME="dst-jconard"

COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  # docker
  # pyenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

#Auto ls -lah after every cd
function chpwd() {
  emulate -L zsh
    ls -gahG
}

# clipboard alias
alias xclip="xclip -selection c"

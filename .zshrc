#!/bin/zsh

# Path to your oh-my-zsh installation.
export ZSH="/Users/spikeburton/.oh-my-zsh"

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="norm"
# ZSH_THEME="amuse"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git nvm)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="code --wait"
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#---------#
# Aliases #
#---------#

# Vagrant
export VAGRANT_DEFAULT_PROVIDER="virtualbox"
alias vu="time vagrant up"
alias vh="vagrant halt"
alias vd="vagrant destroy -f"
alias vssh="vagrant ssh"

# Docker Compose
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcb="docker-compose build"

# Terraform
alias tf="terraform"

#---------#
# Exports #
#---------#

# mongo and rabbitmq
export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"
export PATH=$PATH:/usr/local/opt/rabbitmq/sbin

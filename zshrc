# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="afowler"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
#export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails ruby bundler git brew gem code vi-mode vi-line-edit git-flow heroku zeus)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:$PATH:/usr/local/sbin:$HOME/.dotfiles/bin"

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

# Mac OS X specific commands
if [[ `uname` =~ 'Darwin' ]]; then
  alias vim='mvim -v'
fi

# Enable vim editing of the current line
autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line

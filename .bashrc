# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# Exports
source $HOME/.bash/exports

# Directory Colors
if [ -f ~/.dircolors ]
then
  eval "`dircolors -b ~/.dircolors`"
fi

if [ -f $HOME/.bash/source ]
then
  . $HOME/.bash/source
fi

if [ -f $HOME/.bash/aliases ]
then
  . $HOME/.bash/aliases
fi

if [ -f $HOME/.bash/functions ]
then
  . $HOME/.bash/functions
fi

if [ -f $HOME/.bash/prompt ]
then
  . $HOME/.bash/prompt
fi

if [ -r $HOME/.nvm/nvm.sh ]
then
  . $HOME/.nvm/nvm.sh
  . $NVM_DIR/bash_completion
  nvm use 0.10 2>&1 >>/dev/null
fi

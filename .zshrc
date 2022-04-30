#!/usr/sh 

SCRIPT_DIR=${HOME}/dotfiles

# if using MacOS, load HomeBrew
# if [ "$(uname)" == 'Darwin' ]; then
#  source $SCRIPT_DIR/zsh/homebrew.zsh
  source ~/dotfiles/zsh/homebrew.zsh
# fi

source $SCRIPT_DIR/zsh/zplug.zsh
source $SCRIPT_DIR/zsh/p10k.zsh
source $SCRIPT_DIR/zsh/envs.zsh
source $SCRIPT_DIR/zsh/pipUpdate.zsh
source $SCRIPT_DIR/zsh/cuda.zsh

if [ 'uname' = "Darwin" ]; then
  source $SCRIPT_DIR/zsh/aliasForMacOS.zsh
elif [ '$(expr substr $(uname -s) 1 5)' = "Linux" ]; then
  
fi

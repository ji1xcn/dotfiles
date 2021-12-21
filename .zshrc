SCRIPT_DIR=$HOME/dotfiles

# if using MacOS, load HomeBrew
if [ "$(uname)" == 'Darwin' ]; then
source $SCRIPT_DIR/zsh/homebrew.zsh
fi

source $SCRIPT_DIR/zsh/zplug.zsh
source $SCRIPT_DOR/zsh/p10k.zsh
source $SCRIPT_DOR/zsh/envs.zsh
source $SCRIPT_DOR/zsh/pipUpdate.zsh

if [ "$(uname)" == 'Darwin' ]; then
  source $SCRIPT_DOR/zsh/aliasForMacOS.zsh
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  
fi
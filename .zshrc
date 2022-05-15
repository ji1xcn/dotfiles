platform="$(uname | tr '[:upper:]' '[:lower:]')"

SCRIPT_DIR=${HOME}/dotfiles

# if using MacOS, load HomeBrew

if [ $platform = 'darwin' ]; then
  source $SCRIPT_DIR/zsh/homebrew.zsh
#  source ~/dotfiles/zsh/homebrew.zsh
fi

source $SCRIPT_DIR/zsh/zplug.zsh
source $SCRIPT_DIR/zsh/p10k.zsh
source $SCRIPT_DIR/zsh/envs.zsh
source $SCRIPT_DIR/zsh/pipUpdate.zsh

if [ $platform = 'Linux' ]; then
  source $SCRIPT_DIR/zsh/cuda.zsh
fi

# Set Alias
if [ $platform = 'darwin' ]; then
  source $SCRIPT_DIR/zsh/aliasForMacOS.zsh
elif [ $platform = 'Linux' ]; then
fi

function resetLaunchPad(){
   defaults write com.apple.dock ResetLaunchPad -bool true;
   killall Dock;
}
alias resetLaunchPad=resetLaunchPad

alias resetAudio='sudo killall coreaudiod'

alias pip-upgrade-all="pip list -o | tail -n +3 | awk '{ print \$1 }' | xargs pip install -U"

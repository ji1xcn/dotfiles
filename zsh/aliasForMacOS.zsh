function resetLaunchPad(){
   defaults write com.apple.dock ResetLaunchPad -bool true;
   killall Dock;
}
alias resetLaunchPad=resetLaunchPad


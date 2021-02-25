# Screenshot stuff
info "== Configuring screenshots == \n\n"
mkdir "$HOME/Pictures/Screenshots"
defaults write com.apple.screencapture location -string “$HOME/Pictures/Screenshots”
defaults write com.apple.screencapture type -string “png”

# Display full POSIX path as Finder window title
info "== Fixing Finder display == \n\n"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the sound effects on boot
info "== Disabling boot sounds == \n\n"
sudo nvram SystemAudioVolume=" "

if [ ! -e /usr/local/bin/brew ]; then
	info "== Installing Homebrew == \n\n"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	printf "\n\n"
fi

cp ~/.dotfiles/main/Brewfile.sh ~/Brewfile

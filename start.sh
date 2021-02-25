# lots and lots and lots of sane macOS defaults 
sh ~/.dotfiles/main/macos.sh

# Homebrew!
if [ ! -e /usr/local/bin/brew ]; then
	echo "== Installing Homebrew == \n\n"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	printf "\n\n"
fi

cp ~/.dotfiles/main/Brewfile.sh ~/Brewfile
brew bundle

#!/bin/sh
#
# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions


echo "==> Installing ruby"
brew install ruby

echo "==> Installing git"
brew install git

echo "==> Installing vim"
brew install vim

echo "==> Installing wget"
brew install wget

echo "==> Installing z"
brew install z

echo "==> Installing utils"
brew install ack
brew install coreutils
brew install jq
brew install htop
brew install tmux

echo "==> Installing apps"
# productivity
brew cask install atom
brew cask install slack
brew cask install dropbox
brew cask install virtualbox
brew cask install 1password

# browsers
brew cask install firefox
brew cask install google-chrome

# extras
brew cask install spotify

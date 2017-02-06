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

echo "==> Installing tmux"
brew install tmux
# fix gulp notify in tmux
brew install reattach-to-user-namespace

echo "==> Installing fzf"
brew install fzf

echo "==> Installing ranger"
brew install ranger

echo "==> Installing kwm and khd"
brew install koekeishiya/formulae/kwm
brew install koekeishiya/formulae/khd

echo "==> Installing utils"
brew install ack
brew install coreutils
brew install jq
brew install htop

echo "==> Installing fun"
brew install archey

echo "==> Installing hyper"
brew cask install hyper

echo "==> Installing apps"
# productivity
brew cask install atom
brew cask install slack
brew cask install dropbox
brew cask install virtualbox
brew cask install 1password
# customization
brew cask install ubersicht
# browsers
brew cask install firefox
brew cask install google-chrome
# extras
brew cask install spotify

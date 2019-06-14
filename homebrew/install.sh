#!/bin/sh
#
# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask
brew tap caskroom/versions

packages=(
# git
git
# vim & neovim
vim
neovim
# languages
ruby
go
# docker
docker
docker-machine
docker-compose
# utilities
fzf
ranger
htop
wget
ack
coreutils
moreutils
jq
parallel
terminal-notifier
# fun
archey
figlet

markdown
grip
ripgrep
ctags
zsh
zsh-completions
brew-cask-completion
)

caskapps=(
# productivity
docker
slack
discord
dropbox
virtualbox
1password
iterm2
cyberduck
sequel-pro
sublime-text
visual-studio-code
# utilities
google-backup-and-sync
hammerspoon
karabiner-elements
# independent trackpad and mouse scroll direction
scroll-reverser
xscope
# text expansion
atext
# browsers
firefox
google-chrome
# music
spotify
)

echo "==> Installing packages"
brew install "${packages[@]}"

echo "==> Installing apps"
brew cask install "${caskapps[@]}"

# Post Install brew

# install fzf keybindings and completions
/usr/local/opt/fzf/install

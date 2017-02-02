# Sets macOS defaults.
#
# Run ./set-defaults.sh and you'll be good to go.

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Save screenshots to the desktop
defaults write com.apple.screencapture location ~/Screenshots

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Show path in Finder title bar
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Top left screen corner
defaults write com.apple.dock wvous-tl-corner -int 10
# defaults write com.apple.dock wvous-tl-modifier -int 0

# Top right screen corner
defaults write com.apple.dock wvous-tr-corner -int 12
# defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom left screen corner
defaults write com.apple.dock wvous-bl-corner -int 2
# defaults write com.apple.dock wvous-bl-modifier -int 0

# Bottom left screen corner
defaults write com.apple.dock wvous-br-corner -int 4
# defaults write com.apple.dock wvous-br-modifier -int 0

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show the ~/Library folder
chflags nohidden $HOME/Library

# Auto hide menu bar
defaults write NSGlobalDomain _HIHideMenuBar -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# hide everything on the desktop
defaults write com.apple.finder CreateDesktop false



###############################################################################
# Kill affected applications                                                  #
###############################################################################

# for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
# "Dock" "Finder" "Google Chrome" "Google Chrome Canary" "Mail" "Messages" \
# "Opera" "Photos" "Safari" "SizeUp" "Spectacle" "SystemUIServer" "Terminal" \
# "Twitter" "iCal"; do
#   killall "${app}" &> /dev/null
# done
echo "Done setting defaults. Note that some of these changes require a logout/restart to take effect."

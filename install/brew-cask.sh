# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
echo "take ownership of /opt/ folder"
sudo chown -R $USER /opt/homebrew-cask
sudo chown -R $USER /Library/Ruby/Gems/2.0.0/specifications

    # boxy
    # shush
    # wunderlist

brew cask install sublime-text
brew cask install iterm2

ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Link Hammerspoon config
[ -d ~/.hammerspoon ] || ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon

# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
	ansible
	cmake
    bash-completion2
    bats
    battery
    coreutils
    dockutil
    ffmpeg
    fasd
    gettext
    gifsicle
    git
    gnu-sed --with-default-names
    grep --with-default-names
    hub
    httpie
    imagemagick
    jq
    mackup
    maven
    peco
    psgrep
    python
    ruby
    shellcheck
    ssh-copy-id
    tig
    tree
    vim
    wget
    wireshark
    xctool
    zsh-syntax-highlighting
)

brew install "${apps[@]}"


# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
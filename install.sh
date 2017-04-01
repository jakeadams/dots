#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)


export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

echo DOTFILES_DIR


# Update dotfiles itself first
echo [ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master


# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/rc/.zshrc" ~
ln -sfv "$DOTFILES_DIR/rc/.inputrc" ~
ln -sfv "$DOTFILES_DIR/rc/.gemrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig-shared" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/git/.gitmodules" ~

# Package managers & packages

. "$DOTFILES_DIR/install/zsh.sh"
. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew.local.sh" || true
. "$DOTFILES_DIR/install/pip.sh"

source “$DOTFILES_DIR/rc/.zshrc”

# . "$DOTFILES_DIR/install/brew-cask.sh"
. "$DOTFILES_DIR/install/gem.sh"

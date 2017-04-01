#!bin/zsh
# Resolve DOTFILES_DIR (assuming ~/.dotfiles on distros without readlink and/or $BASH_SOURCE/$0)
READLINK=$(which greadlink || which readlink)
CURRENT_SCRIPT=${(%):-%N}

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
    SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
    DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/.dotfiles" ]; then
    DOTFILES_DIR="$HOME/.dotfiles"
else
    echo "Unable to find dotfiles, exiting."
    return # `exit 1` would quit the shell itself
fi

# Finally we can source the dotfiles (order matters)

for f in "$DOTFILES_DIR"/.zshrc.d/*
do
    source $f
done

# Hook for extra/custom stuff

EXTRA_DIR="$HOME/.extra"

if [ -d "$EXTRA_DIR" ]; then
    for EXTRAFILE in "$EXTRA_DIR"; do
        [ -f "$EXTRAFILE" ] && . "$EXTRAFILE"
    done
fi

# Clean up

unset READLINK CURRENT_SCRIPT SCRIPT_PATH DOTFILE

# Export

export OS DOTFILES_DIR EXTRA_DIR

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

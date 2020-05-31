# [ ] Install Firefox
# [ ] Use Mozilla sync to sync extensions or install them manually
# [ ] Generate a new set of ssh keys: `ssh-keygen -t ed25519` + all default settings
# [ ] Add ssh public key to Github via the web interface
# [ ] Follow instructions from .dotfile-README.md in dotfiles repo to install dotfiles
# [ ] Run this script
# [ ] Open Sublime, install Package Control and restart
# [ ] Copy the contents of the Sublime extensions User directory from dotfiles to the correct location
# [ ] Install rbenv, pyenv, and nvm via their respective install scripts
# [ ] Install Dropbox from website
# [ ] Install Rescuetime from website

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install fish tmux mosh htop curl rbenv git bash ripgrep
brew cask install sublime-text

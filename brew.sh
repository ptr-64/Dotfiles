#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew and upgrade already installed formulae.
brew update && brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
export PATH=$PATH:$(brew --prefix coreutils)/libexec/gnubin
# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
#brew install bash
#brew install bash-completion2

# Switch to using brew-installed bash as default shell
#if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#  chsh -s "${BREW_PREFIX}/bin/bash";
#fi;

# Install `wget` with IRI support.
brew install wget 

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh

# Install font tools.
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install essential apps
brew install pyenv
brew install pyenv-virtualenv
#===============================
# run the following to configure shell environment for pyenv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
#================================
brew install r
brew install macvim #--with-override-system-vim --enable-gui
brew install openconnect
brew install --cask signal
brew install --cask skim
brew install --cask firefox
brew install --cask mactex # takes a while...
brew install --cask anki
brew install --cask rectangle
brew install --cask bitwarden
brew install --cask netnewswire
brew install --cask inkscape

# Install other useful binaries.
brew install git
brew install lua
brew install julia
# Remove outdated versions from the cellar.
brew cleanup

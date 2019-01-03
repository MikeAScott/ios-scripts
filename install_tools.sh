#!/bin/bash

# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew tap caskroom/cask

brew install git
brew install bash-git-prompt

brew cask install visual-studio-code

# Ruby dev
brew install autoconf automake gdbm gmp libksba libtool libyaml openssl pkg-config readline gpg2

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

\curl -sSL https://get.rvm.io | bash -s stable --ruby

# DotNet Dev
brew cask install dotnet-sdk

brew cleanup       

#!/bin/bash

# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew tap caskroom/cask

brew install git
brew install bash-git-prompt

brew cask install visual-studio-code

brew cleanup       

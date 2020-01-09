#!/bin/bash

# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew tap homebrew/cask-cask

brew install git
brew install bash-git-prompt

brew cask install visual-studio-code

# Dev tools
brew install autoconf automake gdbm gmp libksba libtool libyaml openssl pkg-config readline gpg2

# Ruby dev
brew install rbenv
rbenv init
echo 'eval "$(rbenv init - )"' >> ~/.bash_profile

rbenv install 2.6.5

# Python3 Pip3 & Virtualenv
brew install python
pip3 install virtualenv

#Install Ansible
pip3 install ansible paramiko boto3 botocore molecule

# DotNet Dev
brew cask install dotnet-sdk

# Terraform
brew install terraform

# AWS & Azure CLI
pip3 install awscli
brew install azure-cli

# Tidy up
brew cleanup       

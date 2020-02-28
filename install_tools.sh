#!/bin/bash

# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew tap homebrew/cask-cask

# Git
brew install git
brew install bash-git-prompt

git config --global user.name "Mike Scott"
git config --global user.email "mike.scott@nttdata.com"

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

# Java JDK
brew install java
echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.bash_profile
echo 'export CPPFLAGS="-I/usr/local/opt/openjdk/include"' >> ~/.bash_profile

# Terraform
brew install terraform

# AWS & Azure CLI
pip3 install awscli
brew install azure-cli

# Docker, Virtual Box & Vagrant
brew cask install docker
brew cask install virtualbox
brew cask install vagrant
#brew cask install vagrant-manager

# Puppet PDK
# brew cask install puppetlabs/puppet/pdk



# Tidy up
brew cleanup       

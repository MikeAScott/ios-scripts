#!/bin/bash

# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew tap homebrew/cask-cask

# tree
brew install tree

# Git
brew install git
brew install bash-git-prompt

git config --global user.name "Mike Scott"
git config --global user.email "mike.scott@nttdata.com"

# VS Code
brew cask install visual-studio-code

# Dev tools
brew install autoconf automake gdbm gmp libksba libtool libyaml openssl pkg-config readline gpg2

# Ruby dev
brew install rbenv
rbenv init
echo 'eval "$(rbenv init - )"' >> ~/.bash_profile

rbenv install 2.6.5
rbenv global 2.6.5

gem install bundler

# Python3 Pip3 & Virtualenv
brew install python
pip3 install virtualenv

#Install Ansible
pip3 install ansible paramiko boto3 botocore molecule

# DotNet Dev
brew cask install dotnet-sdk

# Java JDK
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8
echo "jdk() {
        version=\$1
        export JAVA_HOME=$(/usr/libexec/java_home -v\"\$version\");
        export PATH=\"\$JAVA_HOME/bin:\$PATH\"
        export CPPFLAGS=\"-I\$JAVA_HOME/include\"
        java -version
 }
jdk 1.8
" >> ~./bash_profile
brew install maven
brew install ant

# Eclipse
# brew cask install eclipse-java
# ECLIPSE_INI='/Applications/Eclipse Java.app/Contents/Eclipse/eclipse.ini'
# JDK_PATH = $(/usr/libexec/java_home -v 1.8)
# echo '-vm' >> "$ECLIPSE_INI"
# echo "$JDK_PATH/bin" >> "$ECLIPSE_INI"

# Node
brew install node

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

# Powershell
brew cask install powershell

# Tidy up
brew cleanup       

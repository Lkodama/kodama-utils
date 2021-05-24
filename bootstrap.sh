#!/bin/bash

cd ~

#DIR
mkdir ~/developer

#Repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:gnome-terminator

#Update
sudo apt-get update

#Install programs
sudo apt-get install git oracle-java8-installer vim google-chrome-stable curl terminator

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install NVM NODE
sudo apt-get update
sudo apt-get install build-essential libssl-dev

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

source ~/.zshrc

#GIT config alias
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.ps push
git config --global alias.pl pull
git config --global alias.last 'log -1 HEAD'

#Install Maven
sudo apt-get install maven

#Install Docker
curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker $(whoami)

#Install Docker Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.4.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


#Install AWS CLI
sudo apt-get update
sudo apt-get install awscli


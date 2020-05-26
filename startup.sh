#!/bin/sh

printf "Performing instalations, please wait..."

sudo apt update
sudo apt install curl

printf "Installing Telegram"

sudo apt install telegram-desktop

printf "Installing Slack"

sudo snap install slack --classic

printf "Installing Terminator"

sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator

printf "Installing Zsh and Oh my Zsh"

sudo apt-get install zsh
sh -c “$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

printf "Installing Git"

sudo apt install git

printf "Installing FiraCode"

sudo add-apt-repository universe
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
sudo apt-get update
sudo apt install fonts-firacode

printf "Install Node and NPM"

sudo apt install nodejs
sudo apt install npm

printf "Install Docker and Docker Compose"

sudo apt install docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

printf "Installing VSCode"

sudo snap install code

printf "Finished :)"






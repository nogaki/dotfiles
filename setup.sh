#!/bin/bash

# apt
#sudo apt update
#sudo apt upgrade -y
#sudo apt autoremove -y

#while read package ;do
    # skip brank line
#    if [ -z "$package" ]; then
#        continue
#    fi
#    sudo apt install -y "$package"
#done < ~/.dotfiles/setup/apt_list.txt


# Python
#cd ~
#git clone https://github.com/pyenv/pyenv.git ~/.pyenv
#source ~/.profile
#echo $PATH

#python_version=3.12.9
#pyenv install $python_version
#pyenv global $python_version

#python -m pip install --upgrade pip
#python -m pip install --user setuptools


# Powerline-shell
#mkdir -p ~/.config/powerline-shell && powerline-shell --generate-config > ~/.config/powerline-shell/config.json
mkdir ~/local
mkdir ~/local/src
#cd ~/local/src
#git clone https://github.com/b-ryan/powerline-shell
#cd powerline-shell
#wget https://github.com/b-ryan/powerline-shell/files/15169621/fix.patch
#patch -p1 -N < fix.patch
#python setup.py install

source ~/.dotfiles/setup/apt.sh
source ~/.dotfiles/setup/python.sh


cd ~

#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

while read package ;do
    # skip brank line
    if [ -z "$package" ]; then
        continue
    fi
    sudo apt install -y "$package"
done < ~/.dotfiles/setup/apt_list.txt



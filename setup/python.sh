#!/bin/bash

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
source ~/.profile

python_version=3.12.9
pyenv install $python_version
pyenv global $python_version

python -m pip install --upgrade pip

while read package ;do
    # skip brank line
    if [ -z "$package" ]; then
        continue
    fi
    python -m pip install --user "$package"
done < ~/.dotfiles/setup/pip_list.txt

# Powerline-shell
git clone https://github.com/b-ryan/powerline-shell ~/local/src/powerline-shell
cd ~/local/src/powerline-shell
wget https://github.com/b-ryan/powerline-shell/files/15169621/fix.patch
patch -p1 -N < fix.patch
python setup.py install

cd ~



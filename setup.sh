#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

echo -e "\n=============================="
echo "Updating package lists..."
echo "=============================="
sudo apt update

echo -e "\n=============================="
echo "Installing vim and powerline fonts..."
echo "=============================="
sudo apt install vim fonts-powerline -y

echo -e "\n=============================="
echo "Installing vim-plug..."
echo "=============================="
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo -e "\n=============================="
echo "Copying configuration..."
echo "=============================="
cp .vimrc ${HOME}/.vimrc

echo -e "\n=============================="
echo "DONE"
echo "=============================="

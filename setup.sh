#!/bin/bash

## install zsh
echo -n "Installing zsh.. "
apt install zsh
echo "done!"

## set as default shell
echo -n "Setting zsh as default shell.. "
chsh -s $(which zsh)
echo "done!"

## install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Copy .zshrc
echo -n "Copying zsh config.. "
cp ./.zshrc ~/
echo "done!"

## Copy theme
echo -n "Copying theme file.. "
cp ./.oh-my-zsh ~/
echo "done!"



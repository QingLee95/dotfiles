#!/bin/bash


SCRIPT_PATH="$(realpath "$(dirname "$0")")"

install_bash(){
 rm -rf ~/.bashrc 2>/dev/null
 ln -s $SCRIPT_PATH/bashrc ~/.bashrc
}

install_kitty(){
 mkdir -p ~/.config
 rm -rf ~/.config/kitty 2>/dev/null
 ln -s $SCRIPT_PATH/kitty ~/.config/kitty
}

echo "Dotfiles path: $SCRIPT_PATH"

echo "Install bash"
install_bash

echo "Install kitty"
install_kitty

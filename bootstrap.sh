#!/usr/bin/env bash

CONFIG_DIR="$HOME/.config"

mkdir -p $CONFIG_DIR/alacritty
ln -s $PWD/alacritty.toml $CONFIG_DIR/alacritty/alacritty.toml

ln -s $PWD/zsh $CONFIG_DIR/zsh

mkdir -p $CONFIG_DIR/vim
ln -s $PWD/vimrc $CONFIG_DIR/vim/vimrc

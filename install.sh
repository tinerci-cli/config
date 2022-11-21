#!/bin/sh
mkdir "$HOME"/code
ln -s "$HOME"/code/config/bat "$XDG_CONFIG_HOME"
ln -s "$HOME"/code/config/htop "$XDG_CONFIG_HOME"
ln -s "$HOME"/code/config/mpv "$XDG_CONFIG_HOME"
ln -s "$HOME"/code/config/neofetch "$XDG_CONFIG_HOME"
ln -s "$HOME"/code/config/nvim "$XDG_CONFIG_HOME"
ln -s "$HOME"/code/config/shell "$XDG_CONFIG_HOME"
ln -s "$HOME"/code/config/tmux "$XDG_CONFIG_HOME"
ln -s "$HOME"/code/config/zsh "$XDG_CONFIG_HOME"
ln -s "$HOME"/code/config/user-dirs.dirs "$XDG_CONFIG_HOME"
cd ..
mv ./config "$HOME"/code

#!/usr/bin/env bash

color_scheme_url="https://github.com/prateekpunetha/termux-setup/raw/main/colors/colors.properties"
font_url="https://github.com/prateekpunetha/termux-setup/raw/main/fonts/font.ttf"
starship_config_url="https://github.com/prateekpunetha/termux-setup/raw/main/config_files/starship/config.toml"
termux_dir="$HOME/.termux"

# Termux update repos
termux-change-repo

# Setup termux storage
termux-setup-storage

# Update packages
yes | pkg update && pkg upgrade

# Install main stuff
pkg install git wget jq openssh python python-pip termux-api zsh -y

#Fix for pip install failing to work
pkg up
pkg rei libexpat

# Done
echo '\nSetup is Done!'
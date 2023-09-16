#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in arch-ap Folder."
    echo "Please use ./arch-ap.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the arch-ap Project"
git clone https://github.com/arancepete/arch-ap

echo "Executing arch-ap Script"

cd $HOME/arch-ap

exec ./arch-ap.sh

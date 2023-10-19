#!/bin/bash

sudo pacman -Sy - < ./install/pacman.txt --needed
paru -Sy - < ./install/paru.txt --needed

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

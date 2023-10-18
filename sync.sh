#!/bin/bash

sudo pacman -Sy - < ./install/pacman.txt --needed
paru -Sy - < ./install/paru.txt --needed

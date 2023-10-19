#!/bin/bash
#

echo "Installing pacman packages"
sudo pacman -Sy - < ./install/pacman.txt --needed
echo "Installing paru packages"
paru -Sy - < ./install/paru.txt --needed

p10kpath=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo ""
echo "Installing oh_my_zsh"
echo ""
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo ""
echo "Installing PowerLevel10K"
echo ""

if [ ! -d $p10kpath ];then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    echo ""
    echo "PowerLevel10K installed"
    echo ""
else
    echo "powerlevel10k folder already exists"
fi

echo ""
echo "Install zsh-autosuggestions"
echo ""
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo ""

echo ""
echo "Install zsh-highlighting"
echo ""
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo ""

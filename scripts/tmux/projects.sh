#!/bin/sh

projects=`ls ~/Documentos/Projects | tr ' ' '\n'`
config=`ls ~/.dotfiles/.config | tr ' ' '\n'`
# $projects | fzf

selected=`printf "$projects\n$config\ndotfiles" | fzf --prompt="󰃖 Go to: " --border`

if [ -z "$selected" ]; then
    exit 0
fi

if printf $projects | grep -qs $selected; then
    cd ~/Documentos/Projects/"$selected"/
    clear
elif printf $config | grep -qs $selected; then
    cd ~/.dotfiles/.config/"$selected"/
    clear
else 
    cd ~/.dotfiles
    clear
fi


# ($projects & ls ~/.dotfiles/.config) | fzf


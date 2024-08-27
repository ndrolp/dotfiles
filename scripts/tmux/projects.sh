#!/bin/sh
clear
projects=`ls ~/Documentos/Projects | tr ' ' '\n'`
config=`ls ~/.dotfiles/.config | tr ' ' '\n'`
work_projects=`ls ~/Development/Projects | tr ' ' \n`
# $projects | fzf

selected=`printf "$projects\n$config\n$work_projects\ndotfiles" | fzf --prompt="󰃖 Go to: " --border`

if [ -z "$selected" ]; then
    clear
    return 0
fi

if printf $projects | grep -qs $selected; then
    cd ~/Documentos/Projects/"$selected"/
    clear
elif printf $config | grep -qs $selected; then
    cd ~/.dotfiles/.config/"$selected"/
    clear
elif printf $work_projects | grep -qs $selected; then
    cd ~/Development/Projects/"$selected"/
    clear
else 
    cd ~/.dotfiles
    clear
fi


# ($projects & ls ~/.dotfiles/.config) | fzf


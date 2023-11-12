#!/bin/bash

GITHUB=" Github"
YOUTUBE=" Youtube"
NERD_FONT=" NerdFont"

BROWSER=$(xdg-settings get default-web-browser)

QUERY=$(echo -e "\
${YOUTUBE}\n\
${GITHUB}\n\
${NERD_FONT}\
" | dmenu -p "   " -fn "Hasklug Nerd Font-8" -h 27 -i)

CON=$(echo $QUERY | tr " " "+" )


if [[ $(echo $CON | wc -c) -gt 1 ]]
then
    case $QUERY in 
    $YOUTUBE ) xdg-open https://youtube.com; ;;
    $GITHUB ) xdg-open https://github.com/; ;;
    $NERD_FONT ) xdg-open https://www.nerdfonts.com/cheat-sheet; ;;
    * ) xdg-open https://www.google.com/search?q=$CON
    esac
fi

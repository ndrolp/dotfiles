#!/bin/bash
QUERY=$(printf "" | dmenu -p " 󰖟  " -fn "Hasklug Nerd Font-8" -h 27)
CON=$(echo $QUERY | tr " " "+" )


if [[ $(echo $CON | wc -c) -gt 1 ]]
then
    xdg-open https://www.google.com/search?q=$CON
fi

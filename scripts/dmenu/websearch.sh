#!/bin/bash
BROWSER=$(xdg-settings get default-web-browser)
QUERY=$(printf "" | dmenu -p " 󰖟  " -fn "Hasklug Nerd Font-8" -h 27)
CON=$(echo $QUERY | tr " " "+" )


if [[ $(echo $CON | wc -c) -gt 1 ]]
then
    xdg-open https://www.google.com/search?q=$CON
    ps aux | grep "Chrome" | grep -v "grep"
    if [ $? -eq 0 ]; then
        wmctrl -a CHROME
    else
        wmctrl -a FIREFOX
    fi
fi

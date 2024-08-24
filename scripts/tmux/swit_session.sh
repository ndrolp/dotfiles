#!/bin/sh

sessions=`tmux ls`

prompt="  Swap Session: "

if [ "$1" = "--kill" ]; then
    prompt="  Kill Session: "
fi

selected=`printf "$sessions" | fzf --prompt="$prompt" --layout=reverse-list`
session_name=`echo "$selected" | cut -d':' -f1`

if [ -z "$selected" ]; then
    clear
    return 0
fi


if [ "$1" = "--kill" ]; then
  tmux kill-session -t "$session_name"
else
  tmux switch-client -t "$session_name"
fi


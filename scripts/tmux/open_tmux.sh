#!/bin/sh

if tmux has-session -t "Main" 2>/dev/null; then
    tmux;
else
    tmux new-session -s "Main"
fi

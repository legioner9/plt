#!/bin/bash

local filename=${PLT_PATH}/.d/.mm.d/tm_sm__/tst.sh

echo -e "${HLIGHT}--- cat file://"${filename}" ---${NORMAL}" #start files

cat "${filename}"

if ! isn_yes__ "tst flow env: <name_session>=$1 dir mm.d=${PLT_PATH}/.d/.mm.d/tm_sm__"; then
    tmux new -s "$1" -d
    tmux split-window -v -t "$1":0.0
    tmux send-keys -t "$1":0.0 'echo "that 0 window"' Enter
    tmux split-window -h -t "$1":0.1
    tmux send-keys -t "$1":0.1 'echo "that 1 window"' Enter
    tmux keys -t "$1":0.2 'echo "that 2 window"' Enter
fi

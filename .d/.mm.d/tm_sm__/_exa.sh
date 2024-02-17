#!/bin/bash

# tmux new -s <name_session> -d
# tmux split-window -v -t <name_session>:0.0
# tmux send-keys -t <name_session>:0.0 'echo "that 0 window"' Enter
# tmux split-window -h -t <name_session>:0.1
# tmux send-keys -t <name_session>:0.1 'echo "that 1 window"' Enter
# tmux send-keys -t <name_session>:0.2 'echo "that 2 window"' Enter
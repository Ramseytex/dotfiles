#!/bin/sh
tmux new-session -d -s Ramsey
tmux new-window -t Ramsey:1 -n work! 'cal; zsh -i' 
tmux split-window 'cd ~/Documents; zsh -i'
tmux selectp -t 0
tmux splitw -h
tmux new-window  -t Ramsey:2 -n scratchpad   'vim scratchpad'
tmux new-window -t Ramsey:3 -n ops 'irssi'
tmux kill-window -t Ramsey:0
tmux select-window -t Ramsey:1
tmux -2 attach-session -t Ramsey

#!/bin/bash

Init(){

    session="Interface"

    tmux new-session -d -s $session

    tmux set -g status off
    tmux set-option -g mouse on

    window=0
    tmux rename-window -t $session:$window 'Interfacesession'
    tmux split-window -h -p 50
    tmux select-pane -L
    tmux split-window -v -p 10
    tmux select-pane -R
    tmux send-keys -t $session:$window 'btop' C-m
    tmux select-pane -L
    tmux send-keys -t $session:$window 'dua interactive' C-m
    tmux select-pane -U
    tmux send-keys -t $session:$window 'sh $HOME/Documents/GitHub/ArchGeneralInterface/AGI/interface.sh' C-m
    tmux attach-session -t $session

}

Init
exit
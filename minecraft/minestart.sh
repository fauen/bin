#!/bin/bash
# Author Daniel "fauen" Bäckman
# https://github.com/fauen

# create the new tmux session for the server

tmux new-session -d -s minecraft

# tmux send is short for send-keys
# move to the directory and launch the FTB usual ServerStart inside the session

tmux send -t minecraft cd Space <Input absolute path to minecraft folder> Enter
tmux send -t minecraft sh Space ServerStart.sh Enter

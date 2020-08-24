#!/bin/bash
# Author Daniel "fauen" Bäckman
# https://github.com/fauen

# create the new tmux session for the server

tmux new-session -d -s terraria

# tmux send is short for send-keys
# move to the directory and launch the FTB usual ServerStart inside the session

tmux send -t terraria cd Space /home/fauen/terraria/1353/Linux/ Enter
tmux send -t terraria ./TerrariaServer.bin.x86_64 Space -config Space /home/fauen/terraria/1353/Linux/serverconfig.txt Enter

#!/bin/bash
# Author Daniel "fauen" Bäckman
# https://github.com/fauen

# verbose to prevent people connected to the server
tmux send -t minecraft say Space Server Space is Space going Space through Space REBOOT Space phase Space Enter

# timer start for people to finish their activities
tmux send -t minecraft say Space Restarting  Space in Space 30 Space Seconds Enter

sleep 10

tmux send -t minecraft say Space Restarting  Space in Space 20 Space Seconds Enter

sleep 10

tmux send -t minecraft say Space Restarting  Space in Space 10 Space Seconds Enter

sleep 5

tmux send -t minecraft say Space Restarting  Space in Space 5 Space Seconds Enter

sleep 1

tmux send -t minecraft say Space Restarting  Space in Space 4 Space Seconds Enter

sleep 1

tmux send -t minecraft say Space Restarting  Space in Space 3 Space Seconds Enter

sleep 1

tmux send -t minecraft say Space Restarting  Space in Space 2 Space Seconds Enter

sleep 1

tmux send -t minecraft say Space Restarting  Space in Space 1 Space Seconds Enter

sleep 1

tmux send -t minecraft say Space Restarting  Space in Space 0 Space Seconds Enter

tmux send -t minecraft say Space Server Space REBOOTING Space now Space ! Enter

# rebooting the server using the reboot routine
tmux send -t minecraft stop Enter
sleep 20
# killing the actual tmux used by the server

tmux kill-session -t minecraft

# moving to directory and executing the start ( see start.sh comments)

# cd /home/fauen/bin/
# sh minestart.sh

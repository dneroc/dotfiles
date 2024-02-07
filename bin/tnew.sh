# #! /bin/bash
# #
# # This script starts up tmux with a clock, calander, and tmux session
#
# # Create a new detached tmux session
# tmux new-session -d -s GFG_Session
#
# # Create the first window named GFG_Overview with an 'echo' command
# tmux send-keys -t GFG_Session "echo 'Welcome to GeeksforGeeks!'" C-m
#
# # Split the first window horizontally and send a 'pwd' command to the new pane
# tmux split-window -h -t GFG_Session "pwd" C-m
#
# # Create a new window named GFG_Code with an 'ls' command
# tmux new-window -t GFG_Session "ls" C-m
#
# # Split the GFG_Code window vertically and send an 'echo' command to the new pane
# tmux split-window -v -t GFG_Session "echo 'This is the code directory'" C-m
#
# # Create a new window named GFG_Terminal with an 'ls' command
# tmux new-window -t GFG_Session "ls" C-m
#
# # Attach to the tmux session
# tmux attach-session -t GFG_Session
#!/bin/sh
tmux new-session -d
tmux split-window -h 'tty-clock -tc'
tmux split-window -v 'calcurse'
tmux -2 attach-session -d

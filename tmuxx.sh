#!/bin/bash

 

# attach to an existing tmux session, or create one if none exist

# also set up access to the system clipboard from within tmux when possible

 

if [[ ( $OSTYPE == darwin* ) && ( -x $(which reattach-to-user-namespace 2>/dev/null) ) ]]; then

# on OS X force tmux's default command to spawn a shell in the user's namespace

# https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard

tweaked_config=$(cat $HOME/.tmux.conf <(echo 'set-option -g default-command "reattach-to-user-namespace -l $SHELL"'))

 

tmux attach || tmux -f <(echo "$tweaked_config") new-session

else

tmux attach || tmux new-session

fi

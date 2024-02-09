#!/bin/bash

export HOME=/steam
#export STEAM_RUNTIME_PREFER_HOST_LIBRARIES=0
export LD_LIBRARY_PATH="/steam/xdg/data/Steam/ubuntu12_32"
#export LD_PRELOAD=/usr/lib32/libudev.so.1 
#export STEAM_RUNTIME=0 
# exec steam
# exec xterm -bg black -fg white
# exec /usr/games/steam -forcesteamupdate -forcepackagedownload -overridepackageurl http://web.archive.org/web/20230531113527if_/media.steampowered.com/client -exitsteam
exec /usr/games/steam -noverifyfiles -nobootstrapupdate -skipinitialbootstrap -norepairfiles -overridepackageurl steam://rungameid/1444480

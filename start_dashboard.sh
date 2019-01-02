#!/usr/bin/env bash

export DISPLAY=:0

# Create this file, or symlink to one of the existing
# *-dashboard-url.sh files alongside this code
. ~/dev-dashboard-urls.sh



. ~/.config/chromium/Default/Preferences



chromium-browser --noerrdialogs --kiosk ${URLS[@]}

#!/usr/bin/env bash

pkill swww-daemon
pkill ags
pkill gjs
pkill hyprpanel

# Launch hyprpanel
hyprpanel &
disown

echo "shell launched..."

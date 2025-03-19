#!/usr/bin/env bash

# Launch hyprpanel
hyprpanel -q
hyprpanel &
disown

echo "shell launched..."

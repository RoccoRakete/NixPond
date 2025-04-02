#!/usr/bin/env sh

# Output of hyprctl
monitor_output=$(hyprctl monitors -j)

# Check dpmsStatus
dpms_status=$(echo "$monitor_output" | jq -r '.[0].dpmsStatus')

# Turn on/off screen
if [ "$dpms_status" == "true" ]; then
    hyprctl dispatch dpms off
elif [ "$dpms_status" == "false" ]; then
    hyprctl dispatch dpms on
else
    echo "Unknown dpmsStatus: $dpms_status"
fi

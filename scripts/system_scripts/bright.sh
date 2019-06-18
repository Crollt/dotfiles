#!/bin/bash
current_bright=$(</sys/class/backlight/intel_backlight/brightness)
max_bright=$(</sys/class/backlight/intel_backlight/max_brightness)

if [ $1 == 'u' ]; then
    if [ -z $2 ]; then
        current_bright=$((current_bright + 50))
    else
        new_bright=$2
        current_bright=$((current_bright + new_bright))
    fi
elif [ $1 == 'd' ]; then
    if [ -z $2 ]; then
        current_bright=$((current_bright - 50))
    else
        new_bright=$2
        current_bright=$((current_bright - new_bright))
    fi
fi

if [ $current_bright -lt 100 ]; then
    current_bright=100
fi
if [ $current_bright -gt 937 ]; then
    current_bright=937
fi

echo "$current_bright" > "/sys/class/backlight/intel_backlight/brightness"

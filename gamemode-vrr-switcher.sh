#!/bin/bash

previous_state=""
monitor_count=$(kscreen-doctor -o | grep -c '^Output')

while true; do
    if gamemoded -s | grep -q "gamemode is active"; then
        current_state="true"
    else
        current_state="false"
    fi
    if [[ "$current_state" != "$previous_state" ]]; then
        if [[ "$current_state" == "true" ]]; then
            for ((monitor_index=1; monitor_index<=monitor_count; monitor_index++)); do
                kscreen-doctor output.$monitor_index.vrrpolicy.always
            done
        else
            for ((monitor_index=1; monitor_index<=monitor_count; monitor_index++)); do
                kscreen-doctor output.$monitor_index.vrrpolicy.never
            done
        fi
        previous_state="$current_state"
    fi
    sleep 15
done
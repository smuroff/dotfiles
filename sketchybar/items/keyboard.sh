#!/bin/bash

keyboard=(
  padding_right=0
  padding_left=0
  script="$PLUGIN_DIR/keyboard.sh"
)

sketchybar --add item keyboard right                                               \
           --add event input_change 'AppleSelectedInputSourcesChangedNotification' \
           --set keyboard "${keyboard[@]}"                                         \
           --subscribe keyboard input_change                        
    
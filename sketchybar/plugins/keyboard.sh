#!/bin/bash

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

case ${SOURCE} in
    'com.apple.keylayout.ABC') LABEL='en' ;;
    'com.apple.keylayout.Russian') LABEL='ru' ;;
esac

sketchybar --set $NAME label="$LABEL"
#!/bin/bash

set -e
sudo -v

BASE="$HOME/Library/Application Support/Alfred/Alfred.alfredpreferences/preferences"
APPEARANCE="./appearance/options/prefs.plist"
ITERM_PLIST="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/data/alfred.plist"
PLIST_DATA=$(plutil -extract "default" xml1 -o - "$ITERM_PLIST")

cd "$BASE"
plutil -replace "hidehat" -bool YES "$APPEARANCE"
plutil -replace "hideshortcuts" -bool YES "$APPEARANCE"
plutil -replace "showOnScreen" -integer 1 "$APPEARANCE"
plutil -replace "visibleresults" -integer 3 "$APPEARANCE"

plutil -replace "autoshowhistory" -bool YES "advanced/prefs.plist"

plutil -replace "location" -string "Switzerland" "prefs.plist"
cd local/*

plutil -replace "darkthemeuid" -string "theme.bundled.osxdark" "appearance/prefs.plist"
plutil -replace "default" -xml "$PLIST_DATA" "hotkey/prefs.plist"
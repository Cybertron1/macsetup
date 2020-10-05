#!/bin/bash

set -e
sudo -v

BASE="$HOME/Library/Application Support/Alfred/Alfred.alfredpreferences/preferences"
APPEARANCE_OPTIONS="./appearance/options/prefs.plist"
ADVANCED="./advanced/prefs.plist"
PREFS="prefs.plist"
ITERM_PLIST="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/data/alfred.plist"
PLIST_DATA=$(plutil -extract "default" xml1 -o - "$ITERM_PLIST")
EMPTY_PLIST="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/data/empty.plist"

mkdir -p "$BASE"
cd "$BASE"
mkdir -p "$(dirname "$APPEARANCE_OPTIONS")"
cp "$EMPTY_PLIST" "$APPEARANCE_OPTIONS"

mkdir -p "$(dirname "$ADVANCED")"
cp "$EMPTY_PLIST" "$ADVANCED"
cp "$EMPTY_PLIST" "$PREFS"


plutil -replace "hidehat" -bool YES "$APPEARANCE_OPTIONS"
plutil -replace "hideshortcuts" -bool YES "$APPEARANCE_OPTIONS"
plutil -replace "showOnScreen" -integer 1 "$APPEARANCE_OPTIONS"
plutil -replace "visibleresults" -integer 3 "$APPEARANCE_OPTIONS"
plutil -replace "autoshowhistory" -bool YES "$ADVANCED"
plutil -replace "location" -string "Switzerland" "$PREFS"
uid=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')
to_hash="$uid [pepper] fixed hash for non synced settings in synched Alfred Preferences"
local_hash=$(echo -n "$to_hash" | sha1sum | awk '{print $1}')

mkdir -p "local/$local_hash"
cd "local/$local_hash"
APPEARANCE="./appearance/prefs.plist"
mkdir -p "$(dirname "$APPEARANCE")"
cp "$EMPTY_PLIST" "$APPEARANCE"

HOTKEY="./hotkey/prefs.plist"
mkdir -p "$(dirname "$HOTKEY")"
cp "$EMPTY_PLIST" "$HOTKEY"

plutil -replace "darkthemeuid" -string "theme.bundled.osxdark" "$APPEARANCE"
plutil -replace "default" -xml "$PLIST_DATA" "$HOTKEY"

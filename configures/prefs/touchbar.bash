#!/bin/bash
set -e

defaults write com.apple.controlstrip MiniCustomized '(com.apple.system.screen-lock, com.apple.system.brightness, com.apple.system.volume, com.apple.system.media-play-pause )'
defaults write com.apple.controlstrip FullCustomized '(com.apple.system.group.keyboard-brightness, com.apple.system.group.brightness, NSTouchBarItemIdentifierFlexibleSpace, com.apple.system.group.volume, com.apple.system.group.media, NSTouchBarItemIdentifierFlexibleSpace, com.apple.system.screen-lock )'
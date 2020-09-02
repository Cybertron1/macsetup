#!/bin/bash

set -e
sudo -v

###############################################################################
# HyperSwitch                                                                 #
###############################################################################

defaults write com.bahoom.HyperSwitch show_status_menu -bool true
defaults write com.bahoom.HyperSwitch window_preview_allspaces -bool true
defaults write com.bahoom.HyperSwitch window_preview_allscreens -bool true
defaults write com.bahoom.HyperSwitch welcome_window_shown -bool true
defaults write com.bahoom.HyperSwitch show_prefs_on_next_launch -bool false
defaults write com.bahoom.HyperSwitch shift_to_cycle_backwards -bool true
defaults write com.bahoom.HyperSwitch run_in_background -bool true
defaults write com.bahoom.HyperSwitch not_first_launch -bool true
defaults write com.bahoom.HyperSwitch hs_theme -int 3
defaults write com.bahoom.HyperSwitch window_switcher_delay -int 0
defaults write com.bahoom.HyperSwitch app_switcher_delay_subsequent -int 0
defaults write com.bahoom.HyperSwitch app_switcher_delay -int 0
defaults write com.bahoom.HyperSwitch window_preview_size -float 181.4313616071428
defaults write com.bahoom.HyperSwitch deactivate_animation -int 0
defaults write com.bahoom.HyperSwitch screen -int 2
defaults write com.bahoom.HyperSwitch send_debugging_statistics -int 0
defaults write com.bahoom.HyperSwitch window_switcher_current_app_keycode -int 48
defaults write com.bahoom.HyperSwitch window_switcher_mod -int 2

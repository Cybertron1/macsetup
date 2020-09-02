#!/bin/bash

set -e
sudo -v
###############################################################################
# iTerm                                                                      #
###############################################################################

if ! grep -q "auth sufficient pam_tid.so" "/etc/pam.d/sudo"; then
  sudo chmod o+w /etc/pam.d/sudo
  echo -e "auth sufficient pam_tid.so\n$(cat /etc/pam.d/sudo)" >/etc/pam.d/sudo
  sudo chmod o-w /etc/pam.d/sudo
fi

defaults write com.googlecode.iterm2 "AdjustWindowForFontSizeChange" -int 0
defaults write com.googlecode.iterm2 "BootstrapDaemon" -int 0
defaults write com.googlecode.iterm2 "CGFontRenderingFontSmoothingDisabled" -int 0
defaults write com.googlecode.iterm2 "DimBackgroundWindows" -int 0
defaults write com.googlecode.iterm2 "DimInactiveSplitPanes" -int 0
defaults write com.googlecode.iterm2 "DimOnlyText" -int 0
defaults write com.googlecode.iterm2 "DisableFullscreenTransparency" -int 0
defaults write com.googlecode.iterm2 "FocusFollowsMouse" -int 0
defaults write com.googlecode.iterm2 "HapticFeedbackForEsc" -int 0
defaults write com.googlecode.iterm2 "HideScrollbar" -int 0
defaults write com.googlecode.iterm2 "OnlyWhenMoreTabs" -int 0
defaults write com.googlecode.iterm2 "OpenArrangementAtStartup" -int 0
defaults write com.googlecode.iterm2 "OpenBookmark" -int 0
defaults write com.googlecode.iterm2 "OpenNoWindowsAtStartup" -int 0
defaults write com.googlecode.iterm2 "PromptOnQuit" -int 0
defaults write com.googlecode.iterm2 "SUSendProfileInfo" -int 0
defaults write com.googlecode.iterm2 "SeparateStatusBarsPerPane" -int 0
defaults write com.googlecode.iterm2 "SmartPlacement" -int 0
defaults write com.googlecode.iterm2 "SoundForEsc" -int 0
defaults write com.googlecode.iterm2 "TabViewType" -int 0
defaults write com.googlecode.iterm2 "UseBorder" -int 0
defaults write com.googlecode.iterm2 "VisualIndicatorForEsc" -int 0
defaults write com.googlecode.iterm2 "StretchTabsToFillBar" -int 0
defaults write com.googlecode.iterm2 "ShowNewOutputIndicator" -int 0

defaults write com.googlecode.iterm2 "QuitWhenAllWindowsClosed" -int 1
defaults write com.googlecode.iterm2 "UseLionStyleFullscreen" -int 1
defaults write com.googlecode.iterm2 "EnableDivisionView" -int 1
defaults write com.googlecode.iterm2 "EnableProxyIcon" -int 1
defaults write com.googlecode.iterm2 "FlashTabBarInFullscreen" -int 1
defaults write com.googlecode.iterm2 "HideActivityIndicator" -int 1
defaults write com.googlecode.iterm2 "HideMenuBarInFullscreen" -int 1
defaults write com.googlecode.iterm2 "HideTab" -int 1
defaults write com.googlecode.iterm2 "PreserveWindowSizeWhenTabBarVisibilityChanges" -int 1
defaults write com.googlecode.iterm2 "SUEnableAutomaticChecks" -int 1
defaults write com.googlecode.iterm2 "SeparateWindowTitlePerTab" -int 1
defaults write com.googlecode.iterm2 "ShowFullScreenTabBar" -int 1
defaults write com.googlecode.iterm2 "ShowPaneTitles" -int 1
defaults write com.googlecode.iterm2 "StatusBarPosition" -int 1
defaults write com.googlecode.iterm2 "TabStyleWithAutomaticOption" -int 5
defaults write com.googlecode.iterm2 "SplitPaneDimmingAmount" -string 0.1

for style in Regular Bold Italic 'Bold Italic'; do
  file="MesloLGS NF ${style}.ttf"
  if [ -e "$HOME/Library/Fonts/$file" ]; then
    continue
  fi
  curl -fsSL -o "$HOME/Library/Fonts/$file" "https://github.com/romkatv/powerlevel10k-media/raw/master/${file// /%20}"
done

ITERM_PLIST="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/data/iterm.plist"
ITERM_PLIST_TARGET="$HOME/Library/Preferences/com.googlecode.iterm2.plist"

PLIST_DATA=$(plutil -extract "New Bookmarks" xml1 -o - "$ITERM_PLIST" | sed -n '4,$p' | tac | sed -n '2,$p' | tac)

plutil -replace "New Bookmarks" -xml "$PLIST_DATA" "$ITERM_PLIST_TARGET"

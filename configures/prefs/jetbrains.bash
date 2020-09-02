#!/bin/bash

set -e

function jetbrains() {
  local BASE="$HOME/Library/Application Support/JetBrains"
  local CASKS=("intellij-idea" "webstorm" "rubymine")

  for CASK in "${CASKS[@]}"; do
    if ! brew cask list "$CASK" &>/dev/null; then
      continue
    fi
    APP_NAME=$(brew cask info "$CASK" | sed -n '/^.*.app/p' | sed 's/ (App)//')
    NAME=$(sed -n 's/.*"dataDirectoryName": "\(.*\)",/\1/p' "/Applications/$APP_NAME/Contents/Resources/product-info.json")
    CURRENT_PATH="$BASE/$NAME"
    mkdir -p "$CURRENT_PATH"
    mkdir -p "$CURRENT_PATH/options"
    mkdir -p "$CURRENT_PATH/keymaps"

    cat >"$CURRENT_PATH/options/keymap.xml" <<EOF
<application>
  <component name="KeymapManager">
    <active_keymap name="custom" />
  </component>
</application>
EOF

    cat >"$CURRENT_PATH/options/colors.scheme.xml" <<EOF
 <application>
  <component name="EditorColorsManagerImpl">
    <global_color_scheme name="Darcula" />
  </component>
</application>
EOF

    cat >"$CURRENT_PATH/keymaps/custom.xml" <<EOF
<keymap version="1" name="custom" parent="Mac OS X 10.5+">
  <action id="CommentByLineComment">
    <keyboard-shortcut first-keystroke="meta slash" />
    <keyboard-shortcut first-keystroke="meta divide" />
    <keyboard-shortcut first-keystroke="shift meta 7" />
  </action>
</keymap>
EOF
  done
}

jetbrains

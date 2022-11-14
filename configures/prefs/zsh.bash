#!/bin/bash

set -e
sudo -v

dir=~/.zsh

curl -o $dir/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash &>/dev/null
curl -o $dir/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh &>/dev/null

config="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/zsh-config"
cp "$config/aliases" $dir/.aliases >/dev/null
cp "$config/exports" $dir/.exports >/dev/null
cp "$config/zsh_config" $dir/.zsh_config >/dev/null
cp "$config/p10k.zsh" $dir/.p10k.zsh >/dev/null
cp "$config/zshrc" $dir/../.zshrc >/dev/null

# Mac Setup

<img src="https://i.imgur.com/PDMyduz.png" alt="Screenshot of my shell prompt" style="zoom:50%;" />

## Table of Contents

1. [What it does](#What-it-does)
2. [Installation](#Installation)
3. [What it installs](#What-it-installs)

## What it does

Macsetup simply installs and configures apps, dev tools and more.

## Installation

**Warning:** The macsetup script overrides existing .dotfiles in $HOME. If you want to give this script a try, you should first fork this repo, review the code and remove lines you don't want or need. Use at your own risk!

### Using Git and the setup script

You can clone the repo wherever you want. The setup script will install and configure your Mac. It will copy the dotfiles into $HOME.

```bash
git clone https://github.com/Cybertron1/macsetup.git
cd macsetup
chmod +x setup
./setup
```

### Git-free install

```bash
bash <(curl -s https://raw.githubusercontent.com/Cybertron1/macsetup/private/install)
```

## What it installs

### Dev Tools

- Xcode dev tools - needed for anything else
- [Homebrew](https://brew.sh) - package manager
- [Jabba](https://github.com/shyiko/jabba) - java version manager
- [nvm](https://github.com/nvm-sh/nvm) - node version manager
- [rvm](https://rvm.io) - ruby version manager

#### zsh

- [zsh](https://github.com/zsh-users/zsh) - Z Shell latest version
- [oh-my-zsh](https://ohmyz.sh) - zsh config manager
- [powerlevel10k](https://github.com/romkatv/powerlevel10k) - best zsh terminal theme

### Brew formulae

- [mas](https://github.com/mas-cli/mas) - to install AppStore apps
- [git](https://github.com/git/git) - latest version of git
- [vim](https://github.com/vim/vim) - latest version of vim

### Ruby gems

- [xcode-install](https://github.com/xcpretty/xcode-install) - Xcode version manager
- [fastlane](https://fastlane.tools) - iOS automation (with enabled auto completion)

### Apps

MacSetup tries to install as many apps as possible with [brew](https://github.com/Homebrew/brew). This allows to easily install and uninstall apps (unlike what stock Mac allows).

If the app is not available on brew, it needs to be downloaded via the AppStore. This is accomplished with the [mas](https://github.com/mas-cli/mas) brew formula which interacts directly with the AppStore. Unfortunately the login into the Store needs to be done manually.

#### brew cask

- [iTerm2](https://iterm2.com)
- [IntelliJ IDEA](https://www.jetbrains.com/de-de/idea/)
- [WebStorm](https://www.jetbrains.com/de-de/webstorm/)
- [RubyMine](https://www.jetbrains.com/de-de/ruby/)
- [SourceTree](https://www.sourcetreeapp.com)
- [1 Password](https://1password.com)
- [Alfred](https://www.alfredapp.com)
- [HyperSwitch](https://bahoom.com/hyperswitch) - looking for an alternative because it isn't really updated anymore 
- [Postman](https://www.postman.com)
- [VS Code](https://code.visualstudio.com)
- [Dropbox](https://www.dropbox.com/)
- [Spotify](https://www.spotify.com/)
- [App Cleaner](https://nektony.com/mac-app-cleaner) - to uninstall all files of apps (not really needed when brew cask is used)
- [Adobe Creative Cloud](https://www.adobe.com/ch_de/creativecloud.html)
- [Typora](https://typora.io) - most amazing Markdown editor
- [Whatsapp](https://www.whatsapp.com/) - bye bye privacy 🥳
- [Sonos](https://www.sonos.com/home)

#### AppStore using mas

- [Magnet](https://magnet.crowdcafe.com)
- [Final Cut Pro X](https://www.apple.com/de/final-cut-pro/)
- [Apple Configurator 2](https://support.apple.com/de-ch/apple-configurator)

#### xcode-install (xcversion)

- latest stable Xcode version

## Thanks to

* [Michael Jackson](https://mjackson.me) - https://github.com/mjackson/dotfiles
* [Mathias Bynens](https://mathiasbynens.be) - https://github.com/mathiasbynens/dotfiles

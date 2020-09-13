# Mac Setup

<img src="https://i.imgur.com/PDMyduz.png" alt="Screenshot of my shell prompt" style="zoom:50%;" />

## Installation

**Warning:** The macsetup script overrides existing .dotfiles in $HOME. If you want to give this script a try, you should first fork this repo, review the code and remove lines you don't want or need. Use at your own risk!

### Using Git and the setup script

```bash
git clone https://github.com/Cybertron1/macsetup.git && cd macsetup && chmod +x setup && ./setup
```



install: bash <(curl -s https://raw.githubusercontent.com/Cybertron1/macsetup/master/install)

remove: bash <(curl -s https://raw.githubusercontent.com/Cybertron1/macsetup/master/rollback/delete-all)

## Thanks to

* [Michael Jackson](https://mjackson.me) - https://github.com/mjackson/dotfiles
* [Mathias Bynens](https://mathiasbynens.be) - https://github.com/mathiasbynens/dotfiles
ZSH_THEME=powerlevel10k/powerlevel10k

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/.p10k.zsh
source ~/.zsh/.exports
source $ZSH/oh-my-zsh.sh
source ~/.zsh/.aliases

plugins=(git)
fpath=(/usr/local/share/zsh-completions $fpath)

[ -s "/Users/miki/.jabba/jabba.sh" ] && source "/Users/miki/.jabba/jabba.sh"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
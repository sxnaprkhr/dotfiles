# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to my oh-my-zsh-configuration.
export ZSH="/Users/sxnaprkhr/.oh-my-zsh"

# zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# zsh plugins
plugins=(git npm node extract z zsh-autosuggestions)

# include z
. ~/z.sh

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

# Path to firefox
export PATH=/opt/firefox/firefox:$PATH

# This loads nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/omer/.zsh/completions:"* ]]; then export FPATH="/home/omer/.zsh/completions:$FPATH"; fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
# USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
# HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
# if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#   source /usr/share/zsh/manjaro-zsh-config
# fi
# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi

alias eza="eza --icons=auto"
alias ls="eza"
alias ll="eza -la"
alias cls="clear"
alias cat="bat"
alias rc="./scripts/run_compose.sh"
alias dc="docker-compose down --remove-orphans"
alias nsd="npm run start:docker"
alias ns="npm run start"
alias docker_deep_clean="sudo rm -rf /var/lib/docker"

source '/usr/share/zsh-antidote/antidote.zsh'
antidote load

source /usr/share/nvm/init-nvm.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

neofetch
# pokemonshow
. "/home/omer/.deno/env"
export PATH=$PATH:/home/omer/.spicetify

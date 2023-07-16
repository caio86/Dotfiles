# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

typeset -A ZI
ZI[HOME_DIR]="${home}./local/share/zi"

source <(curl -sL init.zshell.dev); zzinit

zi ice --depth 1; light romkatv/powerlevel10k
zi light zsh-users/zsh-completions
zi light zsh-users/zsh-autosuggestions
zi light zsh-users/zsh-syntax-highlighting
zi light ohmyzsh/ohmyzsh

zi wait lucid for \
	OMZP::git \
	OMZP::sudo \
	OMZP::kubectl \
	OMZP::kubectx \
	OMZP::rust \
	OMZP::command-not-found

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

setopt auto_cd

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

typeset -A ZI
ZI[HOME_DIR]="$HOME/.local/share/zi"

source <(curl -sL init.zshell.dev); zzinit

zi light romkatv/powerlevel10k
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

setopt auto_cd

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

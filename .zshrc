# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

autoload -Uz compinit && compinit

# zinit

## create directory

typeset -A ZI
ZI[HOME_DIR]="${XDG_DATA_HOME:-${HOME}/.local/share}/zi"
ZI[BIN_DIR]="${ZI[HOME_DIR]}/bin"
command mkdir -p "$ZI[BIN_DIR]"

## Clone repo
compaudit | xargs chown -R "$(whoami)" "$ZI[HOME_DIR]"
compaudit | xargs chmod -R go-w "$ZI[HOME_DIR]"
if [[ -z $(ls -A "$ZI[BIN_DIR]") ]]; then
  command git clone https://github.com/z-shell/zi.git "$ZI[BIN_DIR]"
fi

## Load ZI

source "$ZI[BIN_DIR]/zi.zsh"

autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

# source <(curl -sL init.zshell.dev); zzinit

zi ice as"command" from"gh-r" \
  atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
  atpull"%atclone" \
  src"init.zsh"
zi light starship/starship
# zi light romkatv/powerlevel10k
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
	OMZP::command-not-found \
  OMZP::git-auto-fetch \

source "$HOME/.profile"

setopt auto_cd

eval $(keychain --eval --quiet)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
if command -v rtx &> /dev/null; then
	eval "$(rtx activate zsh)"
fi
if command -v zoxide &> /dev/null; then
	eval "$(zoxide init zsh)"
fi

eval "$(starship init zsh)"


# .bashrc
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source global definitions
if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi


# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.zshrc.d ]; then
	for rc in ~/.zshrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

#neofetch alternator
		neofetch --kitty ~/Pictures/2bneo.jpg

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
. "$HOME/.cargo/env"

PS1="$(tput setaf 14) yoru$(tput setaf 199)@$(tput setaf 14)\h $(tput setaf 199)\W $(tput setaf 14)>$(tput setaf 199)>$(tput setaf 14)>$(tput setaf 199) ";
export PS1;

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



export EDITOR='lvim'
export VISUAL='lvim'

eval "$(thefuck --alias fuck)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"


eval $(thefuck --alias)

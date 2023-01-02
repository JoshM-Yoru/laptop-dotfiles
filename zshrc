
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

export DENO_INSTALL="/home/Yoru/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export DB_URL=jdbc:postgresql://localhost:5432
export DB_USERNAME=postgres
export DB_PASSWORD=password

export TWILIOSID=ACda7217e0f73a2f2e82353b2f41a30d24
export TWILIONUMBER=+16086022881
export TWILIOAUTHTOKEN=ea4081ea7082b2f6bfedf23578d08266

alias ec2="kitty +kitten ssh -i \"jm-ec2.pem\" ec2-user@ec2-54-92-221-53.compute-1.amazonaws.com"

# export JVM_ARGS="-javaagent:~/Programming/Java/Lombok/lombok.jar"

eval "$(thefuck --alias fuck)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

if (( $+commands[luarocks] )); then
    eval `luarocks path --bin`
fi


eval $(thefuck --alias)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# nitrogen --restore

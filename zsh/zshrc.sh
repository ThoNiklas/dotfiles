# Vars
	HISTFILE=~/.zsh_history
	SAVEHIST=1000 
	git config --global push.default current
	export ZSH=$HOME/.zsh/plugins/oh-my-zsh
	ZSH_THEME="pygmalion"

# Settings
	export VISUAL=vim

# Completions
# These are all the plugin options available: https://github.com/robbyrussell/oh-my-zsh/tree/291e96dcd034750fbe7473482508c08833b168e3/plugins
plugins=(
	git
	osx
	docker
	vi-mode
)

source $HOME/.zsh/plugins/oh-my-zsh/oh-my-zsh.sh
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

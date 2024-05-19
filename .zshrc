# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
fastfetch -c examples/8.jsonc
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/home/pective/.local/bin/:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

alias vim="nvim"
alias pman="doas pacman"
alias cat='bat'
alias ls="eza -al --color=auto --group-directories-first --icons"
alias poweroff="doas poweroff"
alias reboot="doas reboot"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias cp='cp -i'
alias mv='mv -i'
alias rm='trash -v'
alias mkdir='mkdir -p'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(zoxide init zsh)"

# fnm
export PATH="/home/pective/.local/share/fnm:$PATH"
eval "`fnm env`"

lazyg() {
	git add .
	git commit -m "$1"
	git push
}

# Go to directory after mkdir
mkdirg() {
	mkdir -p "$1"
	cd "$1"
}


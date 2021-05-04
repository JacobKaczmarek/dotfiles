neofetch

export ZSH="/Users/jacob/.oh-my-zsh"

# PowerLevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  pip
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias pr="cd ~/Documents/Projects"
alias n="nnn"

# Configs

eval "$(jump shell zsh)"

# >>> conda initialize >>>
__conda_setup="$('/Users/jacob/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jacob/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jacob/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jacob/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/dotfiles/p10k.zsh.
[[ ! -f ~/dotfiles/p10k.zsh ]] || source ~/dotfiles/p10k.zsh

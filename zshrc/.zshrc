# Add bash prompt options
if [ -f ~/.promptrc ]; then
    source ~/.promptrc
fi

export ZSH="/Users/carlosramos/.oh-my-zsh"

#for this you need to install zsh-autosuggestions --> https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#for this you need to install --> https://github.com/zsh-users/zsh-history-substring-search
#Oh my zsh --> https://github.com/robbyrussell/oh-my-zsh
source $ZSH/oh-my-zsh.sh

historial () {
    history | grep $1
}

# Add bash autocompletion.
if [ -f ~/.autocompleterc ]; then
    source ~/.autocompleterc
fi

# Add bash autocompletion.
if [ -f ~/.stupidrc ]; then
    source ~/.stupidrc
fi

# Add bash aliases.
if [ -f ~/.aliasrc ]; then
    source ~/.aliasrc
fi

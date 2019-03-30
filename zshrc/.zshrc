ZSH_THEME="powerlevel9k/powerlevel9k"


POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    custom_emojisa custom_name dir vcs newline custom_emojisb status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_CUSTOM_EMOJISA="echo -n 🍕 🍺 🍔"
POWERLEVEL9K_CUSTOM_EMOJISA_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_EMOJISA_BACKGROUND="orangered1"

POWERLEVEL9K_CUSTOM_EMOJISB="echo 😎"
POWERLEVEL9K_CUSTOM_EMOJISB_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_EMOJISB_BACKGROUND="orangered1"

POWERLEVEL9K_CUSTOM_NAME="echo -n 🔥 Carlos Ramos 🔥"
POWERLEVEL9K_CUSTOM_NAME_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_NAME_BACKGROUND="cyan"


plugins=(
    git
    zsh-syntax-highlighting
    dirhistory
    brewS
    dircycle
    gitfast
    git-extras
    jsontools
    node
    npm
    osx
    repo
    sudo
    urltools
    web-search
    dirpersist
    history-substring-search
    last-working-dir
    safe-paste
    yarn
    zsh-completions
    git
)
export ZSH="/Users/carlosramos/.oh-my-zsh"

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh

alias ls="colorls" 
alias lc='colorls -lA --sd'

command_not_found_handler () {
    local cmd
    lolcat >&2 <<EOF
 _________________________
< No existe el comando $1 >
 -------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\_
                ||----w||
                ||     ||

EOF
    return 127
}

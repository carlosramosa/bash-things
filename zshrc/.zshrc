#Initial message
fortune | cowsay -f stegosaurus

#My theme
ZSH_THEME="powerlevel9k/powerlevel9k"
#Use nerdfont
POWERLEVEL9K_MODE='nerdfont-complete'

#Now we go to customize the prompt
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

#All my plugins
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

#for this you need to install zsh-autosuggestions --> https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#Oh my zsh --> https://github.com/robbyrussell/oh-my-zsh
source $ZSH/oh-my-zsh.sh

#For this you need to install colorls --> https://github.com/athityakumar/colorls
alias ls="colorls" 
alias lc='colorls -lA --sd'

animations=( beavis.zen blowfish bong bud-frogs bunny cheese cower daemon default dragon
dragon-and-cow elephant elephant-in-snake eyes flaming-sheep ghostbusters
head-in hellokitty kiss kitty koala kosh lukae-koala meow milk moofasa moose
mutilated ren satanic sheep skeleton small sodomized stegosaurus stimpy
supermilker surgery telebears three-eyes turkey turtle tux udder vader
vader-koala www )

RANDOM=$$$(date +%s)
#For this you need to install cowsay
command_not_found_handler () {
    echo No existe el comando $1 | cowsay -f  ${animations[$RANDOM % ${#animations[@]} ]} | lolcat

    return 127
}

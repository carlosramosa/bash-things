#!/bin/bash

brew install zsh-syntax-highlighting
brew install history-substring-search
brew install zsh-completions
brew install fortune
brew install cowsay
brew install lolcat
brew install colorls
brew install terminal-notifier

cp ./zshrc/.zshrc /Users/$USER
cp ./scripts/.aliasrc /Users/$USER
cp ./scripts/.autocompleterc /Users/$USER
cp ./scripts/.promptrc /Users/$USER
cp ./scripts/.stupidrc /Users/$USER


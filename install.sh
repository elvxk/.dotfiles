#!/bin/bash

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RESET='\033[0m'

# line divider
width=$(tput cols)
line=$(printf "%0.s=" $(seq 1 $((width / 2))))

ascii="
           __      __  _____ __                   
      ____/ /___  / /_/ __(_) /__  _______________
     / __  / __ \/ __/ /_/ / / _ \/ ___/ ___/ ___/
   _/ /_/ / /_/ / /_/ __/ / /  __(__  |__  |__  ) 
  (_)__,_/\____/\__/_/ /_/_/\___/____/____/____/  
"

echo -e "${BLUE}$line${RESET}"
echo -e "${YELLOW}$ascii${RESET}"
echo -e "${BLUE}$line${RESET}"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install git-credential-oauth node oven-sh/bun/bun stow lazygit ripgrep fd xclip neovim gcc

echo -e "${BLUE}$line${RESET}"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo -e "${BLUE}$line${RESET}"

git credential-oauth configure
cd ~/.dotfiles/ && stow .

echo -e "${BLUE}$line${RESET}"

npm install -g neovim

echo -e "${BLUE}$line${RESET}"

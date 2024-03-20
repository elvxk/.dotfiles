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

ascii='        __   _           _       ____                   
       / /__(_)___ ___  (_)___ _/ __/___ __________ ___ 
      / //_/ / __ `__ \/ / __ `/ /_/ __ `/ ___/ __ `__ \
   _ / ,< / / / / / / / / /_/ / __/ /_/ / /  / / / / / /
  (_)_/|_/_/_/ /_/ /_/_/\__,_/_/  \__,_/_/  /_/ /_/ /_/ 
  '

echo -e "${BLUE}$line${RESET}"
echo -e "${YELLOW}$ascii${RESET}"
echo -e "${BLUE}$line${RESET}"
echo -e "${YELLOW}Check requirement${RESET}"

# Specify the path for symlinks
declare -A checking=(
	["Homebrew"]="brew command"
	["Git"]="git command"
	["Nodejs"]="node command"
	["npm"]="npm command"
	["npx"]="npx command"
	["Bun"]="bun command"
	["Stow"]="stow command"
	["Git Credential OAuth"]="git-credential-oauth command nv"
	["fd"]="fd command"
	["zsh"]="zsh command"
	["Neovim"]="nvim command nv"
	["Ripgrep"]="rg command nv"
	["Lazygit"]="lazygit command nv"
	["xclip"]="xclip command nv"
	["Tree Sitter cli"]="tree-sitter command nv"
	["Oh My Zsh"]="$HOME/.oh-my-zsh folder"
	["Built Essential"]="build-essential dpkg"
)

total_count=${#checking[@]}
installed_count=0

for named in "${!checking[@]}"; do
	cmd=(${checking[$named]})
	command="${cmd[0]}"
	type="${cmd[1]}"
	nover="${cmd[2]}"

	check="🍃"
	not="🍒"

	if [[ "$type" == "command" ]]; then
		if command -v $command &>/dev/null; then
			if [[ "$nover" == "nv" ]]; then
				echo -e "${GREEN}$check $named installed.${RESET}"
				((installed_count++))
			else
				echo -e "${GREEN}$check $named installed ${RESET}($($command --version))${GREEN}.${RESET}"
				((installed_count++))
			fi
		else
			echo -e "${RED}$not $named not installed.${RESET}"
		fi
	elif [[ "$type" == "folder" ]]; then
		if [ -d "$command" ]; then
			echo -e "${GREEN}$check $named installed at ${RESET}$command${GREEN}.${RESET}"
			((installed_count++))
		else
			echo -e "${RED}$not $named not installed.${RESET}"
		fi
	else
		if dpkg-query -W $command &>/dev/null; then
			echo -e "${GREEN}$check $named installed.${RESET}"
			((installed_count++))
		else
			echo -e "${RED}$not $named not installed.${RESET}"
		fi
	fi
done
echo -e "${BLUE}$line${RESET}"
if [[ $installed_count == $total_count ]]; then
	echo -e "${YELLOW}All done, ready to fly${RESET}"
else
	echo -e "${YELLOW}$installed_count/$total_count have been successfully vaccinated${RESET}"
fi
echo -e "${BLUE}$line${RESET}"

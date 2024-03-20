# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Aliases
alias sc=". ~/.zshrc"
alias vc="nvim ~/.zshrc"

alias v="nvim"
alias sv="sudo nvim"
alias g="git"
alias n="pnpm"

alias cdp="cd ~/Project/"
alias cdd="cd ~/.dotfiles/"

alias cnext="npx create-next-app@latest"
alias cra="pnpm create vite"
alias nrd="pnpm dev"
alias nrb="pnpm build"
alias nrp="pnpm preview"
alias nrs="pnpm start"

alias gs="git status"
alias gf="git fetch"
alias gaa="git add ."
alias ga="git add"
alias gb="git branch"
alias gco="git checkout"
alias gcl="git clone"
alias gpull="git pull"
alias gpush="git push -u origin"

alias gcp="git commit -m 'package:update package'"
alias gcm="git commit -m"
gmit()
{
  local choice
  local commit
  while true; do
    clear
    print "\e[32m󰜛 Choose commit type :\e[0m"
    print "  1. init      : New initial"
    print "  2. feat      : New feature"
    print "  3. fix       : Bug fix"
    print "  4. update    : General update"
    print "  5. refactor  : Code refactor"
    print "  6. docs      : Documentation update"
    print "  7. test      : Adding or updating tests"
    print "  8. perf      : Performance improvements"
    print "  9. remove    : Remove code"
    vared -p "Input : " choice
    print ""

    case $choice in
      1) choice="init"; break;;
      2) choice="feat"; break;;
      3) choice="fix"; break;;
      4) choice="update"; break;;
      5) choice="refactor"; break;;
      6) choice="docs"; break;;
      7) choice="test"; break;;
      8) choice="perf"; break;;
      9) choice="remove"; break;;
    esac
  done
  print "\e[32m󰜛 Input commit message \e[0m:"
  while true; do
    vared -p "  $choice:" commit
    if [[ -n $commit ]]; then
      break
    else
      print "\e[41m\e[30mPlease enter a message\e[0m"
    fi
  done

  git commit -m "$choice:$commit"
}

alias ch="/bin/bash ~/.dotfiles/check.sh"
alias bash="/bin/bash"
alias q="exit"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
cd

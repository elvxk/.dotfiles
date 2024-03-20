<h3 align="center">
  <samp>&gt; <b>ELVXK DOTFFILES</b></samp>
</h3>
<p align="center">
  <samp><br />「 elvxk personal <b>dotfiles</b> 」
    <br />This is the configuration for my personal daily use config.
    <br />
  </samp>
</p>

<div align="center">

![Neovim](https://img.shields.io/badge/NeoVim-%2358A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)

</div>
<br/>

## TO DO

### Terminal

- install [Kitty term](https://sw.kovidgoyal.net/kitty/)

  ```bash
  # Install
  curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

  # Create symlink to PATH
  sudo ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten /usr/bin/

  # Place the kitty.desktop file somewhere it can be found by the OS
  cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/

  # If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
  cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/

  # Update the paths to the kitty and its icon in the kitty.desktop file(s)
  sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
  sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
  ```

### Required

- install [Homebrew](https://brew.sh/)

  ```bash
  # Install Homebrew's dependencies if you have sudo access:
  sudo apt-get install build-essential

  # Install gcc
  brew install gcc
  ```

- install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

  ```bash
  # install zsh
  brew install zsh

  # make default shell
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s $(which zsh)
  ```

- update [git](https://git-scm.com/) ( add PPA )
  ```bash
  sudo add-apt-repository ppa:git-core/ppa
  ```

### Configure

- install [Git Credential Oauth](https://github.com/hickford/git-credential-oauth)

  ```bash
  # install gco
  brew install git-credential-oauth

  # configure gco
  git credential-oauth configure
  ```

- install [Node.js](https://nodejs.org/en/download/package-manager)
  ```bash
  brew install node
  ```
- install [Bun](https://bun.sh/)
  ```bash
  brew install oven-sh/bun/bun
  ```
- install [Stow](https://www.gnu.org/software/stow/)
  ```bash
  brew install stow
  ```
- install [Neovim](https://neovim.io/)

  ```bash
  # Dependencies
  brew install lazygit ripgrep fd xclip

  # Install neovim
  brew install neovim
  ```

## Installation

assume you have installed Homebrew, build-essential, and zsh (Required)

```bash
cd ~/.dotfiles

intsall.sh
#or if u're in zsh
/bin/bash install.sh
```

---

<div align='center'>
<b>ELVXK</b>
<br/>
<br/>
<a href="https://github.com/elvxk" target="_blank"><samp>Github</samp></a>
&nbsp;&middot;&nbsp;
<a href="https://github.com/elvxk" target="_blank"><samp>Instagram</samp> </a>
&nbsp;&middot;&nbsp;
<a href="https://www.linkedin.com/in/elvxk/" target="_blank"><samp>Linkedin</samp></a>
&nbsp;&middot;&nbsp;
<a href="https://dribbble.com/elvxk" target="_blank"><samp>Dribbble</samp></a>
<br/>
<a href="https://sandri.my.id" target="_blank"><samp>www.sandri.my.id</samp></a>
</div>

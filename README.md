# jaedle`s zsh-config

This is my zsh configuration inclduing:

- a guide for manual setup
- a script for automatic setup

## Prerequisites

1. You are running a mac
2. You have installed [homebrew](https://brew.sh/index_de)

## Setup zsh including plugins

## Automatic installation

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/jaedle/zsh-config/master/install.sh)"
```

### install zsh and zsh-completions

```sh
brew install zsh zsh-completions
```

### install oh-my-zsh

```sh
# do some string replacement for:
# do not start zsh yet and do net set zsh as default shell yet
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed -E 's/^[[:space:]]+chsh/#chsh/g' | sed -E 's/^[[:space:]]+env zsh/#env zsh/g')"
```

### install powerlevel9k themes

```sh
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

### install zsh-autosuggestions

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

### install zsh-syntax-highlighting

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
```

### install vscode-plugin

```sh
git clone https://github.com/valentinocossar/vscode.git ~/.zsh/vscode
```

## Setup terminal inlcuding fonts

### install iterm2

```sh
brew cask install iterm2
```

### install nerd fonts

```sh
brew tap caskroom/fonts &&  brew cask install font-hack-nerd-font
```

### get .zshrc in place and set permissions

```sh
mv ~/.zshrc ~/.zshrc.bak && \
cp zshrc ~/.zshrc && \
chmod 0700 ~/.zshrc
```

### Make zsh your default shell

```sh
chsh -s /bin/zsh
```

### (optinal) setup docker auto completion

```sh
mkdir -p ~/.zsh/completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion ~/.zsh/completion/_docker
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion ~/.zsh/completion/_docker-machine
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion ~/.zsh/completion/_docker-compose
```

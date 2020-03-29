#!/usr/bin/env sh
set -e

remove_current_installation() {
    rm -rf ~/.zsh
}

install_zsh_with_brew() {
    brew install zsh zsh-completions
    if brew ls --versions zsh > /dev/null; then
        echo 'zsh already installed'
    else
        brew install zsh
    fi

    if brew ls --versions zsh-completions > /dev/null; then
        echo 'zsh-completions already installed'
    else
        brew install zsh-completions
    fi
}

install_terminal() {
    if brew cask ls --versions iterm2 > /dev/null; then
        echo 'iTerm2 already installed'
    else
        brew cask install iterm2
    fi
}

install_fonts() {
    brew tap homebrew/cask-fonts
    if brew cask ls --versions font-hack-nerd-font > /dev/null; then
        echo 'nerd fonts already installed'
    else
        brew cask install font-hack-nerd-font
    fi
}

backup_affected_configuration_files() {
    if [ -f ~/.zshrc ]; then
        mv ~/.zshrc ~/.zshrc.bak
    fi

    if [ -f ~/.profile ]; then
        mv ~/.profile ~/.profile.bak
    fi

    if [ -f ~/.zsh_plugins.txt ]; then
        mv ~/.zsh_plugins.txt ~/.zsh_plugins.txt.bak
    fi
}

setup_zsh_configuration() {
    backup_affected_configuration_files
    path_of_repository="$( cd "$(dirname "$0")" ; pwd -P )"

    cp "$path_of_repository/.zshrc" ~/.zshrc
    chmod 0700 ~/.zshrc

    cp "$path_of_repository/.profile" ~/.profile
    chmod 0700 ~/.profile

    cp "$path_of_repository/.zsh_plugins.txt" ~/.zsh_plugins.txt
    chmod 0600 ~/.zsh_plugins.txt
}

install_git_duet() {
    brew tap git-duet/tap
    if brew ls --versions git-duet > /dev/null; then
        echo 'git-duet already installed'
    else
        brew install git-duet
    fi
}

setup_git_aliases() {
    git config --global alias.br branch
    git config --global alias.co checkout
    git config --global alias.ci commit
    git config --global alias.st status
}

install_antibody() {
    if brew ls --versions getantibody/tap/antibody > /dev/null; then
        echo 'getantibody/tap/antibody already installed'
    else
        brew install getantibody/tap/antibody
    fi
}

install_fzf() {
    if brew ls --versions fzf > /dev/null; then
        echo 'fzf already installed'
    else
        brew install fzf
    fi
}

install_thefuck() {
    if brew ls --versions thefuck > /dev/null; then
        echo 'thefuck already installed'
    else
        brew install thefuck
    fi
}

remove_current_installation
install_zsh_with_brew
install_antibody
install_fonts
install_terminal
install_git_duet
install_fzf
install_thefuck

setup_git_aliases
setup_zsh_configuration

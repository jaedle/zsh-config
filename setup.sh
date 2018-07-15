#!/usr/bin/env sh
set -e

remove_current_installation() {
    rm -rf ~/.zsh
    rm -rf ~/.oh-my-zsh
}

install_zsh_with_brew() {
    brew install zsh zsh-completions
    if brew ls --versions zsh > /dev/null; then
        echo -n 'zsh already installed'
    else
        brew install zsh
    fi

    if brew ls --versions zsh-completions > /dev/null; then
        echo -n 'zsh-completions already installed'
    else
        brew install zsh-completions
    fi
}

install_oh_my_zsh() {
    # disable auto change to csh and start of csh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed -E 's/^[[:space:]]+chsh/#chsh/g' | sed -E 's/^[[:space:]]+env zsh/#env zsh/g')" 
}

install_zsh_plugins() {
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    git clone https://github.com/valentinocossar/vscode.git ~/.zsh/vscode
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
    git clone https://github.com/lukechilds/zsh-nvm.git ~/.zsh/.zsh-nvm/
}

install_zsh_themes() {
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
}

install_terminal() {
    if brew cask ls --versions iterm2 > /dev/null; then
        echo -n 'iTerm2 already installed'
    else
        brew cask install iterm2
    fi
}

install_fonts() {
    brew tap caskroom/fonts
    if brew cask ls --versions font-hack-nerd-font > /dev/null; then
        echo -n 'nerd fonts already installed'
    else
        brew cask install font-hack-nerd-font
    fi
}

backup_previous_zsh_configuration() {
    if [ ! -f /tmp/foo.txt ]; then
        mv ~/.zshrc ~/.zshrc.bak
    fi
}

setup_zsh_configuration() {
    backup_previous_zsh_configuration
    path_of_repository="$( cd "$(dirname "$0")" ; pwd -P )"
    cp "$path_of_repository/zshrc" ~/.zshrc
    chmod 0700 ~/.zshrc
}

setup_docker_autocompletion() {
    mkdir -p ~/.zsh/completion
    ln -s /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion ~/.zsh/completion/_docker
    ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion ~/.zsh/completion/_docker-machine
    ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion ~/.zsh/completion/_docker-compose

}

install_git_duet() {
    brew tap git-duet/tap
     if brew ls --versions git-duet > /dev/null; then
        echo -n 'git-duet already installed'
    else
        brew install git-duet
    fi
}

change_shell() {
    chsh -s /bin/zsh
}

setup_git_aliases() {
    git config --global alias.br branch
    git config --global alias.co checkout
    git config --global alias.ci commit
    git config --global alias.st status
}

remove_current_installation
install_zsh_with_brew
install_oh_my_zsh
install_zsh_plugins
install_zsh_themes
install_fonts
install_terminal
install_git_duet


setup_git_aliases
setup_zsh_configuration
setup_docker_autocompletion

change_shell

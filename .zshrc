source "$HOME/.profile"

export NVM_LAZY_LOAD=true

fpath=(${HOME}/.zsh/completion ${fpath})
autoload -Uz compinit
compinit

ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt


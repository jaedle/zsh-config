export ZSH=/Users/jodel/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"

source ~/.zsh/vscode/vscode.plugin.zsh

plugins=(
  brew
  chucknorris
  common-aliases
  docker
  dircycle
  dirhistory
  encode64
  git
  git-extras
  gradle
  history
  jsontools
  mvn
  npm
  osx
  web-search
  vscode
  yarn
  zsh-completions
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

export EDITOR='vim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# added by travis gem
[ -f /Users/jodel/.travis/travis.sh ] && source /Users/jodel/.travis/travis.sh

export ZSH=~/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"

source ~/.zsh/vscode/vscode.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH/oh-my-zsh.sh

plugins=(
  brew
  common-aliases
  git
  git-extras
  golang
  gradle
  mvn
  npm
  vscode
  yarn
  zsh-autosuggestions
  zsh-completions
)

# enable zsh completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

export EDITOR='vim'
[ -f ~/go/bin ] && export PATH=~/go/bin:$PATH
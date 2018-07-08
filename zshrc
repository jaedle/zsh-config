export ZSH=~/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-fontconfig'

source ~/.zsh/vscode/vscode.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"

POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="white"

#POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
#POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
#POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
#POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"

POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="clear"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="clear"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="clear"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="yellow"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="green"

POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator load time)

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

source $ZSH/oh-my-zsh.sh


# enable zsh completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

export EDITOR='vim'
[ -f ~/go/bin ] && export PATH=~/go/bin:$PATH

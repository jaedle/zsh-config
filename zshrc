load_external_plugins() {
  source "$HOME/.zsh/vscode/vscode.plugin.zsh"
  source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
  source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  source "$HOME/.zsh/.zsh-nvm/zsh-nvm.plugin.zsh"
}

set_plugins() {
    plugins=(
      brew
      common-aliases
      git
      git-extras
      gradle
      npm
      vscode
      zsh-autosuggestions
      zsh-completions
  )
}

set_style() {
  ZSH_THEME="powerlevel9k/powerlevel9k"
  POWERLEVEL9K_MODE='awesome-fontconfig'

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
}

load_oh_my_zsh() {
  export ZSH="$HOME/.oh-my-zsh"
  source $ZSH/oh-my-zsh.sh
}

setup_completion() {
  fpath=(${HOME}/.zsh/completion ${fpath})
  autoload -Uz compinit && compinit -i
}

load_global_profile() {
  source "$HOME/.profile"
}

load_external_plugins
set_plugins
set_style
load_oh_my_zsh
setup_completion
load_global_profile

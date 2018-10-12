source "$HOME/.profile"

alias git='LANG=en_US git'
export NVM_LAZY_LOAD=true

ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
source <(antibody init)
fpath=(${HOME}/.zsh/completion ${fpath})
antibody bundle < ~/.zsh_plugins.txt
docker_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh/plugins/docker"
docker_compose_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh/plugins/docker-compose"
docker_machine_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh/plugins/docker-docmachine"
fpath=(${docker_completion_path} ${docker_compose_completion_path} ${docker_machine_completion_path} ${fpath})
autoload -Uz compinit
compinit
unset docker_completion_path
unset docker_compose_completion_path
unset docker_machine_completion_path

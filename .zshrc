source "$HOME/.profile"

alias git='LANG=en_US git'
export NVM_LAZY_LOAD=true

ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
source <(antibody init)
docker_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-docker-SLASH-cli/contrib/completion/zsh"
docker_compose_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-docker-SLASH-compose/contrib/completion/zsh"
docker_machine_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-docker-SLASH-machine/contrib/completion/zsh"
fpath=(${docker_completion_path} ${docker_compose_completion_path} ${docker_machine_completion_path} ${fpath})
go_task_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-go-task-SLASH-task/completion/zsh"
fpath=(${go_task_completion_path} ${fpath})
antibody bundle < ~/.zsh_plugins.txt
autoload -Uz compinit
compinit

unset docker_completion_path
unset docker_compose_completion_path
unset docker_machine_completion_path
unset go_task_completion_path

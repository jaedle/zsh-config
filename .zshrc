source "$HOME/.profile"

alias git='LANG=en_US git'
export NVM_LAZY_LOAD=true

ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

docker_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-docker-SLASH-cli/contrib/completion/zsh"
docker_compose_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-docker-SLASH-compose/contrib/completion/zsh"
docker_machine_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-docker-SLASH-machine/contrib/completion/zsh"
fpath=(${docker_completion_path} ${docker_compose_completion_path} ${docker_machine_completion_path} ${fpath})

go_task_completion_path="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-go-task-SLASH-task/completion/zsh"
fpath=(${go_task_completion_path} ${fpath})

autoload -Uz compinit
compinit

unset docker_completion_path
unset docker_compose_completion_path
unset docker_machine_completion_path
unset go_task_completion_path

alias debdocker="docker container run --rm -it debian bash"
alias alpdocker="docker container run --rm -it alpine sh"
alias tw="task world"

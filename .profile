export GIT_DUET_GLOBAL=1
export GIT_DUET_CO_AUTHORED_BY=1
export EDITOR='vim'
export GOPATH=~/go
[ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh" || true
[ -d "$HOME/go/bin" ] && export PATH="$HOME/go/bin:$PATH" || true

source ./aliases
source ./prompt
source ./history
source ./functions/load_fn

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="$HOME/.local/bin:$PATH"
export PATH=${HOME}/.cargo/bin:${PATH}

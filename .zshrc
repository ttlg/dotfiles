export DOTPATH=${HOME}/dotfiles

source ${DOTPATH}/aliases
source ${DOTPATH}/prompt
source ${DOTPATH}/history
source ${DOTPATH}/functions/load_fn

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="$HOME/.local/bin:$PATH"
export PATH=${HOME}/.cargo/bin:${PATH}

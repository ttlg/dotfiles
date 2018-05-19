################################
# Basic
################################
source ./aliases
source ./prompt
source ./history

################################
#### source
export DOTPATH=~/
export PATH="${DOTPATH}/bin:${PATH}"
for f ($DOTPATH/.*/*.zsh) source "${f}"

# weather
alias wx="curl -4 wttr.in/Tokyo"
if [ "$(uname)" = 'Linux' ]; then
	alias pbcopy='xsel --clipboard --input'
	alias pbpaste='xsel --clipboard --output'
	alias open='xdg-open 2>/dev/null'
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="$HOME/.local/bin:$PATH"

export PATH=${HOME}/.cargo/bin:${PATH}

function tr () {
  echo $1;
  tsc $1;
  export BASE=`echo $1 | rev | cut -c 3- | rev`
  node ${BASE}js
  rm ${BASE}js
}

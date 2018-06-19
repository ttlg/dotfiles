# Android SDK
export PATH="$HOME/Library/Android/sdk/platform-tools/:$PATH"
export PATH="$HOME/Library/Android/sdk/tools/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/tools/:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
export PATH=${HOME}/.cargo/bin:${PATH}
export PATH=/usr/local/bin/:${PATH}

export PATH="$PATH:$HOME/.nodebrew/current/bin"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# pyenv
if [ -e $HOME/.pyenv ];then
	export PYENV_ROOT="$HOME/.pyenv"
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi


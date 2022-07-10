export PATH=/usr/local/bin/:${PATH}
export PATH="$HOME/.local/bin:$PATH"

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Android SDK
export PATH="$HOME/Library/Android/sdk/platform-tools/:$PATH"
export PATH="$HOME/Library/Android/sdk/tools/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/tools/:$PATH"

# Flutter
export PATH="$HOME/Library/flutter/bin:$PATH"
export FLUTTER_FRAMEWORK_DIR="$HOME/Library/flutter/bin/cache/artifacts/engine/ios"

# Rust
export PATH=${HOME}/.cargo/bin:${PATH}
export PATH="$HOME/.cargo/env:$PATH"


# Nodebrew
export PATH="$PATH:$HOME/.nodebrew/current/bin"

# VSCode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Flutter
export PATH="$PATH":"$HOME/Library/flutter/.pub-cache/bin"

# Solana
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"

# pyenv
if [ -e $HOME/.pyenv ];then
	export PYENV_ROOT="$HOME/.pyenv"
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi


export GOPATH=$HOME/Library/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

eval "$(rbenv init -)" 

PATH="$PATH":"$HOME/.pub-cache/bin"



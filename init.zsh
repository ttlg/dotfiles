autoload -Uz add-zsh-hock
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
export SELECT_METHOD=fzy
export DOTPATH=${HOME}/dotfiles

source ${DOTPATH}/InPlaceConfig/link_config
source ${DOTPATH}/aliases
source ${DOTPATH}/prompt
source ${DOTPATH}/history
source ${DOTPATH}/functions/load_functions.sh
source ${DOTPATH}/pathes

if [ -e ${DOTPATH}/private/.zshrc ];then
    source ${DOTPATH}/private/.zshrc
fi


if [ -e ${DOTPATH}/zplug ];then
	source ${DOTPATH}/zplug/init.zsh
	zplug 'zsh-users/zsh-autosuggestions'
	zplug 'zsh-users/zsh-completions'
	zplug 'zsh-users/zsh-syntax-highlighting'
	zplug "b4b4r07/enhancd", use:init.sh

	if ! zplug check --verbose; then
	  printf 'Install? [y/N]: '
	  if read -q; then
		echo; zplug install
	  fi
	fi

	zplug load --verbose
fi

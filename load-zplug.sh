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

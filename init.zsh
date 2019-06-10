autoload -Uz add-zsh-hook
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
autoload -U promptinit; promptinit

prompt pure

export SELECT_METHOD=fzy
export DOTPATH=${HOME}/dotfiles

for f (${DOTPATH}/functions/*.zsh) source "${f}"
for f (${DOTPATH}/shell-config/*.sh) source "${f}"
sh ${DOTPATH}/in-place-config/link_config.sh
source ${DOTPATH}/load-zplug.sh

if [ -e ${DOTPATH}/private/.zshrc ];then
    source ${DOTPATH}/private/.zshrc
fi


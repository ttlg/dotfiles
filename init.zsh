autoload -Uz add-zsh-hock
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
export SELECT_METHOD=fzy
export DOTPATH=${HOME}/dotfiles

for f (${DOTPATH}/functions/*.zsh) source "${f}"
for f (${DOTPATH}/ShellConfig/*.sh) source "${f}"
sh ${DOTPATH}/InPlaceConfig/link_config.sh
source ${DOTPATH}/load-zplug.sh

if [ -e ${DOTPATH}/private/.zshrc ];then
    source ${DOTPATH}/private/.zshrc
fi

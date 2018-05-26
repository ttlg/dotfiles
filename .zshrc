autoload -Uz add-zsh-hock
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook

export DOTPATH=${HOME}/dotfiles
source ${DOTPATH}/config/link_config
source ${DOTPATH}/aliases
source ${DOTPATH}/prompt
source ${DOTPATH}/history
source ${DOTPATH}/functions/load_fn
source ${DOTPATH}/pathes

if [ -e ${DOTPATH}/private/.zshrc ];then
    source ${DOTPATH}/private/.zshrc
fi

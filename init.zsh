autoload -Uz add-zsh-hook
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit


export SELECT_METHOD=fzy
export DOTPATH=${HOME}/dotfiles

source ${DOTPATH}/load-antigen.sh

if [ -e ${DOTPATH}/private/.zshrc ];then
    source ${DOTPATH}/private/.zshrc
fi

for f (${DOTPATH}/functions/*.zsh) source "${f}"
for f (${DOTPATH}/shell-config/*.sh) source "${f}"
sh ${DOTPATH}/in-place-config/link_config.sh

prompt pure

# CTRL-y to exec command
bindkey '^y' autosuggest-execute



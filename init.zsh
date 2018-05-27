autoload -Uz add-zsh-hook
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook

export SELECT_METHOD=fzy
export DOTPATH=${HOME}/dotfiles

for f (${DOTPATH}/functions/*.zsh) source "${f}"
for f (${DOTPATH}/shell-config/*.sh) source "${f}"
sh ${DOTPATH}/in-place-config/link_config.sh
source ${DOTPATH}/load-zplug.sh

if [ -e ${DOTPATH}/private/.zshrc ];then
    source ${DOTPATH}/private/.zshrc
fi

add-zsh-hook preexec my_preexec
add-zsh-hook precmd my_precmd
my_preexec () {
  export _EXECUTING_CMD=${1}
}
my_precmd () {
  if [ ${?} = 127 -a -n "${_EXECUTING_CMD}" ];then
    local pre_wd=`pwd`
    cd ${_EXECUTING_CMD} # enhancd cd
    if [ $? -eq 0 -a ${pre_wd} != `pwd` ]; then
      echo '\e[32msuccess change directory\e[m: '`pwd`
      ls
    fi
    export _EXECUTING_CMD=''
  fi
}

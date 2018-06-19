alias reload='exec $SHELL -l'
alias path='echo $PATH | tr -s ":" "\n"'
alias ks="ls"
alias sl="ls"
alias c="cd"
alias history="history -n -r 1"
alias hist="history -n -r 1"
alias l="ls"
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"
alias mv="mv -i"
alias cp="cp -i"
alias t="tmux"
alias tm="tmux"
alias tmu="tmux"
alias v="vim"
alias vi="vim"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias dt="cd ~/Desktop"
alias dl="cd ~/Downloads"

##### Advanced
alias wx="curl -4 wttr.in/Tokyo"
alias edithosts="sudo vi /private/etc/hosts"
alias dev="yarn dev"
alias gen="npm run generate"
alias yanr="yarn"
alias ccat="ccat --color=always --bg=dark"
alias cc="ccat --color=always --bg=dark"
alias cat="ccat --color=always --bg=dark"
alias icat="imgcat $*"
alias today="date +%Y%m%d"
function vs () {
  if [ -n "${1}" ]; then
    code .
  else
    code $*
  fi
}
alias editalias="vim ${DOTPATH}/shell-config/aliases.sh"
alias loadalias="source ${DOTPATH}/shell-config/aliases.sh"
alias fdeploy="firebase deploy"
alias ndeploy="netlify deploy"
function mdview(){
	markdown $1 | lynx -stdin
}
alias trans="trans -I ${*}"
alias transj="trans -I :ja ${*}"


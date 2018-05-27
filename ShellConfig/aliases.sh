alias reload='exec $SHELL -l'
alias path='echo $PATH | tr -s ":" "\n"'
alias ks="ls"
alias sl="ls"
alias c="cd"
alias hist="history"
alias h="history"
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
alias icat="imgcat $*"
alias today="date +%Y%m%d"
alias vs="code ."
alias editalias="vim ${DOTPATH}/ShellConfig/aliases.sh"
alias loadalias="source ${DOTPATH}/ShellConfig/aliases.sh"
alias fdeploy="firebase deploy"
function mdview(){
	markdown $1 | lynx -stdin
}

### git
alias g="git"
alias gi="git"
alias gs="git status"
alias gb="git branch"
alias gd="git diff $*"
alias gdc="git diff $* --cached"
alias ga="git add $*"
alias ga.="git add ."
alias gc="git commit $*"
alias gcm="git commit -m $1"
alias gco="git checkout $*"
alias gp="git push $*"
alias gl="git log $*"

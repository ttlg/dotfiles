################################
# Basic
################################
alias reload='exec $SHELL -l'
alias path='echo $PATH | tr -s ":" "\n"'
alias ks="ls"
alias sl="ls"
# alias ls="ls --color -F"
alias l="ls"
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"
alias mv="mv -i"
alias cp="cp -i"
alias g="git"
alias gi="git"
alias t="tmux"
alias tm="tmux"
alias tmu="tmux"

alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

alias ccat="ccat --color=always --bg=dark"
alias cc="ccat --color=always --bg=dark"
alias today="date +%Y%m%d"

# Shortcuts
alias dt="cd ~/Desktop"
alias dl="cd ~/Downloads"

################################
# Advanced
################################
alias e="emacs"
alias dev="npm run dev"
alias gen="npm run generate"
alias v="vim"
alias vi="vim"
alias gh='hub browse $(ghq list | grep "github.com" | peco --prompt "[github]" | cut -d "/" -f 2,3)'
alias gist="gist -c -o -p"

################################
#### source
export DOTPATH=~/
export PATH="${DOTPATH}/bin:${PATH}"
for f ($DOTPATH/.*/*.zsh) source "${f}"

# weather
alias wx="curl -4 wttr.in/Tokyo"
if [ "$(uname)" = 'Linux' ]; then
	alias pbcopy='xsel --clipboard --input'
	alias pbpaste='xsel --clipboard --output'
	alias open='xdg-open 2>/dev/null'
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="$HOME/.local/bin:$PATH"

export PATH=${HOME}/.cargo/bin:${PATH}

function tr () {
  echo $1;
  tsc $1;
  export BASE=`echo $1 | rev | cut -c 3- | rev`
  node ${BASE}js
  rm ${BASE}js
}

function test () {
  echo $1;
}

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

# ----- PROMPT -----
## PROMPT
PROMPT=$'%* $ '
## RPROMPT
RPROMPT=$'`branch-status-check` %~' # %~はpwd
setopt prompt_subst #表示毎にPROMPTで設定されている文字列を評価する

# {{{ methods for RPROMPT
# fg[color]表記と$reset_colorを使いたい
# @see https://wiki.archlinux.org/index.php/zsh
autoload -U colors; colors
function branch-status-check {
    local prefix branchname suffix
        # .gitの中だから除外
        if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
            return
        fi
        branchname=`get-branch-name`
        # ブランチ名が無いので除外
        if [[ -z $branchname ]]; then
            return
        fi
        prefix=`get-branch-status` #色だけ返ってくる
        suffix='%{'${reset_color}'%}'
        echo ${prefix}${branchname}${suffix}
}
function get-branch-name {
    # gitディレクトリじゃない場合のエラーは捨てます
    echo `git rev-parse --abbrev-ref HEAD 2> /dev/null`
}
function get-branch-status {
    local res color
        output=`git status --short 2> /dev/null`
        if [ -z "$output" ]; then
            res=':' # status Clean
            color='%{'${fg[green]}'%}'
        elif [[ $output =~ "[\n]?\?\? " ]]; then
            res='?:' # Untracked
            color='%{'${fg[yellow]}'%}'
        elif [[ $output =~ "[\n]? M " ]]; then
            res='M:' # Modified
            color='%{'${fg[red]}'%}'
        else
            res='A:' # Added to commit
            color='%{'${fg[cyan]}'%}'
        fi
        # echo ${color}${res}'%{'${reset_color}'%}'
        echo ${color} # 色だけ返す
}
# }}}

function select-history() {
#j	BUFFER=$(\history -n -r 1 | peco --prompt '[history]' --query "$LBUFFER")
	BUFFER=$(\history -n -r 1 | ${SELECT_METHOD} --prompt 'history>' --query "$LBUFFER")
	CURSOR=$#BUFFER
}
zle -N select-history
bindkey '^r' select-history

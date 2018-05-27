function select-repo () {
    local val=`ls ~/repos | ${SELECT_METHOD} --prompt "cd repos>";`
	if [ -n "$val" ]; then
		cd ~/repos/${val}
	fi
}
zle -N select-repo
bindkey '^p' select-repo



function select-edit () {
	if [ -f .gitignore ]; then
	  local selected_file=$(git ls-files | ${SELECT_METHOD} --prompt "edit>")
	else
	  local selected_file=$(find . -type f | ${SELECT_METHOD} --prompt "edit>")
	fi
    if [ -n "$selected_file" ]; then
        BUFFER="vim ${selected_file}"
        zle accept-line
    fi
}
zle -N select-edit
bindkey '^v' select-edit

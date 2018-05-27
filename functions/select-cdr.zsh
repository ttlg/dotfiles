function select-cdr () {
    local selected_dir=$(cdr -l | awk '{ print $2 }' | ${SELECT_METHOD} --prompt "cdr>")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
}
zle -N select-cdr
bindkey '^u' select-cdr

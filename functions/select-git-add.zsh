function select-git-add() {
    local SELECTED_FILE_TO_ADD="$(git status --porcelain | \
                                  ${SELECT_METHOD} --prompt "git add>" | \
                                  awk -F ' ' '{print $NF}')"
    if [ -n "$SELECTED_FILE_TO_ADD" ]; then
      BUFFER="git add $(echo "$SELECTED_FILE_TO_ADD" | tr '\n' ' ')"
      CURSOR=$#BUFFER
    fi
    zle accept-line
}
zle -N select-git-add
bindkey "^g^a" select-git-add

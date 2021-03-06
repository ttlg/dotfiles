function select-git-diff() {
    local SELECTED_FILE_TO_ADD="$(git status --porcelain | \
                                  ${SELECT_METHOD} --prompt "git diff>" --query "$LBUFFER" | \
                                  awk -F ' ' '{print $NF}')"
    if [ -n "$SELECTED_FILE_TO_ADD" ]; then
      BUFFER="git diff $(echo "$SELECTED_FILE_TO_ADD" | tr '\n' ' ')"
      CURSOR=$#BUFFER
    fi
    zle accept-line
    # zle clear-screen
}
zle -N select-git-diff
bindkey "^g^f" select-git-diff

function cb () {
  local bookmark
  bookmark="$(python ${DOTPATH}/scripts/print-chrome-bookmark.py | ${SELECT_METHOD})"
  if [ -n "${bookmark}" ]; then
    local url
    url="$(echo ${bookmark} | awk '{print $NF}')"
    if [ -n "${url}" ]; then
      open ${url}
    fi
  fi
}

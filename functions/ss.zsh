function ss () {
  local platform
  platform="$(s -l | fzy)"
  if [ -n "${platform}" ]; then
    s -p ${platform} ${*}
  fi
}

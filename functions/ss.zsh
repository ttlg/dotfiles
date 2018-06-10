function ss () {
  local platform
  platform="$(s -l | ${SELECT_METHOD})"
  if [ -n "${platform}" ]; then
    s -p ${platform} ${*}
  fi
}

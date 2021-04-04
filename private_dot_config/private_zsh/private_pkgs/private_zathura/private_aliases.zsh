function zathura() {
  nohup /usr/bin/zathura "$@" &> /dev/null &
  disown %?
}

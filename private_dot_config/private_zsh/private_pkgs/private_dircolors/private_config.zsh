if type dircolors > /dev/null && [[ -f $XDG_CONFIG_HOME/dir_colors ]]; then
  eval $(dircolors $XDG_CONFIG_HOME/dir_colors)
fi

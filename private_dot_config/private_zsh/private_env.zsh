export LANG=${LANG:-en_US.UTF-8}
export LC_MESSAGES=${LC_MESSAGES:-POSIX}

if type nvim > /dev/null; then
  export EDITOR="nvim"
  export MANPAGER="nvim -R +Man!"
  export VISUAL="nvim"
elif type vim > /dev/null; then
  export EDITOR="vim"
  export MANPAGER="vim -R +MANPAGER -"
  export VISUAL="vim"
fi

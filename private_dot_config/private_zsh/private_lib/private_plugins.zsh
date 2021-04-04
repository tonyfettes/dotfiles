declare -A ZINIT
export ZINIT[BIN_DIR]="${XDG_DATA_HOME}/zsh/zinit/bin"
export ZINIT[HOME_DIR]="${XDG_DATA_HOME}/zsh/zinit"
export ZINIT[PLUGINS_DIR]="${XDG_DATA_HOME}/zsh/zinit/plugins"
export ZINIT[COMPLETIONS_DIR]="${XDG_DATA_HOME}/zsh/zinit/completions"
export ZINIT[SNIPPETS_DIR]="${XDG_DATA_HOME}/zsh/zinit/snippets"
export ZINIT[ZCOMPDUMP_PATH]="${XDG_DATA_HOME}/zsh/zcompdump"
export ZINIT[MUTE_WARNINGS]=1
export ZPFX="${XDG_DATA_HOME}/zsh/zinit/polaris"

source $XDG_DATA_HOME/zsh/zinit/bin/zinit.zsh

zinit for \
  light-mode softmoth/zsh-vim-mode \
  light-mode marlonrichert/zcolors

zinit for \
  light-mode marlonrichert/zsh-autocomplete \

zinit wait lucid for \
  zsh-vi-more/vi-increment \
  IngoMeyer441/zsh-easy-motion

# https://github.com/3v1n0/zsh-bash-completions-fallback
#
#zinit wait lucid nocd depth=1 \
#  atinit='ZSH_BASH_COMPLETIONS_FALLBACK_LAZYLOAD_DISABLE=true' \
#  for 3v1n0/zsh-bash-completions-fallback

# zinit wait lucid for \
#   zdharma/fast-syntax-highlighting

zinit wait lucid for \
  zsh-users/zsh-syntax-highlighting

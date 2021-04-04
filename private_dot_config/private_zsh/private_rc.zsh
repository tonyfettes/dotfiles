# https://github.com/arcticicestudio/igloo/blob/master/snowblocks/zsh/rc.zsh

export -TU FPATH fpath
fpath=($ZDOTDIR/lib/functions $fpath)
export -TU INFOPATH infopath
infopath=($infopath)
export -TU MANPATH manpath
manpath=($manpath)
export -TU PATH path
path=($path)

# Load package environment vairables
function {
  local pkg_env
  for pkg_env ($ZDOTDIR/pkgs/**/env.zsh) source $pkg_env
}

[[ -f $ZDOTDIR/lib/options.zsh ]] && source $ZDOTDIR/lib/options.zsh
[[ -f $ZDOTDIR/lib/history.zsh ]] && source $ZDOTDIR/lib/history.zsh
[[ -f $ZDOTDIR/lib/colors.zsh ]] && source $ZDOTDIR/lib/colors.zsh

# Load all package configurations and aliases.
function {
  local pkg_aliases pkg_config
  for pkg_aliases ($ZDOTDIR/pkgs/**/aliases.zsh) source $pkg_aliases
  for pkg_config ($ZDOTDIR/pkgs/**/config.zsh) source $pkg_config
}

# Load ZLE with key bindings
[[ -f $ZDOTDIR/lib/zle.zsh ]] && source $ZDOTDIR/lib/zle.zsh

function {
  local plugin_pre
  for plugin_pre ($ZDOTDIR/pkgs/zinit/**/pre.zsh) source $plugin_pre
}

# Load plugins with zinit.
[[ -f $ZDOTDIR/lib/plugins.zsh ]] && source $ZDOTDIR/lib/plugins.zsh

function {
  local plugin_post
  for plugin_post ($ZDOTDIR/pkgs/zinit/**/post.zsh) source $plugin_post
}

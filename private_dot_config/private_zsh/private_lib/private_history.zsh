# https://github.com/arcticicestudio/igloo/blob/master/snowblocks/zsh/config/history.zsh

export HISTFILE=$XDG_CACHE_HOME/zsh/history
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE

# https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/history.zsh
# https://github.com/arcticicestudio/igloo/blob/master/snowblocks/zsh/config/options.zsh

# Each ZSH session appends it's history list to the history file, rather than replacing it.
setopt append_history

# Save each command's beginning Unix timestamp and the duration in seconds.
setopt extended_history

# Remove the oldest history event that has a duplicate first before unique events when reaching the size limit.
setopt hist_expire_dups_first

# Hide duplicates of previous events when searching for history entries in the line editor.
setopt hist_find_no_dups

# Don't store events if they are duplicates of the previous event.
setopt hist_ignore_dups

# Don't store events when the first character on the line is a space or when one of the expanded aliases contains
# a leading space.
# Note that the command is still kept in the internal history until the next command before it vanishes,
# allowing to briefly reuse or edit the line.
setopt hist_ignore_space

setopt hist_verify

setopt share_history

# Don't store function definitions.
# Note that the command is still kept in the internal history until the next command before it vanishes,
# allowing to briefly reuse or edit the line.
setopt hist_no_functions

# Remove superfluous blanks from events being added to the history list.
# This can also prevent duplicate entries when a previous event would not match in its untidied form.
# Note that the shell is smart enough not to remove blanks which are important, i.e. when quoted.
setopt hist_reduce_blanks

# Don't store duplicate event at all, older commands that duplicate newer ones are omitted.
setopt hist_save_no_dups

# New history lines are added to `HISTFILE` incrementally as soon as they are entered,
# rather than waiting until the shell exits.
setopt inc_append_history

# Disable beep in ZLE when a widget attempts to access a non-existing history entry.
setopt no_hist_beep

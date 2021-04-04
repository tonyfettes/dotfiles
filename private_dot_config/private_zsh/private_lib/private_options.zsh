# +--- Changing Directories ---+#
# See:
#   1. http://zsh.sourceforge.net/Doc/Release/Options.html#Changing-Directories#

# If a command is issued that can't be executed as a normal command, and the command is the name of a directory,
# perform the `cd` command to that directory.
setopt auto_cd
setopt multios
# https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/directories.zsh
setopt auto_pushd
# don't push the same dir twice.
setopt pushd_ignore_dups
setopt pushdminus

# +--- Expansion and Globbing ---+
# See:
#   1. http://zsh.sourceforge.net/Doc/Release/Options.html#Expansion-and-Globbing

# Treat the `#`, `~` and `^` characters as part of patterns for filename generation.
# Note that an initial unquoted `~` always produces named directory expansion.
setopt extended_glob

# Disable printing of errors if a pattern for filename generation has no matches.
setopt no_nomatch

# Disable beep on an ambiguous completion.
setopt no_list_beep

# Entirely disable error logging if a pattern for filename generation has no matches.
# Pattern that don't match are removed from the argument list instead.
# If no file matches a blank line is printed, with no error.
# Overrides the `NOMATCH` option.
setopt null_glob

# +--- History ---+
# See:
#   1. http://zsh.sourceforge.net/Doc/Release/Options.html#History

# THIS SECTION IS MOVED TO lib/history.zsh

# +--- Input/Output ---+
# See:
#   1. http://zsh.sourceforge.net/Doc/Release/Options.html#Input_002fOutput

# Allow comments even in interactive shells. 
setopt interactive_comments

# +--- Job Control ---+
# See:
#   1. http://zsh.sourceforge.net/Doc/Release/Options.html#Job-Control

# Run all background jobs with the same priority as foreground tasks.
setopt no_bg_nice

# Disable immediately status reporting of background jobs to prevent messing up and reprinting the current line.
setopt no_notify

# Don't send SIGHUP to background processes when the shell exits.
setopt nohup

# +--- Prompting ---+
# See:
#   1. http://zsh.sourceforge.net/Doc/Release/Options.html#Prompting

# Interpret percent escape sequences in prompt expansion.
# See:
#   1. http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Prompt-Expansion
setopt prompt_percent

# Enable parameter expansion, command substitution and arithmetic expansion in prompts.
# Note that substitutions within prompts do not affect the command status. 
setopt prompt_subst

# +--- Shell Emulation ---+
# See:
#   1. http://zsh.sourceforge.net/Doc/Release/Options.html#Shell-Emulation

# Split on unquoted parameter expansions.
#setopt sh_word_split


# +--- Zle ---+
# See:
#   1. http://zsh.sourceforge.net/Doc/Release/Options.html#Zle

# Disable beep on error in ZLE.
setopt no_beep

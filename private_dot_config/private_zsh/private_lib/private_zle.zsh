# https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/key-bindings.zsh
# https://github.com/arcticicestudio/igloo/blob/master/snowblocks/zsh/lib/key_bindings.zsh
# https://wiki.archlinux.org/index.php/Zsh#Key_bindings

# Configurations for the ZSH line editor.
# See:
#   1. http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html

# Remove the slash, period, angle brackets and dash characters from the default list.
# This allows to move backward and forward between words include these characters or when
# trying to only delete until the next character, e.g. for paths or dash-separated words.
export WORDCHARS='*?_[]~=&;!#$%^(){}'

if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
  autoload -Uz add-zle-hook-widget
  function zle_application_mode_start { echoti smkx }
  function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

typeset -g -A key

key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"

key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"

key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"

key[Shift-Tab]="${terminfo[kcbt]}"

if [[ -n "${key[Up]}"   ]]; then
  autoload -Uz up-line-or-search
  zle -N up-line-or-search
  bindkey -- "${key[Up]}" up-line-or-search
fi
if [[ -n "${key[Down]}" ]]; then
  autoload -Uz down-line-or-search
  zle -N down-line-or-search
  bindkey -- "${key[Down]}" down-line-or-search
fi

[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"    overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}" backward-delete-char
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"      backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"     forward-char
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}" reverse-menu-complete

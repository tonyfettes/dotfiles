# https://github.com/marlonrichert/zsh-autocomplete#settings

zstyle ':completion:list-expand:*' extra-verbose yes
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"
zstyle ':autocomplete:*' default-context ''
zstyle ':autocomplete:*' min-delay 0.1 
zstyle ':autocomplete:*' min-input 4
zstyle ':autocomplete:*' ignored-input '..##'
zstyle ':autocomplete:*' ignored-input 'ls'
zstyle ':autocomplete:*' ignored-input 'cd'
zstyle ':autocomplete:tab:*' widget-style menu-select
zstyle ':autocomplete:tab:*' insert-unambiguous no
zstyle ':autocomplete:tab:*' fzf-completion no

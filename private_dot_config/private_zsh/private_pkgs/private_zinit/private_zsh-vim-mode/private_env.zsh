export MODE_CURSOR_VIINS="#88c0d0 steady bar"
export MODE_CURSOR_REPLACE="#88c0d0 steady underline"
export MODE_CURSOR_VICMD="#88c0d0 block"
export MODE_CURSOR_SEARCH="#ff00ff steady underline"
export MODE_CURSOR_VISUAL="#8fbcbb steady bar"
export MODE_CURSOR_VLINE="#8fbcbb underline"

# Doesn't work
#export MODE_INDICATOR_VIINS='%F{15}<%F{8}INSERT<%f'
#export MODE_INDICATOR_VICMD='%F{10}<%F{2}NORMAL<%f'
#export MODE_INDICATOR_REPLACE='%F{9}<%F{1}REPLACE<%f'
#export MODE_INDICATOR_SEARCH='%F{13}<%F{5}SEARCH<%f'
#export MODE_INDICATOR_VISUAL='%F{12}<%F{4}VISUAL<%f'
#export MODE_INDICATOR_VLINE='%F{12}<%F{4}V-LINE<%f'
#
#setopt prompt_subst
#if [[ -z "$RPS1" && -z "$RPROMPT" ]]; then
#  RPS1='${MODE_INDICATOR_PROMPT}'
#  RPS2=$RPS1
#fi

src="$HOME/.config/bash/src"

[[ -f "$src/variables.sh" ]] && source "$src/variables.sh"
[[ -f "$src/variables.vim.sh" ]] && source "$src/variables.vim.sh"

export GIT_EDITOR="vim"
export HISTFILE="$HOME/.config/bash/history.sh"
export HISTFILESIZE="12"
export HISTSIZE="12"
export JULIA_DEPOT_PATH="$HOME/.config/julia/"
export JULIA_HISTORY="$JULIA_DEPOT_PATH/logs/REPLHistory.jl"
export JULIA_EDITOR="vim"
export JULIAUP_DEPOT_PATH="$HOME/.config/"
export XMODIFIERS="@im=fcitx"

# CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY.

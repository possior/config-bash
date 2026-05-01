[[ -n "$(git rev-parse --show-toplevel 2>/dev/null)" ]] && ROOT="$(git rev-parse --show-toplevel)" || exit
[[ -f "$ROOT/source/utility.sh" ]] && source "$ROOT/source/utility.sh" || exit
[[ -d "$HOME/.config/bash" ]] || mkdir -p "$HOME/.config/bash"
[[ -d "$HOME/.image" ]] || mkdir -p "$HOME/.image"
insy "$ROOT/source/.bashrc" "$HOME/.bashrc"
insy "$ROOT/source/.bash_profile" "$HOME/.bash_profile"
insy "$ROOT/source/.config/bash/bashrc.sh" "$HOME/.config/bash/bashrc.sh"
insy "$ROOT/source/.config/bash/alias.sh" "$HOME/.config/bash/alias.sh"
insy "$ROOT/source/.config/bash/appimage.sh" "$HOME/.config/bash/appimage.sh"
insy "$ROOT/source/.config/bash/promptstatement.sh" "$HOME/.config/bash/promptstatement.sh"
insy "$ROOT/source/.config/bash/variable.sh" "$HOME/.config/bash/variable.sh"
insy "$ROOT/source/.image/installer.sh" "$HOME/.image/installer.sh"
insn "$ROOT/source/.image/locators.csv" "$HOME/.image/locators.csv"


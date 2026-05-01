[[ -n "$(git rev-parse --show-toplevel 2>/dev/null)" ]] && ROOT="$(git rev-parse --show-toplevel)" || exit
[[ -f "$ROOT/utility.sh" ]] && source "$ROOT/utility.sh" || exit
[[ -d "$HOME/.config/bash" ]] || mkdir -p "$HOME/.config/bash"
[[ -d "$HOME/.image" ]] || mkdir -p "$HOME/.image"
installer "$ROOT/source/.bashrc" "$HOME/.bashrc"
installer "$ROOT/source/.bash_profile" "$HOME/.bash_profile"
installer "$ROOT/source/.config/bash/bashrc.sh" "$HOME/.config/bash/bashrc.sh"
installer "$ROOT/source/.config/bash/alias.sh" "$HOME/.config/bash/alias.sh"
installer "$ROOT/source/.config/bash/appimage.sh" "$HOME/.config/bash/appimage.sh"
installer "$ROOT/source/.config/bash/promptstatement.sh" "$HOME/.config/bash/promptstatement.sh"
installer "$ROOT/source/.config/bash/variable.sh" "$HOME/.config/bash/variable.sh"
installer "$ROOT/source/.image/installer.sh" "$HOME/.image/installer.sh"
installer "$ROOT/source/.image/locators.csv" "$HOME/.image/locators.csv"


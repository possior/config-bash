if
  [[ -n "$(git rev-parse --show-toplevel 2>/dev/null)" ]]
then
  ROOT="$(git rev-parse --show-toplevel)"
else
  exit
fi

installer() {
  fr="$1"
  to="$2"

  if
    [[ -f "$to" ]]
  then
    read -p ":: override $to? [Y/n] " ds
  fi

  ds="${ds:-Y}"

  if
    [[ "$ds" == "Y" ]] || [[ "$ds" == "y" ]]
  then
    cp -f "$fr" "$to"
  elif
    [[ "$ds" != "N" ]] && [[ "$ds" != "n" ]]
  then
    exit 
  fi
}

installer "$ROOT/source/.bashrc" "$HOME/.bashrc"
installer "$ROOT/source/.bash_profile" "$HOME/.bash_profile"

if
  [[ ! -d "$HOME/.config/bash" ]]
then
  mkdir -p "$HOME/.config/bash"
fi

installer "$ROOT/source/.config/bash/bashrc.sh" "$HOME/.config/bash/bashrc.sh"
installer "$ROOT/source/.config/bash/alias.sh" "$HOME/.config/bash/alias.sh"
installer "$ROOT/source/.config/bash/promptstatement.sh" "$HOME/.config/bash/promptstatement.sh"

source "$HOME/.bashrc"


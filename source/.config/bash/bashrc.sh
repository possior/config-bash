config="$HOME/.config/bash"

if
  [[ -f "$config/alias.sh" ]]
then
  source "$config/alias.sh"
fi

if
  [[ -f "$config/appimage.sh" ]]
then
  source "$config/appimage.sh"
fi

if
  [[ -f "$config/promptstatement.sh" ]]
then
  source "$config/promptstatement.sh"
fi

if
  [[ -f "$config/variable.sh" ]]
then
  source "$config/variable.sh"
fi


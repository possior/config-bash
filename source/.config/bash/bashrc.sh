config="$HOME/.config/bash"

if
  [[ -f "$config/alias.sh" ]]
then
  source "$config/alias.sh"
fi

if
  [[ -f "$config/promptstatement.sh" ]]
then
  source "$config/promptstatement.sh"
fi


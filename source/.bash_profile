if
  [[ -f "$HOME/.bashrc" ]]
then
  source "$HOME/.bashrc"
elif
  [[ -f "$HOME/.config/bash/bashrc.sh" ]]
then
  source "$HOME/.config/bash/bashrc.sh"
fi


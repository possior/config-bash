if
  [[ $- != *i* ]]
then
  return
fi  

if
  [[ -f "$HOME/.config/bash/bashrc.sh" ]]
then
  source "$HOME/.config/bash/bashrc.sh"
fi


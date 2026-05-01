function installer() {
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
    return
  fi
}


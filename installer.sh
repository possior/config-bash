function overwriter() {
  if
    [[ "${1##*/}" =~ ^\.  ]]
  then
    curl -fsSLo "$HOME/${1##*/}" "$1"
  else
    curl -fsSLo "$HOME/.config/bash/${1##*/}" "$1"
  fi
}

function preserver() {
  if
    [[ "${1##*/}" =~ ^\. ]]
  then
    if
      [[ ! -f "$HOME/${1##*/}" ]]
    then
      curl -fsSLo "$HOME/${1##*/}" "$1"
    fi
  else
    if
      [[ ! -f "$HOME/${1##*/}" ]]
    then
      curl -fsSLo "$HOME/.config/bash/${1##*/}" "$1"
    fi
  fi
}

echo ":: initiated the process"

while
  [[ "$#" -gt "0" ]]
do
  case "$1" in
    "-o" | "--overwrite")
      if
        [[ -z "$behavior" ]]
      then
        behavior="overwrite"
        shift 1
      else
        echo "!! detected conflicting behavior flags"
        exit
      fi
      ;;
    "-p" | "--preserve")
      if
        [[ -z "$behavior" ]]
      then
        behavior="preserve"
        shift 1
      else
        echo "!! detected conflicting behavior flags"
        exit
      fi
      ;;
  esac
done

echo ":: parsed arguments"

if
  [[ ! -d "$HOME/.config/bash" ]]
then
  mkdir -p "$HOME/.config/bash"
  echo ":: created the configuration directory"
fi

case "${behavior:-overwrite}" in
  "overwrite")
    overwriter "https://raw.githubusercontent.com/possior/config-bash/default/src/.bash_profile"
    overwriter "https://raw.githubusercontent.com/possior/config-bash/default/src/.bashrc"
    overwriter "https://raw.githubusercontent.com/possior/config-bash/default/src/bash.sh"
    echo ":: downloaded configuration files (overwrite)"
    overwriter "https://raw.githubusercontent.com/possior/config-bash/default/doc/.bash_profile.md"
    overwriter "https://raw.githubusercontent.com/possior/config-bash/default/doc/.bashrc.md"
    overwriter "https://raw.githubusercontent.com/possior/config-bash/default/doc/bash.sh.md"
    echo ":: downloaded documentation files (overwrite)"
    ;;
  "preserve")
    preserver "https://raw.githubusercontent.com/possior/config-bash/default/src/.bash_profile"
    preserver "https://raw.githubusercontent.com/possior/config-bash/default/src/.bashrc"
    preserver "https://raw.githubusercontent.com/possior/config-bash/default/src/bash.sh"
    echo ":: downloaded configuration files (preserve)"
    preserver "https://raw.githubusercontent.com/possior/config-bash/default/doc/.bash_profile.md"
    preserver "https://raw.githubusercontent.com/possior/config-bash/default/doc/.bashrc.md"
    preserver "https://raw.githubusercontent.com/possior/config-bash/default/doc/bash.sh.md"
    echo ":: downloaded documentation files (preserve)"
    ;;
  *)
    echo "!! failed downloading due to unknown internal variable value"
    exit
    ;;
esac

if
  [[ -f "$HOME/.bashrc" ]]
then
  source "$HOME/.bashrc"
  echo ":: applied the configuration"
fi

echo ":: completed downloading configuration and documentation"

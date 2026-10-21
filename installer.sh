doc="https://raw.githubusercontent.com/possior/config-bash/default/doc/"
src="https://raw.githubusercontent.com/possior/config-bash/default/src/"
cfg="${HOME%/}/.config/bash"
echo ":: initiated variables"

function overwriter() {
  if
    [[ "${1##*/}" =~ ^\.  ]]
  then
    curl -fsSLo "${HOME%/}/${2#/}" "${1%/}/${2#/}"
  else
    curl -fsSLo "${cfg%/}/${2#/}" "${1%/}/${2#/}"
  fi
}
function preserver() {
  if
    [[ "${1##*/}" =~ ^\. ]]
  then
    if
      [[ ! -f "${HOME%/}/${2#/}" ]]
    then
      curl -fsSLo "${HOME%/}/${2#/}" "${1%/}/${2#/}"
    fi
  else
    if
      [[ ! -f "${cfg%/}/${2#/}" ]]
    then
      curl -fsSLo "${cfg%/}/${2#/}" "${1%/}/${2#/}"
    fi
  fi
}
echo ":: initiated functions"

[[ -d "$cfg" ]] || mkdir -p "$cfg"
echo ":: confirmed the configuration directory"

while
  [[ "$#" -gt 0 ]]
do
  case "$1" in
    -o|--overwrite)
      if
        [[ -z "$behavior" ]]
      then
        behavior=overwrite
        shift 1
      else
        echo "!! detected conflicting behavior flags"
        exit
      fi
      ;;
    -p|--preserve)
      if
        [[ -z "$behavior" ]]
      then
        behavior=preserve
        shift 1
      else
        echo "!! detected conflicting behavior flags"
        exit
      fi
      ;;
  esac
done

echo ":: parsed arguments"

case "${behavior:-overwrite}" in
  overwrite)
    overwriter "$src" ".bash_profile"
    overwriter "$src" ".bashrc"
    overwriter "$src" "bash.sh"
    echo ":: downloaded configuration files ($behavior)"
    overwriter "$doc" ".bash_profile.md"
    overwriter "$doc" ".bashrc.md"
    overwriter "$doc" "bash.sh.md"
    echo ":: downloaded documentation files ($behavior)"
    ;;
  preserve)
    preserver "$src" ".bash_profile"
    preserver "$src" ".bashrc"
    preserver "$src" "bash.sh"
    echo ":: downloaded configuration files ($behavior)"
    preserver "$doc" ".bash_profile.md"
    preserver "$doc" ".bashrc.md"
    preserver "$doc" "bash.sh.md"
    echo ":: downloaded documentation files ($behavior)"
    ;;
  *)
    echo "!! detected unknown behavior configuration"
    exit
    ;;
esac
echo ":: completed installation"

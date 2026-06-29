function overwriter() {
  curl -so ${HOME}/.config/bash/${1##*/} ${1}
}

function preserver() {
  if
    [[ ! -f ${HOME}/.config/bash/${1##*/} ]]
  then
    curl -so ${HOME}/.config/bash/${1##*/} ${1}
  fi
}

echo ".. initiated the process"

while
  [[ $# -gt 0 ]]
do
  case "$1" in
    "-o" | "--overwrite")
      if
	[[ -z "${behavior}" ]]
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
	[[ -z "${behavior}" ]]
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

echo ".. parsed arguments"

if
  [[ ! -d ${HOME}/.config/bash ]]
then
  mkdir -p ${HOME}/.config/bash

  echo ".. created the configuration directory"
fi

case "${behavior:-overwrite}" in
  "overwrite")
    overwriter https://raw.githubusercontent.com/possior/config-bash/default/src/bash.lua
    echo ".. downloaded configuration files (overwrite)"
    ;;
  "preserve")
    preserver https://raw.githubusercontent.com/possior/config-bash/default/src/bash.lua
    echo ".. downloaded configuration files (preserve)"
    ;;
  *)
    echo "!! failed downloadation due to unknown internal variable value"
    exit
    ;;
esac

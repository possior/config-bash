function overwriter() {
  if
    [[ ${1##*/} == .bashrc || ${1##*/} == .bash_profile ]]
  then
    curl -so ${HOME}/${1##*/} ${1}
  else
    curl -so ${HOME}/.config/bash/${1##*/} ${1}
  fi
}

function preserver() {
  if
    [[ ${1##*/} == .bashrc || ${1##*/} == .bash_profile ]]
  then
    if
      [[ ! -f ${HOME}/${1##*/} ]]
    then
      curl -so ${HOME}/${1##*/} ${1}
    fi
  else
    if
      [[ ! -f ${HOME}/${1##*/} ]]
    then
      curl -so ${HOME}/.config/bash/${1##*/} ${1}
    fi
  if
}

echo ".. initiated the process"

while
  [[ $# -gt 0 ]]
do
  case "$1" in
    "-o" | "--overwrite")
      if
        [[ -z "${behavior}" ]
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
    overwriter https://raw.githubusercontent.com/possior/config-bash/default/src/.bash_profile
    overwriter https://raw.githubusercontent.com/possior/config-bash/default/src/.bashrc
    echo ".. downloaded configuration files (overwrite)"
    ;;
  "preserve")
    preserver https://raw.githubusercontent.com/possior/config-bash/default/src/.bash_profile
    preserver https://raw.githubusercontent.com/possior/config-bash/default/src/.bashrc
    echo ".. downloaded configuration files (preserve)"
    ;;
  *)
    echo "!! failed downloadation due to unknown internal variable value"
    exit
    ;;
esac

#!/usr/bin/env bash
set -eo pipefail

while [[ "$#" -gt 0 ]]
do
  case "$1" in
    -o|--overwrite)
      [[ -z "$mode" ]] && mode=o || exit
      shift 1
      ;;
    -p|--preserve)
      [[ -z "$mode" ]] && mode=p || exit
      shift 1
      ;;
    *)
      shift 1
      ;;
  esac
done

wd="$(dirname "${BASH_SOURCE[0]}")"
td="$HOME/.config/bash"

files=(
  "$wd/doc/.bash_profile.md"
  "$wd/src/.bash_profile"
  "$wd/doc/.bashrc.md"
  "$wd/src/.bashrc"
  "$wd/doc/bash.sh.md"
  "$wd/src/bash.sh"
  "$wd/doc/variables.sh.md"
  "$wd/src/variables.sh"
)
dests=(
  "$td/../../.bash_profile.md"
  "$td/../../.bash_profile"
  "$td/../../.bashrc.md"
  "$td/../../.bashrc"
  "$td/bash.sh.md"
  "$td/bash.sh"
  "$td/variables.sh.md"
  "$td/variables.sh"
)

[[ "${#files[@]}" == "${#dests[@]}" ]] && n="${#files[@]}" || exit

[[ -z "$mode" ]] && mode=o || exit

mkdir -p "$td"

for (( i=0; i<"$n"; i++ ))
do
  if [[ "$mode" == o ]]
  then
    cp "${files[i]}" "${dests[i]}"
  elif [[ "$mode" == p ]]
  then
    [[ ! -f "${dests[i]}" ]] && cp "${files[i]}" "${dests[i]}"
  fi
done

# CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY.

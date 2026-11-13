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
  "$wd/doc"
  "$wd/src"
  "$wd/license.txt"
  "$wd/readme.md"
  "$td/src/.bash_profile"
  "$td/src/.bashrc"
)
dests=(
  "$td/doc"
  "$td/src"
  "$td/license.txt"
  "$td/readme.md"
  "$td/../../.bash_profile"
  "$td/../../.bashrc"
)

[[ "${#files[@]}" == "${#dests[@]}" ]] && n="${#files[@]}" || exit

[[ -z "$mode" ]] && mode=o || exit

mkdir -p "$td"

for (( i=0; i<"$n"; i++ ))
do
  if [[ "$mode" == o ]]
  then
    cp -r "${files[i]}" "${dests[i]}"
  elif [[ "$mode" == p ]]
  then
    [[ ! -f "${dests[i]}" ]] && cp -r "${files[i]}" "${dests[i]}"
  fi
done

# CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY.

[[ $- != *i* ]] && return
if
  [[ ! -d "$HOME/.image" ]]
then
  make -p "$HOME/.image"
fi

while
  IFS=
  read -rd "" file
do
  name="$(basename "$file")"
  name="${name%.*}"
  alias "$name"="$file"
done < <(find "$HOME/.image" -name "*.appimage" -type f -executable -print0)


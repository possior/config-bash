[[ $- != *i* ]] && return
[[ -d "$HOME/.image" ]] || mkdir -p "$HOME/.image"
while
  IFS=
  read -rd "" file
do
  name="$(basename "$file")"
  name="${name%.*}"
  alias "$name"="$file"
done < <(find "$HOME/.image" -name "*.appimage" -type f -executable -print0)


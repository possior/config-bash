image="$HOME/.image"

while
  IFS=","
  read -r name locator
do
  name="$(echo "$name" | xargs)"
  locator="$(echo "$locator" | xargs)"
  if
    [[ -z "$name" || -z "$locator" ]]
  then
    continue
  fi
  curl -Lo "$HOME/.image/$name.appimage" "$locator"
done < "$image/locators.csv"


#!/bin/bash

files_and_paths=(
  "$HOME/.dotfiles/.bashrc:$HOME/.bashrc"
  "$HOME/.dotfiles/.config:$HOME/.config"
  "$HOME/.dotfiles/.profile:$HOME/.profile"
)

create_symlink() {
  local source_file=$(realpath $1)
  local destination_path=$2

  if [ ! -e "$source_file" ]; then
    echo "$source_file does not exist." >&2
    return 1
  fi


  backup_file="${destination_path}.bak"     

  if [ -e "$destination_path" ]; then
    mv "$destination_path" "$backup_file"
  fi

  ln -s "$source_file" "$destination_path"
}

for entry in "${files_and_paths[@]}"; do
  IFS=":" read -r source_file destination_path <<< "$entry"
  create_symlink "$source_file" "$destination_path"
done

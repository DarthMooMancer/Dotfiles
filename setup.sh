#!/bin/bash

CONFIG_DIR=~/personal/env/.config
LOCAL_DIR=~/personal/env/.local/bin
DEST_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"

echo "Linking configs from $CONFIG_DIR to $DEST_DIR"

# Link config directories
for dir in "$CONFIG_DIR"/*/; do
  [ -d "$dir" ] || continue

  name=$(basename "$dir")
  target="$DEST_DIR/$name"

  # If a symlink already exists, remove it
  if [ -L "$target" ]; then
    echo "Removing existing symlink: $target"
    rm "$target"
  elif [ -e "$target" ]; then
    echo "Skipping $name — exists and is not a symlink."
    continue
  fi

  # Create the new symlink
  ln -s "$dir" "$target"
  echo "Linked: $dir → $target"
done

echo
echo "Linking configs from $LOCAL_DIR to ~/.local/bin"

# Link executables
for file in "$LOCAL_DIR"/*; do
  [ -f "$file" ] || continue  # only process regular files

  name=$(basename "$file")
  target="$HOME/.local/bin/$name"

  # If a symlink already exists, remove it
  if [ -L "$target" ]; then
    echo "Removing existing symlink: $target"
    rm "$target"
  elif [ -e "$target" ]; then
    echo "Skipping $name — exists and is not a symlink."
    continue
  fi

  # Create the new symlink
  ln -s "$file" "$target"
  echo "Linked: $file → $target"
done

echo
echo "Linking .zshrc to $HOME"

# Link .zshrc file
target="$HOME/.zshrc"
if [ -L "$target" ]; then
  echo "Removing existing symlink: $target"
  rm "$target"
fi

# Create the new symlink
ln -sf "$HOME/personal/env/.zshrc" "$target"
echo "Linked: $HOME/personal/env/.zshrc → $target"

# Link .zshrc file
target="$HOME/.config/tmux/tmux.conf"
if [ -L "$target" ]; then
  echo "Removing existing symlink: $target"
  rm "$target"
fi

ln -sf "$HOME/personal/env/.config/tmux/tmux.conf" "$target"
echo "Linked: $HOME/personal/env/.config/tmux/tmux.conf → $target"

echo
echo "Done linking all configs."

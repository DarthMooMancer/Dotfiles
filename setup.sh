#!/bin/bash

CONFIG_DIR=~/personal/env/.config
LOCAL_DIR=~/personal/env/.local/bin
DEST_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"

for dir in "$CONFIG_DIR"/*/; do
  [ -d "$dir" ] || continue

  name=$(basename "$dir")
  target="$DEST_DIR/$name"

  rm -rf "$target"
  echo "Removing: $target"
done

echo

for dir in "$CONFIG_DIR"/*/; do
  [ -d "$dir" ] || continue

  name=$(basename "$dir")
  target="$DEST_DIR/$name"

  cp -r "$dir" "$target"
  echo "Copying: $dir → $target"
done

echo
echo "Copying executables from $LOCAL_DIR to ~/.local/bin"

mkdir -p "$HOME/.local/bin"
for file in "$LOCAL_DIR"/*; do
  [ -f "$file" ] || continue

  name=$(basename "$file")
  target="$HOME/.local/bin/$name"

  rm -f "$target"
  cp "$file" "$target"
  chmod +x "$target"
  echo "Copied: $file → $target"
done

echo
echo "Copying .zshrc to $HOME"

target="$HOME/.zshrc"
rm -f "$target"
cp "$HOME/personal/env/.zshrc" "$target"
echo "Copied: .zshrc → $target"

echo
echo "Copying xinitrc config"

target="$HOME/.xinitrc"
rm -f "$target"
cp "$HOME/personal/env/.xinitrc" "$target"
echo "Copied: .xinitrc → $target"

echo
echo "Copying tmux config"

target="$HOME/.config/tmux/tmux.conf"
mkdir -p "$(dirname "$target")"
rm -f "$target"
cp "$HOME/personal/env/.config/tmux/tmux.conf" "$target"
echo "Copied: tmux.conf → $target"

echo
echo "Copying Xmodmap config"

target="$HOME/.Xmodmap"
mkdir -p "$(dirname "$target")"
rm -f "$target"
cp "$HOME/personal/env/.Xmodmap" "$target"
echo "Copied: .Xmodmap → $target"

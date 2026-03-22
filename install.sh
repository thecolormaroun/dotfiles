#!/bin/bash
set -e

echo "Installing dotfiles..."

# Ghostty
mkdir -p ~/.config/ghostty
ln -sf "$PWD/ghostty/config" ~/.config/ghostty/config
echo "✓ Ghostty"

# Zsh
ln -sf "$PWD/zshrc" ~/.zshrc
echo "✓ Zsh"

# Fish (kept as backup/optional)
mkdir -p ~/.config/fish
ln -sf "$PWD/fish/config.fish" ~/.config/fish/config.fish
echo "✓ Fish"

# Starship
if [ -f "$PWD/starship.toml" ]; then
  mkdir -p ~/.config
  ln -sf "$PWD/starship.toml" ~/.config/starship.toml
  echo "✓ Starship"
fi

echo ""
echo "Done! Run these if not already set up:"
echo "  brew install starship tmux"

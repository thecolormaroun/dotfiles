#!/bin/bash
set -e

echo "Installing dotfiles..."

# Ghostty
mkdir -p ~/.config/ghostty
ln -sf "$PWD/ghostty/config" ~/.config/ghostty/config
echo "✓ Ghostty"

# Fish
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
echo "  brew install fish starship tmux"
echo "  echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells"
echo "  chsh -s /opt/homebrew/bin/fish"
echo "  npm install -g dmux"

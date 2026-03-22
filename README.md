# dotfiles

Personal config files for terminal stack: Ghostty + tmux + fish + starship + dmux.

## Quick Start

```bash
git clone https://github.com/thecolormaroun/dotfiles ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

Then if not already done:
```bash
brew install fish starship tmux
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
npm install -g dmux
```

---

## The Stack

| Tool | Purpose |
|------|---------|
| **Ghostty** | Terminal emulator |
| **tmux** | Persistent sessions |
| **fish** | Shell (autocomplete, no config needed) |
| **starship** | Prompt (git info, status) |
| **dmux** | Parallel AI agent orchestrator |

---

## Ghostty

Config: `ghostty/config`

### Prerequisites
- [JetBrains Mono](https://www.jetbrains.com/lp/mono/) font installed
- Catppuccin Mocha theme (ships with Ghostty)

### Keybindings (SAND)
| Action | Shortcut |
|--------|----------|
| **S**plit right | `Cmd+D` |
| **S**plit down | `Cmd+Shift+D` |
| **A**rrange: prev tab | `Cmd+Shift+Left` |
| **A**rrange: next tab | `Cmd+Shift+Right` |
| **N**avigate splits | `Cmd+Alt+Arrow` |
| Equalize splits | `Cmd+Shift+E` |
| **D**ismiss pane | `Cmd+W` |
| Zoom pane | `Cmd+Shift+F` |

---

## Fish + Starship

Config: `fish/config.fish`

Starship initializes automatically. To customize the prompt, create `~/.config/starship.toml`.

---

## dmux

Not a dotfile — installed globally via npm. Run from any git repo:

```bash
cd ~/Projects/my-project
dmux
```

| Key | Action |
|-----|--------|
| `n` | New agent pane (creates worktree + branch + launches Claude) |
| `t` | New plain terminal pane |
| `j` | Jump to a pane |
| `m` | Pane menu (merge, close) |
| `f` | File browser |
| `x` | Close pane |

Optional: set `OPENROUTER_API_KEY` in your env for AI-generated branch names.

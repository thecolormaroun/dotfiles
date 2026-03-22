export PATH="$(npm bin -g):$PATH"
export PATH="$HOME/bin:$PATH"


# ═══════════════════════════════════════════════════════════════
# OpenClaw Credentials (ROO-56 security hardening)
# ═══════════════════════════════════════════════════════════════
export TELEGRAM_BOT_TOKEN="REDACTED_TELEGRAM_TOKEN"
export ELEVENLABS_API_KEY="REDACTED_ELEVENLABS_KEY"
export GEMINI_API_KEY="REDACTED_GEMINI_KEY"
export OPENCLAW_GATEWAY_TOKEN="REDACTED_GATEWAY_TOKEN"

# OpenClaw Completion
source "/Users/maroun/.openclaw/completions/openclaw.zsh"
export PATH="$HOME/.local/bin:$PATH"
export CLAWVAULT_PATH=~/clawd/memory

# Scrapling + Python user packages
export PATH="$PATH:/Users/maroun/Library/Python/3.14/bin"

# ── Starship prompt ───────────────────────────────────────────
eval "$(starship init zsh)"

# ── Auto-tmux (for Claude Island) ─────────────────────────────
[[ -z "$TMUX" ]] && exec tmux new-session -A -s main

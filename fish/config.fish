starship init fish | source

# ── Auto-tmux (for Claude Island phone control) ────
if status is-interactive && not set -q TMUX
    tmux new-session -A -s main
end

# ── Start a project with dmux ──────────────────────
function work
    if test -n "$argv[1]"
        cd ~/Projects/$argv[1]
        dmux
    else
        echo "Usage: work <project-name>"
        echo ""
        ls ~/Projects
    end
end

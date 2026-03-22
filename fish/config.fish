starship init fish | source

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

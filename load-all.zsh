#!/usr/bin/env zsh
# ============================================
# AI Workshop - Shell Configuration Loader
# ============================================
#
# Automatically loads productivity aliases for:
# - Claude Code CLI
# - GitHub Copilot
# - System utilities
#
# Simply add to your ~/.zshrc or ~/.bash_profile:
#   source ~/workshop-shell-config/load-all.zsh
# ============================================

WORKSHOP_CONFIG_DIR="${HOME}/workshop-shell-config"

# Load all alias files
if [[ -d "${WORKSHOP_CONFIG_DIR}/aliases" ]]; then
    # Enable nullglob to avoid errors if no files match
    setopt local_options nullglob 2>/dev/null || true

    for alias_file in "${WORKSHOP_CONFIG_DIR}/aliases"/*.zsh; do
        if [[ -f "$alias_file" ]]; then
            source "$alias_file"
        fi
    done
fi

# Optional: Uncomment to see confirmation when loaded
# echo "✅ AI Workshop shell config loaded!"

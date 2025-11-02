# AI Development Helpers
# GitHub Copilot CLI shortcuts and wrappers
#
# Requires: GitHub CLI with Copilot extension
# Install:
#   brew install gh
#   gh auth login
#   gh extension install github/gh-copilot

# Load GitHub Copilot CLI aliases (ghcs, ghce)
if command -v gh &> /dev/null; then
    eval "$(gh copilot alias -- zsh)"

    # Friendly wrapper aliases for easier access
    aisuggest() { ghcs "$@"; }  # Suggest shell commands
    aiexplain() { ghce "$@"; }  # Explain shell commands
else
    echo "⚠️  GitHub CLI (gh) not found. Install with: brew install gh"
    echo "   Then: gh extension install github/gh-copilot"
fi

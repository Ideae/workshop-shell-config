# AI Development Helpers
# GitHub Copilot CLI shortcuts and wrappers
#
# OPTIONAL: Requires GitHub CLI with Copilot extension
# Install:
#   brew install gh
#   gh auth login
#   gh extension install github/gh-copilot
#
# These aliases will only load if gh is installed.
# No errors if not installed - just silently skipped.

# Load GitHub Copilot CLI aliases (ghcs, ghce)
if command -v gh &> /dev/null; then
    eval "$(gh copilot alias -- zsh)" 2>/dev/null

    # Friendly wrapper aliases for easier access
    aisuggest() { ghcs "$@"; }  # Suggest shell commands
    aiexplain() { ghce "$@"; }  # Explain shell commands
fi

# Silently skip if gh not installed - no error spam!

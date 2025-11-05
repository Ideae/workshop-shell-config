# AI Agent Aliases
# Quick shortcuts for AI coding assistants (Claude Code, Codex, etc.)
#
# Requires: Claude Code CLI or Codex CLI
# Install Claude Code: https://docs.anthropic.com/claude-code

# Claude Code shortcuts (skip permission prompts for faster workflow)
alias cc='claude --dangerously-skip-permissions'
alias ccc='claude --continue --dangerously-skip-permissions'
alias ccv='claude --dangerously-skip-permissions --verbose'
alias cccv='ccc --verbose'

# Sound notifications for Claude workflows (macOS only)
alias claude-done='afplay /System/Library/Sounds/Glass.aiff'
alias claude-waiting='afplay /System/Library/Sounds/Ping.aiff'

# Codex shortcuts (if you use Codex CLI)
alias codexdb='codex --dangerously-bypass-approvals-and-sandbox'

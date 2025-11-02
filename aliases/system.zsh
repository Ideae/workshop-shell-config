# System Utilities & Shortcuts
# General purpose productivity aliases

# Shell management
alias renew='exec $SHELL -l'  # Reload your shell instantly

# Git shortcut
alias g=git  # Type 'g status' instead of 'git status'

# macOS Sleep Management (macOS only)
# Useful when running long tasks and don't want screen to lock
alias sleepon='sudo pmset disablesleep 0 && echo "✅ Sleep enabled successfully" || echo "❌ Failed to enable sleep"'
alias sleepoff='sudo pmset disablesleep 1 && echo "✅ Sleep disabled successfully" || echo "❌ Failed to disable sleep"'
alias sleepstatus='echo "Sleep Status:" && pmset -g | grep SleepDisabled && if [[ $(pmset -g | grep "SleepDisabled" | awk "{print \$2}") == "1" ]]; then echo "→ Sleep is DISABLED (won'\''t sleep on lid close)"; else echo "→ Sleep is ENABLED (will sleep on lid close)"; fi'

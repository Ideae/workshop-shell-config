# AI Workshop - Shell Productivity Toolkit

A curated collection of shell aliases and shortcuts to supercharge your AI-assisted development workflow.

## 🚀 What's Included

### Claude Code Shortcuts
Fast access to Claude Code CLI commands:
- `cc` - Start Claude Code (skip permission prompts)
- `ccc` - Continue previous Claude session
- `ccv` / `cccv` - Verbose modes for debugging
- `claude-done` / `claude-waiting` - Sound notifications (macOS)

### AI Helpers (GitHub Copilot)
Quick AI command assistance:
- `aisuggest` - Get command suggestions from AI
- `aiexplain` - Get explanations for shell commands

### System Utilities
Productivity boosters:
- `renew` - Instantly reload your shell
- `g` - Short alias for `git`
- `sleepon` / `sleepoff` / `sleepstatus` - Manage macOS sleep (great for long-running tasks)

## 📦 Installation

### One-Line Install

```bash
curl -fsSL https://raw.githubusercontent.com/Ideae/workshop-shell-config/main/install.sh | bash
```

Then reload your shell:
```bash
renew
# (or: exec $SHELL -l if 'renew' doesn't work yet)
```

### Manual Install (Alternative)

```bash
# Clone to home directory
git clone https://github.com/Ideae/workshop-shell-config.git ~/workshop-shell-config

# Add to your shell config
echo 'source ~/workshop-shell-config/load-all.zsh' >> ~/.zshrc

# Reload
renew  # (or: exec $SHELL -l)
```

## 🔄 Updates

Get the latest features and improvements:

### Option 1: Simple Update
```bash
curl -fsSL https://raw.githubusercontent.com/Ideae/workshop-shell-config/main/update.sh | bash
```

### Option 2: Git Pull (Recommended)
```bash
cd ~/workshop-shell-config && git pull
renew  # Reload to use updates
```

## 🛠️ Optional Tools

All aliases work without any additional tools, but you can unlock more features:

### Claude Code (Recommended)
For `cc`, `ccc`, `ccv` aliases:
```bash
# Install Claude Code CLI
# Visit: https://docs.anthropic.com/claude-code
```

### GitHub Copilot (Optional)
For `aisuggest` and `aiexplain` aliases:
```bash
# Install GitHub CLI
brew install gh

# Authenticate with GitHub
gh auth login

# Install Copilot extension
gh extension install github/gh-copilot
```

**Note:** If tools aren't installed, their aliases simply won't be available. No errors, no warnings!

## ✅ Verification

Test your setup:

```bash
# Test Claude Code (if installed)
cc --version

# Test AI helpers (if GitHub CLI + Copilot installed)
aisuggest "list files in current directory"
aiexplain "git status"

# Test system utilities (work everywhere)
g status        # Same as 'git status'
sleepstatus     # Check macOS sleep settings
renew           # Reload shell
```

## 📚 Usage Examples

### Claude Code Workflow
```bash
# Start a new Claude session
cc

# Continue previous session
ccc

# Get verbose output for debugging
ccv
```

### AI Helpers
```bash
# Get command suggestions
aisuggest "find large files"

# Understand a command
aiexplain "tar -xzf file.tar.gz"
```

### System Utilities
```bash
# Prevent sleep during long tasks
sleepoff
# ... run your long task ...
sleepon

# Quick git commands
g add .
g commit -m "message"
g push
```

## 🎓 Workshop Tips

1. **Start with `cc`** - Get familiar with Claude Code's interactive mode
2. **Use `aisuggest`** when stuck - It's like having a terminal expert on call
3. **Remember `renew`** - After any shell config changes
4. **Try `g` instead of `git`** - Small change, big time saver

## 🔧 Customization

Want to add your own aliases?

1. Create a new file: `~/workshop-shell-config/aliases/my-aliases.zsh`
2. Add your aliases:
   ```bash
   alias myalias='some command'
   ```
3. Reload: `renew`

The loader automatically picks up all `.zsh` files in the `aliases/` folder!

**Note:** If you add custom aliases, they may be overwritten when you update. Consider:
- Creating a separate personal config in `~/.my-aliases.zsh` and sourcing it separately
- Or forking this repo and customizing your fork

## 🤝 Sharing

This config is designed to be shared! Feel free to:
- Copy this folder to other machines
- Share with colleagues
- Modify for your team's needs
- Add to version control

## 📝 What's NOT Included

This is a minimal, workshop-friendly version. It does NOT include:
- Personal git configurations
- Project-specific settings
- Private keys or credentials
- Machine-specific paths

**Safe to share with anyone!**

## ❓ Troubleshooting

**Aliases not working?**
1. Check that `load-all.zsh` is sourced in your shell config
2. Manually load: `source ~/workshop-shell-config/load-all.zsh`
3. Verify file location: `ls ~/workshop-shell-config/`

**Command not found errors?**
- Install the required tool (see Prerequisites section)
- Or simply ignore - aliases for missing tools won't affect other aliases

**Want to disable certain aliases?**
- Rename the file extension: `mv aliases/claude.zsh aliases/claude.zsh.disabled`
- Then reload: `renew`

## 🎯 Next Steps

1. ✅ Get the config working
2. 📖 Try each alias at least once
3. 🔧 Customize with your own aliases
4. 🚀 Explore Claude Code CLI features
5. 💡 Share what you learn!

---

**Happy coding! 🎉**

For questions or issues, refer back to workshop materials or documentation for each tool.

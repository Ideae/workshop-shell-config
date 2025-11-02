# Quick Installation Guide

## ⚡ One-Line Install (Recommended)

### For Everyone - Single Command

Copy and paste this into your terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/Ideae/workshop-shell-config/main/install.sh | bash
```

Then reload:
```bash
renew
# (or: exec $SHELL -l if 'renew' doesn't work yet - first time only)
```

That's it!

---

## 💻 Manual Installation (Alternative)

### Step 1: Clone
```bash
git clone https://github.com/Ideae/workshop-shell-config.git ~/workshop-shell-config
```

### Step 2: Add to Shell Config

**If using Zsh (macOS default):**
```bash
echo 'source ~/workshop-shell-config/load-all.zsh' >> ~/.zshrc
```

**If using Bash:**
```bash
echo 'source ~/workshop-shell-config/load-all.zsh' >> ~/.bash_profile
```

### Step 3: Reload
```bash
renew  # (or: exec $SHELL -l)
```

### Step 4: Test
```bash
# Try these commands:
renew           # Reload shell (should work immediately)
g status        # Git shortcut
cc --version    # Claude Code (if installed)
```

## That's it! 🎉

See `README.md` for full documentation and usage examples.

## Quick Tool Installation (Optional)

### Claude Code CLI
Visit: https://docs.anthropic.com/claude-code

### GitHub Copilot CLI
```bash
brew install gh
gh auth login
gh extension install github/gh-copilot
```

### All tools are optional!
The config works with whatever you have installed.

# 🚀 Quick Start - AI Workshop Shell Config

**Total time: 1 minute**

## Installation (Copy & Paste)

```
┌─────────────────────────────────────────┐
│  Open Terminal and paste this:         │
│                                         │
│  curl -fsSL https://raw.githubus...    │
│  /install.sh | bash                    │
│                                         │
│  Then: exec $SHELL -l                  │
└─────────────────────────────────────────┘
              ⬇️
┌─────────────────────────────────────────┐
│  ✅ DONE!                               │
│                                         │
│  Try: renew                             │
└─────────────────────────────────────────┘
```

**Full command:**
```bash
curl -fsSL https://raw.githubusercontent.com/Ideae/workshop-shell-config/main/install.sh | bash
renew  # (or: exec $SHELL -l if 'renew' not working yet)
```

## First Commands to Try

```bash
renew          # Reload your shell - works instantly!
g status       # Git shortcut (same as 'git status')
```

## What You Got

**Instant productivity aliases:**
- `cc` - Start Claude Code (fast mode)
- `ccc` - Continue last Claude session
- `renew` - Reload terminal instantly
- `g` - Git shortcut (saves typing)
- `aisuggest` - Ask AI for command help
- `aiexplain` - Understand any command
- `sleepon`/`sleepoff` - Control Mac sleep

## Try It Out!

### Example 1: Quick Git
```bash
g add .
g commit -m "my changes"
g push
```

### Example 2: Ask AI for Help
```bash
aisuggest "find large files"
# AI will suggest: find . -type f -size +100M

aiexplain "grep -r TODO ."
# AI explains what this command does
```

### Example 3: Use Claude Code
```bash
cc
# Start interactive Claude session
# Ask: "help me debug this error"
```

## Need Help?

**See full docs:** `~/workshop-shell-config/README.md`

**Update anytime:**
```bash
cd ~/workshop-shell-config && git pull
renew
```

**Uninstall:**
1. Remove these lines from `~/.zshrc` and `~/.bash_profile`:
   ```bash
   # AI Workshop Shell Config
   source ~/workshop-shell-config/load-all.zsh
   ```
2. Delete the folder: `rm -rf ~/workshop-shell-config`

## What's Next?

1. ✅ Installation complete
2. 🎮 Try the commands above
3. 📖 Read README.md for all features
4. 🔧 Install optional tools:
   - Claude Code CLI: https://docs.anthropic.com/claude-code
   - GitHub Copilot: `brew install gh`

---

**Questions during workshop?** Ask the instructor!

**After workshop?** Check the README or documentation for each tool.

# Contributing to AI Workshop Shell Config

Thanks for your interest in contributing! This project is designed to help people get started with AI-assisted development workflows.

## 🎯 Goals

This project aims to:
- Provide beginner-friendly shell aliases for AI tools
- Be easy to install and update
- Work cross-platform (primarily macOS, but compatible with Linux)
- Stay minimal and focused

## 🛠️ How to Contribute

### Reporting Issues

Found a bug or have a suggestion? [Open an issue](../../issues/new) with:
- Clear description of the problem/suggestion
- Your OS and shell (e.g., macOS 14.0, zsh 5.9)
- Steps to reproduce (for bugs)

### Adding Aliases

Want to add a new alias?

1. **Fork the repo**
2. **Clone your fork:**
   ```bash
   git clone https://github.com/Ideae/workshop-shell-config.git
   cd workshop-shell-config
   ```

3. **Create a new alias file** (if needed):
   ```bash
   # For a specific tool/category
   touch aliases/your-tool.zsh
   ```

4. **Add your aliases** with comments:
   ```bash
   # Your Tool Shortcuts
   # Description of what this tool does
   #
   # Requires: tool-name (installation instructions)

   # Brief description of what this alias does
   alias shortalias='command here'
   ```

5. **Test locally:**
   ```bash
   source ~/workshop-shell-config/load-all.zsh
   # Try your new alias
   ```

6. **Commit and push:**
   ```bash
   git add aliases/your-tool.zsh
   git commit -m "Add aliases for your-tool"
   git push origin main
   ```

7. **Open a Pull Request**

### Guidelines

**Do:**
- ✅ Add helpful comments explaining each alias
- ✅ Include installation requirements in comments
- ✅ Keep aliases simple and focused
- ✅ Test before submitting
- ✅ Follow existing naming conventions

**Don't:**
- ❌ Add aliases that require paid tools (unless they have free tiers)
- ❌ Include machine-specific paths
- ❌ Add aliases that modify system settings without user understanding
- ❌ Include personal information or credentials

### Code Style

```bash
# Good: Clear comment, generic path
alias myalias='command --flag'

# Good: Explains requirement
# Requires: brew install tool-name
alias tool='tool-name --common-flag'

# Bad: No explanation
alias x='complicated command here'

# Bad: Machine-specific path
alias myalias='/Users/specific-user/path/command'
```

## 🔄 Development Workflow

### Local Testing

```bash
# Make changes
vim aliases/your-file.zsh

# Reload to test
source load-all.zsh

# Or use the alias!
renew
```

### Updating Documentation

If you add new aliases, update:
- `README.md` - Add to the feature list
- `QUICKSTART.md` - If it's a commonly-used alias

## 📝 Pull Request Process

1. Ensure your code works on your machine
2. Update documentation if needed
3. Open a PR with a clear description:
   - What aliases you added/changed
   - Why they're useful
   - Any prerequisites

## 🙏 Recognition

Contributors will be listed in the README. Thanks for helping make AI development more accessible!

## ❓ Questions?

Not sure about something? Open an issue and ask! We're here to help.

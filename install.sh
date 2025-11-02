#!/bin/bash

# ============================================
# AI Workshop Shell Config - Installer
# ============================================
# Install with:
#   curl -fsSL https://raw.githubusercontent.com/Ideae/workshop-shell-config/main/install.sh | bash
# ============================================

set -e  # Exit on error

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo ""
echo "================================================"
echo "  AI Workshop - Shell Config Installer"
echo "================================================"
echo ""

TARGET_DIR="$HOME/workshop-shell-config"
REPO_URL="https://github.com/Ideae/workshop-shell-config.git"  # UPDATE THIS!
SOURCE_LINE='source ~/workshop-shell-config/load-all.zsh'

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo -e "${RED}❌ Error: git is not installed${NC}"
    echo ""
    echo "Please install git first:"
    echo "  brew install git"
    echo ""
    exit 1
fi

# Function to add source line to config file
add_source_line() {
    local config_file="$1"
    local config_name="$2"

    # Create config file if it doesn't exist
    if [[ ! -f "$config_file" ]]; then
        touch "$config_file"
        echo -e "${YELLOW}📝 Created $config_name${NC}"
    fi

    # Check if source line already exists
    if grep -qF "$SOURCE_LINE" "$config_file"; then
        echo -e "${GREEN}✓${NC} $config_name already configured"
        return 0
    fi

    # Add source line with comments
    echo "" >> "$config_file"
    echo "# AI Workshop Shell Config" >> "$config_file"
    echo "# Update: cd ~/workshop-shell-config && git pull" >> "$config_file"
    echo "$SOURCE_LINE" >> "$config_file"

    echo -e "${GREEN}✓${NC} Added to $config_name"
}

# Step 1: Clone or update repository
echo -e "${BLUE}Step 1:${NC} Installing configuration files..."

if [[ -d "$TARGET_DIR" ]]; then
    if [[ -d "$TARGET_DIR/.git" ]]; then
        echo -e "${YELLOW}⚠️  workshop-shell-config already exists${NC}"
        echo "   Updating existing installation..."
        cd "$TARGET_DIR"
        git pull origin main 2>&1 || git pull origin master 2>&1 || echo "   Note: Could not update (may have local changes)"
        echo -e "${GREEN}✓${NC} Updated existing installation"
    else
        echo -e "${RED}❌ Error: ~/workshop-shell-config exists but is not a git repo${NC}"
        echo "   Please remove it or backup and try again:"
        echo "   mv ~/workshop-shell-config ~/workshop-shell-config.backup"
        exit 1
    fi
else
    echo "   Cloning repository..."
    git clone "$REPO_URL" "$TARGET_DIR"
    echo -e "${GREEN}✓${NC} Cloned repository to $TARGET_DIR"
fi

echo ""

# Step 2: Configure shell startup files
echo -e "${BLUE}Step 2:${NC} Configuring shell startup files..."

add_source_line "$HOME/.zshrc" "~/.zshrc"
add_source_line "$HOME/.bash_profile" "~/.bash_profile"

if [[ -f "$HOME/.bashrc" ]]; then
    add_source_line "$HOME/.bashrc" "~/.bashrc"
fi

echo ""

# Step 3: Verify
echo -e "${BLUE}Step 3:${NC} Verifying installation..."

if [[ -f "$TARGET_DIR/load-all.zsh" ]] && \
   [[ -d "$TARGET_DIR/.git" ]]; then
    echo -e "${GREEN}✓${NC} Installation complete"
else
    echo -e "${RED}⚠️  Installation may be incomplete${NC}"
fi

echo ""
echo "================================================"
echo -e "${GREEN}✅ Success!${NC}"
echo "================================================"
echo ""
echo -e "${BLUE}📚 What was installed:${NC}"
echo "   • Claude Code shortcuts (cc, ccc, ccv, cccv)"
echo "   • AI helpers (aisuggest, aiexplain)"
echo "   • System utilities (renew, g, sleep management)"
echo ""
echo -e "${BLUE}🚀 Next Steps:${NC}"
echo ""
echo "   1. Reload your shell:"
echo "      exec \$SHELL -l"
echo ""
echo "   2. Try these commands:"
echo "      renew          # Reload shell"
echo "      g status       # Git shortcut"
echo "      cc --version   # Claude Code (if installed)"
echo ""
echo -e "${BLUE}🔄 To update later:${NC}"
echo "   cd ~/workshop-shell-config && git pull"
echo ""
echo -e "${BLUE}📖 Documentation:${NC}"
echo "   ~/workshop-shell-config/README.md"
echo ""
echo "================================================"
echo ""

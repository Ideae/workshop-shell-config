#!/bin/bash

# ============================================
# AI Workshop Shell Config - Updater
# ============================================
# Update with:
#   curl -fsSL https://raw.githubusercontent.com/Ideae/workshop-shell-config/main/update.sh | bash
#
# Or simply:
#   cd ~/workshop-shell-config && git pull
# ============================================

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

TARGET_DIR="$HOME/workshop-shell-config"

echo ""
echo "================================================"
echo "  AI Workshop - Config Updater"
echo "================================================"
echo ""

# Check if installation exists
if [[ ! -d "$TARGET_DIR" ]]; then
    echo -e "${RED}❌ Error: workshop-shell-config not found${NC}"
    echo ""
    echo "Please install first:"
    echo "  curl -fsSL https://raw.githubusercontent.com/Ideae/workshop-shell-config/main/install.sh | bash"
    echo ""
    exit 1
fi

# Check if it's a git repo
if [[ ! -d "$TARGET_DIR/.git" ]]; then
    echo -e "${RED}❌ Error: ~/workshop-shell-config is not a git repository${NC}"
    echo ""
    echo "This may be an old installation. Please reinstall:"
    echo "  curl -fsSL https://raw.githubusercontent.com/Ideae/workshop-shell-config/main/install.sh | bash"
    echo ""
    exit 1
fi

# Update
echo -e "${BLUE}Updating workshop-shell-config...${NC}"
echo ""

cd "$TARGET_DIR"

# Check for local changes
if [[ -n $(git status --porcelain) ]]; then
    echo -e "${YELLOW}⚠️  You have local changes${NC}"
    echo ""
    git status --short
    echo ""
    echo "Stashing local changes..."
    git stash save "Auto-stash before update $(date '+%Y-%m-%d %H:%M:%S')"
    echo ""
fi

# Pull updates
echo "Pulling latest changes..."
if git pull origin main 2>&1 || git pull origin master 2>&1; then
    echo ""
    echo -e "${GREEN}✅ Updated successfully!${NC}"

    # Show what changed
    echo ""
    echo -e "${BLUE}Recent changes:${NC}"
    git log --oneline -5

else
    echo ""
    echo -e "${RED}❌ Update failed${NC}"
    echo "Try manually: cd ~/workshop-shell-config && git pull"
    exit 1
fi

echo ""
echo "================================================"
echo ""
echo -e "${BLUE}🚀 Next step:${NC}"
echo "   Reload your shell to use the latest version:"
echo "   exec \$SHELL -l"
echo ""
echo "   Or simply type: ${GREEN}renew${NC}"
echo ""
echo "================================================"
echo ""

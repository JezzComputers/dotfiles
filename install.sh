#!/bin/bash
# =============================================================================
# Complete Installation Script for Oh My Zsh + Powerlevel10k + Dotfiles
# =============================================================================
# This script installs everything needed for the dotfiles configuration:
# - Oh My Zsh framework
# - Powerlevel10k theme
# - Zsh Syntax Highlighting plugin
# - Zsh Autosuggestions plugin
# - This dotfiles configuration
#
# Usage: ./install.sh

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Helper functions
print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

# Check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Main installation
main() {
    echo ""
    echo "======================================"
    echo "  Dotfiles Installation Script"
    echo "======================================"
    echo ""

    # Check for required commands
    print_info "Checking prerequisites..."
    
    if ! command_exists git; then
        print_error "Git is not installed. Please install git first."
        exit 1
    fi
    print_success "Git is installed"

    if ! command_exists zsh; then
        print_error "Zsh is not installed. Please install zsh first."
        echo ""
        echo "Installation commands:"
        echo "  Ubuntu/Debian: sudo apt install zsh"
        echo "  macOS: brew install zsh"
        echo "  Fedora: sudo dnf install zsh"
        exit 1
    fi
    print_success "Zsh is installed ($(zsh --version))"

    if ! command_exists curl && ! command_exists wget; then
        print_error "Neither curl nor wget is installed. Please install one of them."
        exit 1
    fi
    print_success "Download tool available"

    echo ""

    # Install Oh My Zsh
    if [ -d "$HOME/.oh-my-zsh" ]; then
        print_warning "Oh My Zsh is already installed. Skipping..."
    else
        print_info "Installing Oh My Zsh..."
        if command_exists curl; then
            sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
        else
            sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
        fi
        print_success "Oh My Zsh installed"
    fi

    # Install Powerlevel10k theme
    if [ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
        print_warning "Powerlevel10k is already installed. Skipping..."
    else
        print_info "Installing Powerlevel10k theme..."
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
            "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
        print_success "Powerlevel10k theme installed"
    fi

    # Install Zsh Syntax Highlighting
    if [ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
        print_warning "Zsh Syntax Highlighting is already installed. Skipping..."
    else
        print_info "Installing Zsh Syntax Highlighting plugin..."
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
            "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
        print_success "Zsh Syntax Highlighting installed"
    fi

    # Install Zsh Autosuggestions
    if [ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
        print_warning "Zsh Autosuggestions is already installed. Skipping..."
    else
        print_info "Installing Zsh Autosuggestions plugin..."
        git clone https://github.com/zsh-users/zsh-autosuggestions \
            "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
        print_success "Zsh Autosuggestions installed"
    fi

    echo ""

    # Backup existing configurations
    print_info "Backing up existing configurations..."
    BACKUP_SUFFIX=".backup.$(date +%Y%m%d_%H%M%S)"
    
    if [ -f "$HOME/.zshrc" ]; then
        cp "$HOME/.zshrc" "$HOME/.zshrc$BACKUP_SUFFIX"
        print_success "Backed up .zshrc to .zshrc$BACKUP_SUFFIX"
    fi
    
    if [ -f "$HOME/.p10k.zsh" ]; then
        cp "$HOME/.p10k.zsh" "$HOME/.p10k.zsh$BACKUP_SUFFIX"
        print_success "Backed up .p10k.zsh to .p10k.zsh$BACKUP_SUFFIX"
    fi

    # Install dotfiles
    print_info "Installing dotfiles configuration..."
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    
    if [ ! -f "$SCRIPT_DIR/.zshrc" ] || [ ! -f "$SCRIPT_DIR/.p10k.zsh" ]; then
        print_error "Configuration files not found in $SCRIPT_DIR"
        print_info "Make sure you're running this script from the dotfiles directory"
        exit 1
    fi

    cp "$SCRIPT_DIR/.zshrc" "$HOME/.zshrc"
    cp "$SCRIPT_DIR/.p10k.zsh" "$HOME/.p10k.zsh"
    chmod 644 "$HOME/.zshrc" "$HOME/.p10k.zsh"
    print_success "Dotfiles installed"

    echo ""
    echo "======================================"
    print_success "Installation completed successfully!"
    echo "======================================"
    echo ""
    
    # Check if Zsh is the default shell
    if [ "$SHELL" != "$(which zsh)" ]; then
        print_warning "Zsh is not your default shell yet."
        echo ""
        echo "To set Zsh as your default shell, run:"
        echo "  chsh -s \$(which zsh)"
        echo ""
    fi

    print_info "Next steps:"
    echo "  1. If fonts don't display correctly, install MesloLGS NF font"
    echo "     (see README.md for instructions)"
    echo "  2. Restart your terminal or run: exec zsh"
    echo "  3. Enjoy your new terminal setup! 🚀"
    echo ""
}

# Run main function
main "$@"

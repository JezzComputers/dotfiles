# Zsh Dotfiles Configuration

Dotfiles for a Zsh environment with Oh My Zsh and Powerlevel10k theme for a simple, modern, feature-rich terminal experience.

## Overview

This repository contains configuration files for Zsh shell with a visually appealing and highly functional setup:

- **Oh My Zsh**: A delightful community-driven framework for managing Zsh configuration
- **Powerlevel10k Theme**: A fast and flexible Zsh theme with beautiful prompt styling
- **Essential Plugins**: Git integration, syntax highlighting, and autosuggestions

## Installation Guide

### Step 1: Install Zsh & git

First, install Zsh and git if you don't have them already:

```bash
# Ubuntu/Debian
sudo apt update && sudo apt install zsh git -y

# Arch Linux
sudo pacman -S zsh git
```

Verify installation:

```bash
zsh --version
```

### Step 2: Install Oh My Zsh

Install Oh My Zsh framework:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

This will:

- Install Oh My Zsh to `~/.oh-my-zsh`
- Back up your existing `~/.zshrc` file
- Create a new default `~/.zshrc`
- Set Zsh as your default shell (will prompt for password)

### Step 3: Install Powerlevel10k Theme

Clone Powerlevel10k into your Oh My Zsh themes directory:

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Step 4: Install Zsh Plugins

Install the required plugins for syntax highlighting and autosuggestions:

**Zsh Syntax Highlighting:**

```bash
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

**Zsh Autosuggestions:**

```bash
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Step 5: Install Recommended Fonts

Download and install the `Fira Code Nerd Font` manually:

```bash
# Create fonts directory if it doesn't exist
mkdir -p ~/.local/share/fonts/FiraCodeNerdFont
# Or for system-wide
mkdir -p /usr/share/fonts/FiraCodeNerdFont

# Change to fonts directory
cd ~/.local/share/fonts
# Or for system-wide
cd /usr/share/fonts

# Download the fonts
wget -P ~/.local/share/fonts/FiraCodeNerdFont https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip
# Or for system-wide
wget -P /usr/share/fonts/FiraCodeNerdFont https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip

# Extract the fonts
unzip ~/.local/share/fonts/FiraCodeNerdFont/FiraCode.zip -d ~/.local/share/fonts/FiraCodeNerdFont/
# Or for system-wide
unzip /usr/share/fonts/FiraCodeNerdFont/FiraCode.zip -d /usr/share/fonts/FiraCodeNerdFont/

# Refresh font cache
fc-cache -fv
```

### Step 6: Clone and Install This Dotfiles Configuration

Now clone this repository and apply the configuration:

```bash
# Clone the repository
git clone --depth 1 https://github.com/jezza5400/dotfiles.git
cd ~/dotfiles

# Back up your current configurations (if they exist)
mv ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S) 2>/dev/null || true
mv ~/.p10k.zsh ~/.p10k.zsh.backup.$(date +%Y%m%d_%H%M%S) 2>/dev/null || true

# Copy the dotfiles to your home directory
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
cp -r .config/* ~/.config/

# Make sure the files have proper permissions
chmod 644 ~/.zshrc ~/.p10k.zsh
```

### Step 7: Set Zsh as Your Default Shell

If Zsh isn't already your default shell, set it:

```bash
chsh -s $(command -v zsh)
```

You'll be prompted to enter your password.

### Step 8: Apply the Configuration

Restart your terminal or reload the configuration:

```bash
# Close and reopen your terminal
# OR
# Source the configuration
exec zsh
```

## Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements!

## License

These configuration files are provided as-is for personal use. The underlying software (Oh My Zsh, Powerlevel10k, etc.) are covered by their respective licenses.

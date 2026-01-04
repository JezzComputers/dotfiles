# Zsh Dotfiles Configuration

A beautifully configured Zsh environment with Oh My Zsh and Powerlevel10k theme for a modern, feature-rich terminal experience.

## 📋 Overview

This repository contains configuration files for Zsh shell with a visually appealing and highly functional setup:

- **Oh My Zsh**: A delightful community-driven framework for managing Zsh configuration
- **Powerlevel10k Theme**: A fast and flexible Zsh theme with beautiful prompt styling
- **Essential Plugins**: Git integration, syntax highlighting, and autosuggestions

## ✨ Features

### Visual Enhancements
- **Powerline-style prompt** with colorful rainbow theme
- **Angled separators** and sharp heads for a modern look
- **2-line prompt** with disconnected layout for better readability
- **Instant prompt** for ultra-fast shell startup

### Functionality
- **Git integration** with visual status indicators
- **Syntax highlighting** for command validation as you type
- **Auto-suggestions** based on command history
- **Command execution time** display
- **Background jobs** indicator
- **Exit status** display for failed commands

### Development Tools Support
The prompt automatically detects and displays versions for:
- Python (virtualenv, pyenv, anaconda)
- Node.js (nvm, nodenv)
- Ruby (rbenv, rvm)
- Go (goenv)
- Java (jenv)
- And many more...

## 📦 Prerequisites

Before using these configuration files, you'll need to install the following software:

### 1. Zsh
```bash
# Ubuntu/Debian
sudo apt install zsh

# macOS (usually pre-installed)
brew install zsh

# Fedora
sudo dnf install zsh
```

### 2. Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 3. Powerlevel10k Theme
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### 4. Zsh Plugins

**Zsh Syntax Highlighting:**
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

**Zsh Autosuggestions:**
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### 5. Recommended Fonts

For the best experience, install a Nerd Font or Powerline font:

```bash
# Download and install MesloLGS NF (recommended by Powerlevel10k)
# The font installation will be prompted during p10k configuration
# Or download manually from:
# https://github.com/romkatv/powerlevel10k#manual-font-installation
```

## 🚀 Complete Installation Guide

### Quick Installation (Recommended)

The easiest way to install everything is using the provided installation script:

```bash
# Clone the repository
git clone https://github.com/JezzComputers/dotfiles.git
cd dotfiles

# Run the installation script
chmod +x install.sh
./install.sh
```

The script will automatically:
- ✅ Check prerequisites
- ✅ Install Oh My Zsh
- ✅ Install Powerlevel10k theme
- ✅ Install required plugins (syntax highlighting, autosuggestions)
- ✅ Backup your existing configurations
- ✅ Install the dotfiles

After running the script, just restart your terminal or run `exec zsh`.

---

### Manual Installation (Step-by-Step)

If you prefer to install everything manually, follow these steps in order:

### Step 1: Install Zsh

First, install Zsh if you don't have it already:

```bash
# Ubuntu/Debian
sudo apt update
sudo apt install zsh -y

# macOS (usually pre-installed, but you can update it)
brew install zsh

# Fedora/RHEL
sudo dnf install zsh -y

# Arch Linux
sudo pacman -S zsh
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

**Alternative if you don't have `curl`:**
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

This will:
- Install Oh My Zsh to `~/.oh-my-zsh`
- Back up your existing `~/.zshrc` file
- Create a new default `~/.zshrc`
- Set Zsh as your default shell (will prompt for password)

### Step 3: Install Powerlevel10k Theme

Clone Powerlevel10k into your Oh My Zsh themes directory:

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Step 4: Install Zsh Plugins

Install the required plugins for syntax highlighting and autosuggestions:

**Zsh Syntax Highlighting:**
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

**Zsh Autosuggestions:**
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Step 5: Install Recommended Fonts

For the best visual experience, install the recommended fonts:

**Option A: Automatic Installation (Recommended)**
The Powerlevel10k configuration wizard will prompt you to install fonts automatically.

**Option B: Manual Installation**

Download and install the MesloLGS NF fonts manually:

```bash
# Create fonts directory if it doesn't exist
mkdir -p ~/.local/share/fonts

# Download the fonts
cd ~/.local/share/fonts
curl -fLo "MesloLGS NF Regular.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
curl -fLo "MesloLGS NF Bold.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
curl -fLo "MesloLGS NF Italic.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
curl -fLo "MesloLGS NF Bold Italic.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

# Refresh font cache
fc-cache -fv
```

**Configure your terminal to use the font:**
- **GNOME Terminal / Ubuntu**: Edit → Preferences → Profile → Text → Font → Select "MesloLGS NF"
- **iTerm2 (macOS)**: Preferences → Profiles → Text → Font → Select "MesloLGS NF"
- **Windows Terminal**: Settings → Profiles → Appearance → Font face → Select "MesloLGS NF"
- **VS Code**: Settings → Terminal → Font Family → Add `'MesloLGS NF'`

### Step 6: Clone and Install This Dotfiles Configuration

Now clone this repository and apply the configuration:

```bash
# Clone the repository
git clone https://github.com/JezzComputers/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Backup your current configurations (if they exist)
mv ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S) 2>/dev/null || true
mv ~/.p10k.zsh ~/.p10k.zsh.backup.$(date +%Y%m%d_%H%M%S) 2>/dev/null || true

# Copy the dotfiles to your home directory
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

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

### Step 9: Verify Installation

After reloading, you should see:
1. The Powerlevel10k instant prompt
2. A colorful two-line prompt
3. Git information if you're in a git repository
4. Syntax highlighting as you type
5. Auto-suggestions based on your history (start typing to see them)

Test the plugins:
```bash
# Type a git command - should see syntax highlighting in green
git status

# Type a command you've used before - should see gray auto-suggestion
# Press → (right arrow) to accept the suggestion
```

## ⚙️ Configuration Details

### .zshrc Configuration

The `.zshrc` file is organized into the following sections:

#### 1. Powerlevel10k Instant Prompt
Enables instant prompt for faster shell startup. This must be at the top of the file.

#### 2. Oh My Zsh Configuration
- **Theme**: Powerlevel10k
- **Path**: `$HOME/.oh-my-zsh`

#### 3. Completion Options
- Case-sensitive completion (optional)
- Hyphen-insensitive completion (optional)

#### 4. Update Behavior
Configure how Oh My Zsh updates:
- `disabled`: No automatic updates
- `auto`: Update automatically
- `reminder`: Remind when updates are available

#### 5. Display and Behavior Options
- Magic functions for URL pasting
- Colors in `ls` command
- Auto-setting terminal title
- Command auto-correction

#### 6. Version Control Options
- Control marking of untracked files in repositories
- Improves performance for large repositories

#### 7. History Configuration
- Customize command execution timestamp format
- History display options

#### 8. Plugin Configuration
Active plugins:
- **git**: Git command aliases and prompt integration
- **zsh-syntax-highlighting**: Real-time command syntax highlighting
- **zsh-autosuggestions**: Fish-like autosuggestions based on history

#### 9. User Configuration
Section for personal customizations:
- PATH modifications
- Language environment settings
- Editor preferences
- Compilation flags
- Custom aliases

### .p10k.zsh Configuration

The `.p10k.zsh` file contains the Powerlevel10k theme configuration:

#### Prompt Layout
**Left Prompt (Line 1):**
- Current directory
- Git status with branch and changes

**Left Prompt (Line 2):**
- Prompt character (changes color based on command success/failure)

**Right Prompt:**
- Exit status of last command
- Command execution time
- Background jobs indicator
- Virtual environment indicators (Python, Node.js, Ruby, etc.)
- Cloud service contexts (AWS, Azure, GCloud)
- Container contexts (Docker, Kubernetes)

#### Visual Style
- **Style**: Powerline with rainbow colors
- **Separators**: Angled with sharp heads and flat tails
- **Lines**: 2-line prompt with disconnected layout
- **Frame**: Right-side frame
- **Ornaments**: Lightest style for minimal distraction
- **Spacing**: Sparse for better readability
- **Transient Prompt**: Enabled for cleaner command history

## 🎨 Customization

### Reconfigure Powerlevel10k
To change the appearance of your prompt:
```bash
p10k configure
```

This will launch an interactive wizard that lets you:
- Choose prompt style (lean, classic, rainbow, pure)
- Select character set (Unicode, ASCII)
- Configure prompt elements
- Set colors and separators

### Add Custom Aliases
Add your aliases to the `.zshrc` file in the Aliases section, or create separate files:
```bash
# Create custom alias file
echo "alias myalias='my command'" > ~/.oh-my-zsh/custom/aliases.zsh
```

### Enable Additional Plugins
Edit `.zshrc` and add plugins to the `plugins` array:
```bash
plugins=(git zsh-syntax-highlighting zsh-autosuggestions docker npm)
```

Available plugins can be found in:
- `$HOME/.oh-my-zsh/plugins/` (built-in plugins)
- `$HOME/.oh-my-zsh/custom/plugins/` (custom plugins)

### Customize Colors
Edit the colormap in `.p10k.zsh` or use the provided one-liner to explore colors:
```bash
for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
```

## 📸 Examples

### Basic Prompt Appearance

The prompt displays a two-line layout with information spread across the terminal:

```
┌─────────────────────────────────────────────────────────────────────────┐
│                                                                         │
│  ~/projects/dotfiles  main ✓                           ✓ 2s          │
│  ❯                                                                      │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

**Features shown:**
- **Directory**: `~/projects/dotfiles` (with path shortening)
- **Git branch**: `main` (displayed in color)
- **Git status**: `✓` (clean working directory)
- **Command exit status**: `✓` (previous command succeeded)
- **Execution time**: `2s` (time the last command took)
- **Prompt character**: `❯` (green = success, red = failure)

### With Python Virtual Environment

When working in a Python virtual environment:

```
┌─────────────────────────────────────────────────────────────────────────┐
│                                                                         │
│  ~/dev/my-app  main ✓                      🐍 3.11.0 (venv)          │
│  ❯ python manage.py runserver                                          │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

**Additional feature:**
- **Python indicator**: `🐍 3.11.0 (venv)` shows active virtual environment and version

### With Git Changes and Background Job

When you have uncommitted changes and background processes:

```
┌─────────────────────────────────────────────────────────────────────────┐
│                                                                         │
│  ~/projects/dotfiles  main ✗                              ⚙ 1        │
│  ❯                                                                      │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

**Additional features:**
- **Git status**: `✗` (uncommitted changes in working directory)
- **Background jobs**: `⚙ 1` (one job running in background)

### After Failed Command

When a command fails:

```
┌─────────────────────────────────────────────────────────────────────────┐
│                                                                         │
│  ~/projects/dotfiles  main ✓                           ✘ 1           │
│  ❯                                                                      │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

**Features shown:**
- **Exit status**: `✘ 1` (command failed with exit code 1)
- **Prompt character**: `❯` (displayed in red to indicate failure)

### Color Scheme

The Powerlevel10k rainbow theme uses vibrant colors:
- **Directory**: Blue/Cyan background with white text
- **Git branch**: Yellow/Orange background with black text
- **Status indicators**: Green (✓) for success, Red (✗/✘) for errors
- **Prompt character**: Green when previous command succeeded, Red when failed
- **Environment indicators**: Various colors for different tools (Python, Node.js, etc.)

## 🔧 Troubleshooting

### Fonts Not Displaying Correctly
**Problem**: Icons and symbols appear as boxes or question marks.

**Solution**: Install a Nerd Font or Powerline font and configure your terminal to use it.

### Slow Shell Startup
**Problem**: Terminal takes a long time to open.

**Solution**: 
1. Disable unnecessary plugins in `.zshrc`
2. Ensure instant prompt is enabled (it should be by default)
3. Check for slow commands in your `.zshrc`

### Plugin Not Working
**Problem**: A plugin doesn't seem to be active.

**Solution**:
1. Verify the plugin is installed in `~/.oh-my-zsh/custom/plugins/`
2. Check that the plugin is listed in the `plugins=()` array in `.zshrc`
3. Reload your shell: `source ~/.zshrc`

### Git Status Not Showing
**Problem**: Git information doesn't appear in the prompt.

**Solution**:
1. Make sure you're in a Git repository
2. Check if `vcs` segment is enabled in `.p10k.zsh`
3. Verify Git is installed: `git --version`

## 📚 Additional Resources

### Documentation
- [Oh My Zsh Documentation](https://github.com/ohmyzsh/ohmyzsh/wiki)
- [Powerlevel10k Documentation](https://github.com/romkatv/powerlevel10k)
- [Zsh Documentation](http://zsh.sourceforge.net/Doc/)

### Plugin Repositories
- [Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [Zsh Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### Font Resources
- [Nerd Fonts](https://www.nerdfonts.com/)
- [Powerline Fonts](https://github.com/powerline/fonts)

## 🤝 Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements!

## 📄 License

These configuration files are provided as-is for personal use. The underlying software (Oh My Zsh, Powerlevel10k, etc.) are covered by their respective licenses.

## 🙏 Acknowledgments

- [Oh My Zsh](https://ohmyz.sh/) - Zsh configuration framework
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) - Zsh theme
- [Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [Zsh Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

---

**Enjoy your beautiful and functional Zsh terminal! 🚀**

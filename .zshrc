# =============================================================================
# Powerlevel10k Instant Prompt
# =============================================================================
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# =============================================================================
# Oh My Zsh Configuration
# =============================================================================
# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme Configuration
# Set name of the theme to load. Set to "random" to load a random theme.
# To know which theme was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# =============================================================================
# Update Behavior
# =============================================================================
# Uncomment one of the following lines to change the auto-update behavior:
# zstyle ':omz:update' mode disabled  # Disable automatic updates
# zstyle ':omz:update' mode auto      # Update automatically without asking
zstyle ':omz:update' mode reminder  # Remind to update when it's time

# Uncomment the following line to change how often to auto-update (in days)
# zstyle ':omz:update' frequency 13

# =============================================================================
# Display and Behavior Options
# =============================================================================
# Uncomment the following line if pasting URLs and other text is messed up
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction
ENABLE_CORRECTION="true"

# =============================================================================
# Plugin Configuration
# =============================================================================
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# =============================================================================
# User Configuration
# =============================================================================

# Manual path configuration (optional)
# If you come from bash you might have to change your $PATH
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Manual pages path
export MANPATH="/usr/local/man:$MANPATH"

# Language environment
# You may need to manually set your language environment
export LANG=en_AU.UTF-8

# Editor configuration
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='micro'
else
	export EDITOR='micro'
fi

# Compilation flags
export ARCHFLAGS="-arch $(uname -m)"

# =============================================================================
# Powerlevel10k Theme Customization
# =============================================================================
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

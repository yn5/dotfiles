#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Print with color
print_status() {
    echo -e "${GREEN}==>${NC} $1"
}

print_error() {
    echo -e "${RED}==>${NC} $1"
}

# Check if Homebrew is installed, install if not
install_homebrew() {
    if ! command -v brew &> /dev/null; then
        print_status "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo >> /Users/yn5/.zprofile
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/yn5/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    else
        print_status "Homebrew already installed"
    fi
}

# Install dependencies using Homebrew
install_dependencies() {
    print_status "Installing dependencies..."
    
    brew update

    # Install all required applications
    brew install git
    brew install neovim
    brew install nvm
    brew install tmux
    brew install zsh
    brew install diff-so-fancy
    brew install --cask ghostty
    brew install --cask visual-studio-code
    
    # Install Dark Notify (for automatic dark mode in tmux and neovim)
    # Since there isn't a binary for Silicon chips Rosetta should be installed. See https://github.com/cormacrelf/dark-notify/issues/11.
    /usr/sbin/softwareupdate --install-rosetta --agree-to-license
    brew install cormacrelf/tap/dark-notify

    # Install Oh My Zsh
    if [ ! -d "$HOME/.oh-my-zsh" ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi
    
}

# Create necessary directories
create_directories() {
    print_status "Creating config directories..."
    
    mkdir -p ~/.config/ghostty
    mkdir -p ~/.config/git
    mkdir -p ~/.config/tmux
    mkdir -p "$HOME/Library/Application Support/Code/User"
}

# Create symlinks
create_symlinks() {
    print_status "Creating symlinks..."
    
    # Ghostty
    ln -sf ~/.dotfiles/ghostty/config.symlink ~/.config/ghostty/config
    
    # Git
    ln -sf ~/.dotfiles/git/config.symlink ~/.config/git/config
    ln -sf ~/.dotfiles/git/ignore.symlink ~/.config/git/ignore
    
    # Neovim
    ln -sf ~/.dotfiles/nvim.symlink ~/.config/nvim
    
    # Tmux
    ln -sf ~/.dotfiles/tmux/tmux.conf.symlink ~/.config/tmux/tmux.conf
    
    # VS Code
    ln -sf ~/.dotfiles/vscode/settings.json.symlink "$HOME/Library/Application Support/Code/User/settings.json"
    ln -sf ~/.dotfiles/vscode/keybindings.json.symlink "$HOME/Library/Application Support/Code/User/keybindings.json"
    
    # Zsh
    ln -sf ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc
}

main() {
    # Check if running on MacOS
    if [[ "$OSTYPE" != "darwin"* ]]; then
        print_error "This script is intended for MacOS only"
        exit 1
    fi
    
    # Check if dotfiles are in the correct location
    if [ ! -d "$HOME/.dotfiles" ]; then
        print_error "Please clone the dotfiles repository to ~/.dotfiles first"
        exit 1
    fi
    
    install_homebrew
    install_dependencies
    create_directories
    create_symlinks
    
    print_status "Bootstrap complete! Please restart your terminal."
}

# Run the script
main

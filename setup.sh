#!/usr/bin/env bash

set -e

INSTALL() {
    echo "Installing: $1"
    eval "$1"
}

# Detect OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
    PKG_INSTALL="sudo apt install -y"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="mac"
    PKG_INSTALL="brew install"
else
    echo "Unsupported OS."
    exit 1
fi

# Install ripgrep
if ! command -v rg &> /dev/null; then
    INSTALL "$PKG_INSTALL ripgrep"
fi

# Install fd
if ! command -v fd &> /dev/null; then
    if [[ $OS == "linux" ]]; then
        INSTALL "$PKG_INSTALL fd-find"
        sudo ln -sf /usr/bin/fdfind /usr/local/bin/fd
    else
        INSTALL "brew install fd"
    fi
fi

# Install Rust (used by many Neovim plugins)
if ! command -v cargo &> /dev/null; then
    curl https://sh.rustup.rs -sSf | sh -s -- -y
    source $HOME/.cargo/env
fi

# Node (for many LSP plugins)
if ! command -v node &> /dev/null; then
    INSTALL "$PKG_INSTALL nodejs npm"
fi

# Build tools: gcc/make
if ! command -v make &> /dev/null; then
    INSTALL "$PKG_INSTALL build-essential"
fi

echo "All dependencies installed successfully."

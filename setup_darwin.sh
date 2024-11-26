#!/bin/bash
set -euo pipefail

GITHUB_USERNAME="tneely"

install() {
    for package in "$@"; do
        echo "Installing $package..."
        brew install --quiet --force "$package"
    done
}

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Terminal Apps
install "alacritty" "fish" "zellij" "helix" "git-delta" "jj"

# Mise
curl https://mise.run | sh

# Chezmoi, apply config
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME

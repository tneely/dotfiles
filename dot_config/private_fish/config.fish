# Clear greeting
set -U fish_greeting

# Setup path
fish_add_path /opt/homebrew/bin
fish_add_path /Users/tayneely/.cargo/bin/cargo

# Set defaults
set -Ux EDITOR hx

if status is-interactive
    jj util completion fish | source
    starship init fish | source
end

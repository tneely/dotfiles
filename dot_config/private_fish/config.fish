# Clear greeting
set -U fish_greeting

# Setup path
set -U fish_user_paths /opt/homebrew/bin $fish_user_paths

# Set defaults
set -Ux EDITOR hx


if status is-interactive
    jj util completion fish | source
    starship init fish | source
end

eval "$(/opt/homebrew/bin/brew shellenv zsh)"

export HOMEBREW_REQUIRE_TAP_TRUST=1
export HOMEBREW_BUNDLE_FILE="~/.config/homebrew/Brewfile"
#always run brew clean after brew bundle
export HOMEBREW_BUNDLE_FORCE_INSTALL_CLEANUP=1

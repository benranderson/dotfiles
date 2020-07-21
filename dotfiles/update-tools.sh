echo "Updating tools..."
echo "Updating Homebrew..."
brew update
echo "Updating Homebrew packages..."
brew upgrade
echo "Updating pipx..."
pipx upgrade-all
echo "Updating pyenv..."
pyenv update
echo "Tools updated!"

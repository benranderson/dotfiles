echo "Updating tools..."
echo "Updating Homebrew..."
brew update
echo "Updating Homebrew packages..."
if brew upgrade | grep -q 'Upgrading python'; then
    echo "Reinstalling pipx packages due to Python upgrade..."
    pipx reinstall-all
else
    echo "Updating pipx..."
    pipx upgrade-all
fi
echo "Cleaning up Homebrew..."
brew cleanup
echo "Updating pyenv..."
pyenv update
echo "Tools updated!"

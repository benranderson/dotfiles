echo "Updating tools..."
echo "Updating Homebrew..."
brew update
echo "Updating Homebrew packages..."
if brew upgrade | grep -q 'Upgrading python'; then
    echo "Reinstalling pipx packages due to Python upgrade..."
    pipx reinstall-all --verbose
else
    echo "Updating pipx..."
    pipx upgrade-all --verbose
fi
echo "Updating pyenv..."
pyenv update
echo "Tools updated!"

echo "Updating tools..."
echo "Updating Homebrew..."
brew update
echo "Updating Homebrew packages..."
OUTPUT=$(brew upgrade)
echo ${OUTPUT}
if [[ $OUTPUT == *"Upgrading python."* ]]; then
    echo "Reinstalling pipx packages due to Python upgrade..."
    pipx reinstall-all
else
    echo "Updating pipx..."
    pipx upgrade-all
fi
echo "Updating brew casks..."
brew upgrade --cask
echo "Cleaning up Homebrew..."
brew cleanup
echo "Tools updated! 🎉"

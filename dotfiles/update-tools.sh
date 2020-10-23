echo "Updating tools..."
echo "Updating Homebrew..."
brew update
echo "Updating Homebrew packages..."
brew upgrade | tee /tmp/brew-output.txt
if grep -q 'Upgrading python' /tmp/brew-output.txt; then
    echo "Reinstalling pipx packages as Python version has been upgraded..."
    pipx reinstall-all
else
    echo "Updating pipx..."
    pipx upgrade-all
fi
echo "Updating brew casks..."
brew upgrade --cask --greedy
echo "Cleaning up Homebrew..."
brew cleanup
echo "Updating local tldr database..."
tldr --update
echo "Tools updated! 🎉"

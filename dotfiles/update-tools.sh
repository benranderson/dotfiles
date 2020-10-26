echo "Updating tools..."
echo "Updating Homebrew..."
brew update
echo "Updating Homebrew packages..."
brew upgrade --display-times
echo "Updating pipx..."
pipx upgrade-all
echo "Updating brew casks..."
brew upgrade --cask --greedy
echo "Cleaning up Homebrew..."
brew cleanup
echo "Updating local tldr database..."
tldr --update
echo "Tools updated! 🎉"

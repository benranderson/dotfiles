BLUE=$(tput setaf 4)
GREEN=$(tput setaf 2)
RESET=$(tput sgr0)
echo ${BLUE}"Updating tools..."${RESET}
echo ${BLUE}"Updating brew..."${RESET}
brew update
echo ${BLUE}"Listing outdated brew casks and formulae..."${RESET}
brew outdated
echo ${BLUE}"Updating brew packages..."${RESET}
brew upgrade --display-times
echo ${BLUE}"Updating pipx..."${RESET}
pipx upgrade-all || pipx reinstall-all
echo ${BLUE}"Updating brew casks..."${RESET}
brew upgrade --cask --greedy
echo ${BLUE}"Cleaning up brew..."${RESET}
brew cleanup
echo ${BLUE}"Updating local tldr database..."${RESET}
tldr --update
echo ${GREEN}"Tools updated! 🎉"${RESET}

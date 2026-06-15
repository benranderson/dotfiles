BLUE=$(tput setaf 4)
GREEN=$(tput setaf 2)
RESET=$(tput sgr0)
echo ${BLUE}"Updating tools..."${RESET}
echo ${BLUE}"Updating brew..."${RESET}
brew update
echo ${BLUE}"Updating brew formulae and casks..."${RESET}
expect <<'EOF'
set timeout -1
spawn brew upgrade --display-times --greedy
expect {
  -re {\[y/n\]} { send "y\r"; exp_continue }
  -re {Yes/No} { send "Yes\r"; exp_continue }
  eof
}
EOF
echo ${BLUE}"Cleaning up brew..."${RESET}
brew cleanup
echo ${BLUE}"Updating uv..."${RESET}
uv self update -v
echo ${BLUE}"Updating uv tools..."${RESET}
export UV_KEYRING_PROVIDER=subprocess
export UV_INDEX=https://VssSessionToken@pkgs.dev.azure.com/technipfmc-dev/SubseaDesign/_packaging/SubseaDesignFeed/pypi/simple/
uv tool upgrade --all
echo ${BLUE}"Updating local tldr database..."${RESET}
tldr --update
echo ${GREEN}"Tools updated! 🎉"${RESET}

#!/bin/bash
echo "Clearing Homebrew cache..."
brew cleanup --prune=all --verbose
echo "Clearing uv cache..."
uv cache clean
echo "Clearing Docker cache..."
docker system prune -af --volumes
echo "Clearing Prek cache..."
prek cache clean
echo "Caches cleared!"

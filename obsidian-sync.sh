#!/bin/bash

# Set the path to your Obsidian Vault

VAULT_PATH=~/Repositories/obsidian

# Change to the vault directory
cd "$VAULT_PATH" || exit

# Pull latest changes first
git pull --rebase --autostash || { echo "Git pull failed. Exiting."; exit 1; }

# Check if there are local changes
if ! git diff --quiet || ! git diff --staged --quiet; then
    git add .
    git commit -m "Auto-sync: $(date)"
    git push || { echo "Git push failed. Exiting."; exit 1; }
fi


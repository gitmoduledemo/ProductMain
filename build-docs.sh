#!/bin/bash

set -e

echo "🚀 Starting sync..."

# Clean old folders
rm -rf products productA productB productC
mkdir -p products

# List of public product repos
REPOS=("productA" "productB" "productC")

# Clone and copy from each repo
for repo in "${REPOS[@]}"; do
  echo "📦 Cloning $repo..."
  git clone https://github.com/gitmoduledemo/$repo.git products/$repo

  echo "📂 Copying files from $repo into $repo/ folder..."
  mkdir -p $repo
  cp -r products/$repo/* $repo/
done

# Configure Git and commit the changes
echo "✅ Committing updates..."
git config --global user.email "you@example.com"
git config --global user.name "GitHub Actions Bot"

git add -f productA productB productC
git commit -m "📦 Synced latest content from public product repos" || echo "⚠️ Nothing to commit"
git push origin main

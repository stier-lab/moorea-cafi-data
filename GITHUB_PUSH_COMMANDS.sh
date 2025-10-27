#!/bin/bash
# GitHub Push Commands for Mo'orea CAFI Data
# Run these commands after creating the GitHub repository

# IMPORTANT: Replace USERNAME with your actual GitHub username
USERNAME="adrianstier"  # <-- CHANGE THIS if different
REPO="moorea-cafi-data"

echo "================================================"
echo "Pushing Mo'orea CAFI Data to GitHub"
echo "================================================"
echo ""

# Add remote origin
echo "Step 1: Adding remote origin..."
git remote add origin https://github.com/${USERNAME}/${REPO}.git

# Verify remote was added
echo "Step 2: Verifying remote..."
git remote -v

# Set branch to main
echo "Step 3: Setting branch to main..."
git branch -M main

# Push to GitHub
echo "Step 4: Pushing to GitHub..."
git push -u origin main

echo ""
echo "================================================"
echo "✅ Push complete!"
echo "================================================"
echo ""
echo "Your repository should now be live at:"
echo "https://github.com/${USERNAME}/${REPO}"
echo ""
echo "Next steps:"
echo "1. Visit your repository to verify"
echo "2. Update CITATION.cff with the repository URL"
echo "3. Create a release (v2.0.0)"
echo ""

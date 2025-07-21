#!/bin/bash

# GitHub Pages Deployment Status Checker
echo "🚀 Checking GitHub Pages deployment status..."
echo ""

# Check if the main site is accessible
echo "📱 Checking main site..."
curl -s -I "https://kustonaut.github.io/kql-cheat-sheet" | head -1

echo ""
echo "📄 Checking PDF availability..."
curl -s -I "https://kustonaut.github.io/kql-cheat-sheet/KQL-Cheat-Sheet.pdf" | head -1

echo ""
echo "💡 Checking examples directory..."
curl -s -I "https://kustonaut.github.io/kql-cheat-sheet/examples/" | head -1

echo ""
echo "🎨 Checking visual examples..."
curl -s -I "https://kustonaut.github.io/kql-cheat-sheet/visual-examples" | head -1

echo ""
echo "📊 Links to check manually:"
echo "- Main site: https://kustonaut.github.io/kql-cheat-sheet"
echo "- PDF download: https://kustonaut.github.io/kql-cheat-sheet/KQL-Cheat-Sheet.pdf"
echo "- Examples: https://kustonaut.github.io/kql-cheat-sheet/examples/"
echo "- Visual examples: https://kustonaut.github.io/kql-cheat-sheet/visual-examples"
echo ""
echo "⚙️  GitHub Actions status: https://github.com/kustonaut/kql-cheat-sheet/actions"

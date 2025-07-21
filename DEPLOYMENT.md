# GitHub Pages Deployment Guide

This repository is configured for automatic deployment to GitHub Pages using GitHub Actions.

## 🚀 Deployment Setup

### ⚠️ IMPORTANT: Manual Setup Required First
**GitHub Pages must be manually enabled before the workflow can deploy successfully.**

### Step 1: Enable GitHub Pages
1. **Go to Repository Settings**
   - Navigate to [https://github.com/kustonaut/kql-cheat-sheet/settings/pages](https://github.com/kustonaut/kql-cheat-sheet/settings/pages)
   - You must have admin access to the repository

2. **Configure Source**
   - **Source**: Select "GitHub Actions" (NOT "Deploy from a branch")
   - This tells GitHub to use our custom workflow instead of default Jekyll
   - Click "Save"

3. **Verify Setup**
   - You should see "Your site is ready to be published at https://kustonaut.github.io/kql-cheat-sheet/"
   - Initial deployment may take 5-10 minutes

### Step 2: Monitor First Deployment
1. **Check Actions Tab**: [https://github.com/kustonaut/kql-cheat-sheet/actions](https://github.com/kustonaut/kql-cheat-sheet/actions)
2. **Look for "Deploy to GitHub Pages" workflow**
3. **Wait for green checkmark** indicating successful deployment

### Step 3: Test the Site
After successful deployment, run our status checker:
```powershell
.\check-deployment.ps1
```

### Automatic Deployment (After Initial Setup)
Once GitHub Pages is enabled, the repository includes a GitHub Actions workflow that automatically deploys when changes are pushed to the `main` branch.

### Expected URLs
After deployment, the site will be available at:
- **Main site**: https://kustonaut.github.io/kql-cheat-sheet
- **Direct PDF**: https://kustonaut.github.io/kql-cheat-sheet/KQL-Cheat-Sheet.pdf
- **Examples**: https://kustonaut.github.io/kql-cheat-sheet/examples/

## 📁 Repository Structure for GitHub Pages

```
├── docs/                    # Jekyll source files
│   ├── _config.yml         # Jekyll configuration
│   ├── Gemfile             # Ruby dependencies
│   ├── index.md            # Homepage
│   └── visual-examples.md  # Visual examples page
├── .github/workflows/       # GitHub Actions
│   └── deploy-pages.yml    # Deployment workflow
├── KQL-Cheat-Sheet.md      # Main cheat sheet (accessible via Pages)
├── KQL-Cheat-Sheet.pdf     # PDF version (accessible via Pages)
└── examples/               # Example queries (accessible via Pages)
```

## 🔧 Local Development

To test the site locally:

1. **Install Ruby and Bundler**
2. **Navigate to docs directory**
   ```bash
   cd docs
   ```
3. **Install dependencies**
   ```bash
   bundle install
   ```
4. **Serve locally**
   ```bash
   bundle exec jekyll serve --baseurl "/kql-cheat-sheet"
   ```
5. **View at**: http://localhost:4000/kql-cheat-sheet

## 🚨 Troubleshooting

### Common Issues
- **404 errors**: Check that baseurl is correctly set in `_config.yml`
- **Workflow failures**: Verify that Pages is enabled in repository settings
- **Missing content**: Ensure all files are committed and pushed to `main` branch

### Workflow Status
Check the deployment status in the "Actions" tab of the GitHub repository:
https://github.com/kustonaut/kql-cheat-sheet/actions

## 📝 Updating Content

1. **Edit files** in the repository
2. **Commit and push** to the `main` branch
3. **GitHub Actions** will automatically rebuild and deploy
4. **Changes appear** at the GitHub Pages URL within 1-2 minutes

---

*For questions or issues with deployment, check the Actions tab or create an issue in the repository.*

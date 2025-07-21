# GitHub Pages Deployment Guide

This repository is configured for automatic deployment to GitHub Pages using GitHub Actions.

## 🚀 Deployment Setup

### Automatic Deployment (Recommended)
The repository includes a GitHub Actions workflow (`.github/workflows/deploy-pages.yml`) that automatically deploys to GitHub Pages when changes are pushed to the `main` branch.

### Manual Setup Required
To enable GitHub Pages for this repository, follow these steps:

1. **Go to Repository Settings**
   - Navigate to https://github.com/kustonaut/kql-cheat-sheet/settings
   - Scroll down to the "Pages" section

2. **Configure Source**
   - Source: "GitHub Actions"
   - This will use our custom workflow instead of the default Jekyll build

3. **Custom Domain (Optional)**
   - If you want to use a custom domain, add it in the "Custom domain" field
   - Example: `kql.kustonaut.com`

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

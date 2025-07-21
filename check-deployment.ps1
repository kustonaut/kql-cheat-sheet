# GitHub Pages Deployment Status Checker
Write-Host "Checking GitHub Pages deployment status..." -ForegroundColor Green
Write-Host ""

# Function to check URL status
function Test-Url {
    param($url, $description)
    try {
        $response = Invoke-WebRequest -Uri $url -Method Head -TimeoutSec 10
        Write-Host "SUCCESS: $description - Status: $($response.StatusCode)" -ForegroundColor Green
    }
    catch {
        Write-Host "ERROR: $description - Error: $($_.Exception.Message)" -ForegroundColor Red
    }
}

# Check if the main site is accessible
Write-Host "Checking main site..."
Test-Url "https://kustonaut.github.io/kql-cheat-sheet" "Main site"

Write-Host ""
Write-Host "Checking PDF availability..."
Test-Url "https://kustonaut.github.io/kql-cheat-sheet/KQL-Cheat-Sheet.pdf" "PDF download"

Write-Host ""
Write-Host "Checking examples directory..."
Test-Url "https://kustonaut.github.io/kql-cheat-sheet/examples/" "Examples directory"

Write-Host ""
Write-Host "Checking visual examples..."
Test-Url "https://kustonaut.github.io/kql-cheat-sheet/visual-examples" "Visual examples"

Write-Host ""
Write-Host "Links to check manually:" -ForegroundColor Yellow
Write-Host "- Main site: https://kustonaut.github.io/kql-cheat-sheet" -ForegroundColor Cyan
Write-Host "- PDF download: https://kustonaut.github.io/kql-cheat-sheet/KQL-Cheat-Sheet.pdf" -ForegroundColor Cyan
Write-Host "- Examples: https://kustonaut.github.io/kql-cheat-sheet/examples/" -ForegroundColor Cyan
Write-Host "- Visual examples: https://kustonaut.github.io/kql-cheat-sheet/visual-examples" -ForegroundColor Cyan
Write-Host ""
Write-Host "GitHub Actions status: https://github.com/kustonaut/kql-cheat-sheet/actions" -ForegroundColor Yellow

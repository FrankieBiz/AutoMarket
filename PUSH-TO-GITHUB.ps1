# Push Claude Setup to GitHub
# Run this PowerShell script to create a GitHub repo and push these files
# Requires: Git and GitHub CLI (gh) installed, and you must be logged in to GitHub

Write-Host "🚀 Pushing Claude Setup to GitHub" -ForegroundColor Cyan
Write-Host "===================================" -ForegroundColor Cyan
Write-Host ""

# Check if gh CLI is installed
$ghCheck = gh --version 2>$null
if (-not $ghCheck) {
    Write-Host "❌ GitHub CLI (gh) not found" -ForegroundColor Red
    Write-Host "Install from: https://cli.github.com/" -ForegroundColor Yellow
    Write-Host "Then run this script again" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ GitHub CLI found: $ghCheck" -ForegroundColor Green
Write-Host ""

# Check if git is installed
$gitCheck = git --version 2>$null
if (-not $gitCheck) {
    Write-Host "❌ Git not found" -ForegroundColor Red
    Write-Host "Install from: https://git-scm.com/" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ Git found: $gitCheck" -ForegroundColor Green
Write-Host ""

# Check if logged in to GitHub
Write-Host "Checking GitHub authentication..." -ForegroundColor Yellow
$authCheck = gh auth status 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Not logged in to GitHub" -ForegroundColor Red
    Write-Host "Login with: gh auth login" -ForegroundColor Yellow
    Write-Host "Then run this script again" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ GitHub authenticated" -ForegroundColor Green
Write-Host ""

# Set repository name and description
$repoName = "claude-setup"
$repoDescription = "Complete Claude Desktop + Code setup with 15 MCPs and 4 custom Skills"

Write-Host "📝 Repository details:" -ForegroundColor Cyan
Write-Host "  Name: $repoName" -ForegroundColor Gray
Write-Host "  Description: $repoDescription" -ForegroundColor Gray
Write-Host ""

Write-Host "Choose repository visibility:" -ForegroundColor Yellow
Write-Host "  [1] Public (anyone can see)" -ForegroundColor Gray
Write-Host "  [2] Private (only you can see)" -ForegroundColor Gray
Write-Host ""
$choice = Read-Host "Enter 1 or 2"

if ($choice -eq "1") {
    $visibility = "public"
    Write-Host "Repository will be: PUBLIC" -ForegroundColor Yellow
} elseif ($choice -eq "2") {
    $visibility = "private"
    Write-Host "Repository will be: PRIVATE" -ForegroundColor Yellow
} else {
    Write-Host "Invalid choice. Using private." -ForegroundColor Yellow
    $visibility = "private"
}

Write-Host ""

# Get current directory
$currentDir = Get-Location
Write-Host "Current directory: $currentDir" -ForegroundColor Gray
Write-Host ""

# Initialize git repo (fresh)
Write-Host "🔧 Initializing git repository..." -ForegroundColor Yellow

# Remove existing .git if it exists
if (Test-Path ".\.git") {
    Write-Host "Removing existing .git directory..." -ForegroundColor Yellow
    Remove-Item ".\.git" -Recurse -Force -ErrorAction SilentlyContinue
}

git init
git config user.email "francis@beyondlimitscarefoundation.org"
git config user.name "Francis"

Write-Host "✅ Git initialized" -ForegroundColor Green
Write-Host ""

# Add all files
Write-Host "📁 Staging files..." -ForegroundColor Yellow
git add -A

$status = git status --short
Write-Host "✅ Files staged:" -ForegroundColor Green
Write-Host $status
Write-Host ""

# Create initial commit
Write-Host "📝 Creating commit..." -ForegroundColor Yellow
git commit -m "Initial: Claude Desktop + Code setup with 15 MCPs and 4 custom Skills

- Complete automated setup scripts (PowerShell, batch)
- Pre-configured JSON files for Claude Desktop and Claude Code
- 4 custom Skills: frontend design, full-stack dev, marketing campaigns, automation
- 15 MCPs: Firecrawl, Gmail, Notion, DataForSEO, Obsidian, and more
- Comprehensive documentation and quick-start guides
- API key inventory with signup links
- Troubleshooting guides and references"

Write-Host "✅ Commit created" -ForegroundColor Green
Write-Host ""

# Create GitHub repository
Write-Host "🌐 Creating GitHub repository..." -ForegroundColor Yellow
gh repo create $repoName --$visibility --description "$repoDescription" --source=. --remote=origin --push

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Repository created and pushed!" -ForegroundColor Green
    Write-Host ""

    # Get the repo URL
    $repoUrl = gh repo view --json url -q .url
    Write-Host "📍 Repository URL:" -ForegroundColor Cyan
    Write-Host "   $repoUrl" -ForegroundColor Gray
    Write-Host ""

    Write-Host "✅ Setup complete!" -ForegroundColor Green
    Write-Host ""
    Write-Host "📌 Next steps on your other computer:" -ForegroundColor Cyan
    Write-Host "   1. Clone the repo:" -ForegroundColor Gray
    Write-Host "      git clone $repoUrl" -ForegroundColor Gray
    Write-Host "   2. Open GO-NOW.txt and follow the steps" -ForegroundColor Gray
    Write-Host ""
    Write-Host "🎉 You can now access this setup from any computer!" -ForegroundColor Green
} else {
    Write-Host "❌ Failed to create repository" -ForegroundColor Red
    Write-Host "Check your GitHub authentication and try again" -ForegroundColor Yellow
}

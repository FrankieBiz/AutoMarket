# Claude Desktop + Code Automated Setup Script
# For: Francis (francis@beyondlimitscarefoundation.org)
# Run as Administrator in PowerShell
# This script installs: Node.js, Python, UV, Docker Desktop, Ollama, Obsidian

# Requires: Windows 10/11, PowerShell 5.1+, Admin rights

$ErrorActionPreference = "Stop"
$ProgressPreference = "SilentlyContinue"

Write-Host "🚀 Starting Claude Desktop + Code Automated Setup" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Check if running as admin
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
    Write-Host "❌ This script must be run as Administrator" -ForegroundColor Red
    Write-Host "Please right-click PowerShell and select 'Run as administrator'" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ Running as Administrator" -ForegroundColor Green
Write-Host ""

# ============================================================================
# PHASE 1: Check & Install Node.js
# ============================================================================
Write-Host "PHASE 1: Installing Node.js LTS" -ForegroundColor Cyan
Write-Host "--------------------------------" -ForegroundColor Cyan

$nodeCheck = node -v 2>$null
if ($nodeCheck) {
    Write-Host "✅ Node.js already installed: $nodeCheck" -ForegroundColor Green
} else {
    Write-Host "📥 Downloading Node.js LTS..." -ForegroundColor Yellow
    $nodePath = "$env:TEMP\node-installer.msi"
    $nodeUrl = "https://nodejs.org/dist/v20.11.0/node-v20.11.0-x64.msi"

    try {
        Invoke-WebRequest -Uri $nodeUrl -OutFile $nodePath -TimeoutSec 300
        Write-Host "💿 Installing Node.js..." -ForegroundColor Yellow
        msiexec.exe /i "$nodePath" /quiet /norestart
        Write-Host "✅ Node.js installed" -ForegroundColor Green
    } catch {
        Write-Host "⚠️  Node.js download failed. Install manually from https://nodejs.org/" -ForegroundColor Yellow
    }
}

Write-Host ""

# ============================================================================
# PHASE 2: Check & Install Python 3.11
# ============================================================================
Write-Host "PHASE 2: Installing Python 3.11" -ForegroundColor Cyan
Write-Host "--------------------------------" -ForegroundColor Cyan

$pythonCheck = python --version 2>$null
if ($pythonCheck -match "3\.(10|11|12)") {
    Write-Host "✅ Python already installed: $pythonCheck" -ForegroundColor Green
} else {
    Write-Host "📥 Downloading Python 3.11..." -ForegroundColor Yellow
    $pythonPath = "$env:TEMP\python-installer.exe"
    $pythonUrl = "https://www.python.org/ftp/python/3.11.8/python-3.11.8-amd64.exe"

    try {
        Invoke-WebRequest -Uri $pythonUrl -OutFile $pythonPath -TimeoutSec 300
        Write-Host "💿 Installing Python 3.11..." -ForegroundColor Yellow
        # Install Python with PATH enabled
        & "$pythonPath" /quiet InstallAllUsers=1 PrependPath=1 | Out-Null
        Write-Host "✅ Python 3.11 installed" -ForegroundColor Green
    } catch {
        Write-Host "⚠️  Python download failed. Install manually from https://www.python.org/" -ForegroundColor Yellow
    }
}

Write-Host ""

# ============================================================================
# PHASE 3: Install UV (Python Package Manager)
# ============================================================================
Write-Host "PHASE 3: Installing UV" -ForegroundColor Cyan
Write-Host "---------------------" -ForegroundColor Cyan

$uvCheck = uv --version 2>$null
if ($uvCheck) {
    Write-Host "✅ UV already installed: $uvCheck" -ForegroundColor Green
} else {
    Write-Host "📥 Downloading UV installer..." -ForegroundColor Yellow
    $uvInstallerPath = "$env:TEMP\uv-installer.exe"
    $uvUrl = "https://github.com/astral-sh/uv/releases/download/0.1.0/uv-x86_64-pc-windows-msvc.exe"

    try {
        # Alternative: install via pip
        Write-Host "💿 Installing UV via pip..." -ForegroundColor Yellow
        python -m pip install uv --quiet
        Write-Host "✅ UV installed" -ForegroundColor Green
    } catch {
        Write-Host "⚠️  UV installation failed. Install manually: pip install uv" -ForegroundColor Yellow
    }
}

Write-Host ""

# ============================================================================
# PHASE 4: Install Docker Desktop
# ============================================================================
Write-Host "PHASE 4: Installing Docker Desktop" -ForegroundColor Cyan
Write-Host "---------------------------------" -ForegroundColor Cyan

$dockerCheck = docker --version 2>$null
if ($dockerCheck) {
    Write-Host "✅ Docker already installed: $dockerCheck" -ForegroundColor Green
} else {
    Write-Host "⚠️  Docker Desktop not found" -ForegroundColor Yellow
    Write-Host "📥 Downloading Docker Desktop..." -ForegroundColor Yellow
    $dockerPath = "$env:TEMP\Docker-Installer.exe"
    $dockerUrl = "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe"

    try {
        Invoke-WebRequest -Uri $dockerUrl -OutFile "$dockerPath" -TimeoutSec 300
        Write-Host "💿 Installing Docker Desktop..." -ForegroundColor Yellow
        Write-Host "⚠️  Docker requires WSL 2 and restart. Installation will continue in background." -ForegroundColor Yellow
        & "$dockerPath" install --accept-license --backend=wsl2 | Out-Null
        Write-Host "✅ Docker Desktop installer launched. Check Settings to verify installation." -ForegroundColor Green
    } catch {
        Write-Host "⚠️  Docker download failed. Install manually from https://www.docker.com/products/docker-desktop" -ForegroundColor Yellow
    }
}

Write-Host ""

# ============================================================================
# PHASE 5: Install Ollama
# ============================================================================
Write-Host "PHASE 5: Installing Ollama" -ForegroundColor Cyan
Write-Host "--------------------------" -ForegroundColor Cyan

$ollamaCheck = ollama --version 2>$null
if ($ollamaCheck) {
    Write-Host "✅ Ollama already installed: $ollamaCheck" -ForegroundColor Green
} else {
    Write-Host "📥 Downloading Ollama..." -ForegroundColor Yellow
    $ollamaPath = "$env:TEMP\OllamaSetup.exe"
    $ollamaUrl = "https://ollama.ai/download/OllamaSetup.exe"

    try {
        Invoke-WebRequest -Uri $ollamaUrl -OutFile "$ollamaPath" -TimeoutSec 300
        Write-Host "💿 Installing Ollama..." -ForegroundColor Yellow
        & "$ollamaPath" /VERYSILENT /NORESTART | Out-Null
        Write-Host "✅ Ollama installed" -ForegroundColor Green
    } catch {
        Write-Host "⚠️  Ollama download failed. Install manually from https://ollama.ai/" -ForegroundColor Yellow
    }
}

Write-Host ""

# ============================================================================
# PHASE 6: Install Obsidian
# ============================================================================
Write-Host "PHASE 6: Installing Obsidian" -ForegroundColor Cyan
Write-Host "----------------------------" -ForegroundColor Cyan

$obsidianPath = "C:\Program Files\Obsidian\Obsidian.exe"
if (Test-Path $obsidianPath) {
    Write-Host "✅ Obsidian already installed" -ForegroundColor Green
} else {
    Write-Host "📥 Downloading Obsidian..." -ForegroundColor Yellow
    $obsidianInstaller = "$env:TEMP\Obsidian.exe"
    $obsidianUrl = "https://github.com/obsidianmd/obsidian-releases/releases/download/latest/Obsidian.exe"

    try {
        Invoke-WebRequest -Uri $obsidianUrl -OutFile "$obsidianInstaller" -TimeoutSec 300
        Write-Host "💿 Installing Obsidian..." -ForegroundColor Yellow
        & "$obsidianInstaller" /VERYSILENT /NORESTART | Out-Null
        Write-Host "✅ Obsidian installed" -ForegroundColor Green
    } catch {
        Write-Host "⚠️  Obsidian download failed. Install manually from https://obsidian.md/" -ForegroundColor Yellow
    }
}

Write-Host ""

# ============================================================================
# PHASE 7: Create Obsidian Vault
# ============================================================================
Write-Host "PHASE 7: Creating Obsidian Vault" -ForegroundColor Cyan
Write-Host "--------------------------------" -ForegroundColor Cyan

$vaultPath = "$env:USERPROFILE\Obsidian\Claude-Knowledge"
if (Test-Path $vaultPath) {
    Write-Host "✅ Obsidian vault already exists: $vaultPath" -ForegroundColor Green
} else {
    Write-Host "📁 Creating Obsidian vault..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $vaultPath -Force | Out-Null
    Write-Host "✅ Obsidian vault created: $vaultPath" -ForegroundColor Green
}

Write-Host ""

# ============================================================================
# PHASE 8: Verify Installations
# ============================================================================
Write-Host "PHASE 8: Verification" -ForegroundColor Cyan
Write-Host "--------------------" -ForegroundColor Cyan

$verifications = @(
    @{ name = "Node.js"; cmd = "node -v" },
    @{ name = "npm"; cmd = "npm -v" },
    @{ name = "npx"; cmd = "npx -v" },
    @{ name = "Python"; cmd = "python --version" },
    @{ name = "UV"; cmd = "uv --version" }
)

foreach ($check in $verifications) {
    try {
        $result = & ([scriptblock]::Create($check.cmd)) 2>&1
        Write-Host "✅ $($check.name): $result" -ForegroundColor Green
    } catch {
        Write-Host "⚠️  $($check.name): Not found or error" -ForegroundColor Yellow
    }
}

Write-Host ""

# ============================================================================
# PHASE 9: Download qwen3-coder model for Ollama
# ============================================================================
Write-Host "PHASE 9: Ollama Models (Optional)" -ForegroundColor Cyan
Write-Host "--------------------------------" -ForegroundColor Cyan

Write-Host "📝 To use local Claude, run in a separate terminal:" -ForegroundColor Yellow
Write-Host "   ollama serve" -ForegroundColor Gray
Write-Host "   ollama pull qwen3-coder" -ForegroundColor Gray
Write-Host "💡 This will download a 30B model (~20GB). You can do this later." -ForegroundColor Yellow

Write-Host ""

# ============================================================================
# SUMMARY
# ============================================================================
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "✅ Local Setup Complete!" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "📋 Next Steps:" -ForegroundColor Cyan
Write-Host ""
Write-Host "1️⃣  Open Obsidian and create vault:"
Write-Host "   - Vault path: $vaultPath" -ForegroundColor Gray
Write-Host "   - Install 'Claude Code' plugin from Community Plugins"
Write-Host "   - Install 'Local REST API' plugin"
Write-Host ""
Write-Host "2️⃣  Get API keys from:" -ForegroundColor Cyan
Write-Host "   - See API-CREDENTIALS-INVENTORY.md for full list"
Write-Host "   - Quick wins: Google Cloud (5 min), Firecrawl (5 min)"
Write-Host "   - These take time: Brave Search (24-48 hrs)"
Write-Host ""
Write-Host "3️⃣  Update Claude Desktop config:" -ForegroundColor Cyan
Write-Host "   - Path: $env:APPDATA\Claude\claude_desktop_config.json"
Write-Host "   - Use the provided claude_desktop_config.json"
Write-Host "   - Replace YOUR_API_KEY placeholders with real keys"
Write-Host "   - Restart Claude Desktop"
Write-Host ""
Write-Host "4️⃣  Import Skills into Claude:" -ForegroundColor Cyan
Write-Host "   - Copy content from SKILL-*.md files"
Write-Host "   - Create new Skill in Claude Projects"
Write-Host "   - 4 skills total (frontend, fullstack, marketing, automation)"
Write-Host ""
Write-Host "📖 Full guide: See SETUP-CHECKLIST.md" -ForegroundColor Cyan
Write-Host ""
Write-Host "⚠️  Manual steps required:" -ForegroundColor Yellow
Write-Host "   • Restart Windows if Docker was installed" -ForegroundColor Gray
Write-Host "   • Sign up for API services (see credentials inventory)" -ForegroundColor Gray
Write-Host "   • Authorize Gmail on first use (OAuth)" -ForegroundColor Gray
Write-Host ""

# Offer to open files
Write-Host "Would you like me to open the documentation? (y/n): " -ForegroundColor Cyan -NoNewline
$response = Read-Host
if ($response -eq 'y') {
    explorer.exe "$PSScriptRoot"
}

Write-Host ""
Write-Host "🎉 Setup script complete! You're ready to configure MCPs and Skills." -ForegroundColor Green

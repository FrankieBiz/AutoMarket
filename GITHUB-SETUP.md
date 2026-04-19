# Push to GitHub

Push this Claude setup to GitHub so you can access it on any computer.

## Prerequisites

You need these installed on your Windows computer:
- **Git**: https://git-scm.com/
- **GitHub CLI (gh)**: https://cli.github.com/

And you need:
- **GitHub account**: https://github.com/signup

## Quick Steps

### 1️⃣ Install GitHub CLI (if not already installed)

```powershell
choco install gh  # if you have Chocolatey
# OR download from https://cli.github.com/
```

### 2️⃣ Authenticate with GitHub

Open PowerShell and run:

```powershell
gh auth login
```

Follow the prompts:
- Choose "GitHub.com" (unless you use GitHub Enterprise)
- Choose "HTTPS" (unless you set up SSH keys)
- Choose "Paste an authentication token" OR "Authenticate via web browser"
- If web browser: a browser window opens, click "Authorize"

### 3️⃣ Run the Push Script

In PowerShell, navigate to this folder and run:

```powershell
.\PUSH-TO-GITHUB.ps1
```

The script will:
1. ✅ Check that git and gh are installed
2. ✅ Ask if you want a public or private repo
3. ✅ Initialize git
4. ✅ Create a GitHub repository
5. ✅ Push all files

### 4️⃣ Copy the URL

After the script finishes, it will show you the repository URL, like:

```
https://github.com/YOUR_USERNAME/claude-setup
```

Save this URL.

## On Your Other Computer

Clone the repo:

```powershell
git clone https://github.com/YOUR_USERNAME/claude-setup
cd claude-setup
```

Then open **GO-NOW.txt** and follow the steps.

## Troubleshooting

### "gh: command not found"
- Install GitHub CLI from https://cli.github.com/
- Restart PowerShell after installing

### "Not logged in to GitHub"
- Run `gh auth login` and follow the prompts
- Try the script again

### "Repository already exists"
- The repo name "claude-setup" already exists in your account
- Edit the script to use a different name (e.g., "claude-setup-2")
- Re-run the script

### "Failed to create repository"
- Check that you're authenticated: `gh auth status`
- Check your internet connection
- Try again in a few minutes

## Private vs Public

- **Public**: Anyone can find and view your setup (good for sharing with team)
- **Private**: Only you can see it (good for keeping sensitive docs private)

Choose based on your preference when running the script.

## After Pushing

You can now:
- ✅ Clone on any computer: `git clone <URL>`
- ✅ Pull latest changes: `git pull`
- ✅ Update from any computer and sync changes

---

**Ready?** Run `.\PUSH-TO-GITHUB.ps1` and choose public or private. 🚀

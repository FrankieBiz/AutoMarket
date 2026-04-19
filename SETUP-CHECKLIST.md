# Complete Claude Desktop + Code Setup Checklist

**For**: Coworker setting up Francis's Claude environment  
**Scope**: Windows Claude Desktop + Claude Code + 15 MCPs + 4 Skills + Obsidian + Graphiti  
**Time**: ~2–3 hours total (most is automated installs)

---

## PHASE 1: System Prerequisites (30 min)

These must be done first, on the actual Windows machine.

### ✅ Task 1.1: Install Node.js (LTS)
1. Go to https://nodejs.org/ → download **LTS** version (v20 or later)
2. Run installer, accept defaults
3. Open PowerShell and verify:
   ```powershell
   node -v
   npm -v
   npx -v
   ```
   Should all return version numbers.

### ✅ Task 1.2: Install Python 3.10+ and UV
1. Download Python from https://www.python.org/downloads/ (pick 3.11 or 3.12)
2. **Important**: Check "Add Python to PATH" during install
3. Verify:
   ```powershell
   python --version
   ```
4. Install UV (Python package manager):
   ```powershell
   pip install uv
   ```
   Or download from https://astral.sh/uv/ and follow Windows installer instructions
5. Verify:
   ```powershell
   uv --version
   ```

### ✅ Task 1.3: Install Docker Desktop
1. Download from https://www.docker.com/products/docker-desktop
2. Run installer, enable WSL 2 backend when prompted
3. Restart Windows after install completes
4. Verify:
   ```powershell
   docker --version
   ```

### ✅ Task 1.4: Install Ollama (Optional but Recommended)
1. Download from https://ollama.com/
2. Run installer
3. Pull the qwen3-coder model (30B, great for local coding):
   ```powershell
   ollama pull qwen3-coder
   ```
4. Keep this for later; don't start it yet.

---

## PHASE 2: Obsidian Setup (20 min)

Obsidian is your knowledge base. Claude will read/write to it.

### ✅ Task 2.1: Install and Configure Obsidian
1. Download from https://obsidian.md/ and install
2. Create a new vault (or use existing):
   - Start Obsidian
   - Choose "Create new vault"
   - Name: `Claude-Knowledge` (or similar)
   - Location: `C:\Users\<USERNAME>\Obsidian\Claude-Knowledge` (or your preferred path)
3. Enable community plugins:
   - Settings → Community plugins
   - Turn OFF "Restricted mode" toggle
   - Click "Browse" → search "Claude Code" → install plugin
   - Search "Local REST API" → install plugin
4. Enable both plugins:
   - Go back to Settings → Community plugins → Installed
   - Toggle both "Claude Code" and "Local REST API" to ON
5. Note the **REST API key** for later:
   - Settings → Local REST API
   - Copy the "API Key" (long random string)

### ✅ Task 2.2: Configure Local REST API Port (if needed)
- In Obsidian Settings → Local REST API, default port is **22360**
- If that port is in use, change it to an unused port (e.g., 22361)
- **Keep note of the port number** for Claude Desktop config

---

## PHASE 3: Claude Desktop Config (15 min)

This is where all MCPs get wired up.

### ✅ Task 3.1: Locate Claude Desktop Config File
1. Open File Explorer
2. Navigate to:
   ```
   C:\Users\<USERNAME>\AppData\Roaming\Claude\claude_desktop_config.json
   ```
3. **Make a backup copy** of this file (save as `claude_desktop_config.json.bak`)

### ✅ Task 3.2: Replace Config with Master Config
1. Open the file `claude_desktop_config.json` (provided in this setup package) in a text editor
2. Replace **YOUR_API_KEY** placeholders with actual values:

| MCP | Placeholder | How to Get |
|-----|-------------|-----------|
| Firecrawl | `YOUR_FIRECRAWL_API_KEY` | https://app.firecrawl.dev/ → sign up → copy API key |
| Supadata | `YOUR_SUPADATA_API_KEY` | https://supadata.ai/ → sign up → API settings |
| Brave Search | `YOUR_BRAVE_API_KEY` | https://brave.com/search/api/ → sign up → API key |
| Google KG | `YOUR_GOOGLE_KG_API_KEY` | https://console.cloud.google.com → create project → enable Knowledge Graph API → create API key |
| DataForSEO | `YOUR_DATAFORSEO_LOGIN` + password | https://dataforseo.com/ → sign up → API credentials |
| Gmail | (No key needed) | Will authenticate via OAuth when you first use it |
| Notion | `YOUR_NOTION_INTEGRATION_TOKEN` | https://www.notion.so/my-integrations → create new integration → copy secret |
| Google Service Account | `C:\path\to\service-account.json` | https://console.cloud.google.com → create service account → download JSON file |

3. For **Obsidian**: Update the port if you changed it from 22360
4. For **Graphiti**: Replace the Python path with the actual path on this machine (see Task 3.3 below)

### ✅ Task 3.3: Prepare Graphiti Config (if using)
Skip this if you don't need Graphiti. If using:

1. Clone or download Graphiti:
   ```powershell
   git clone https://github.com/memez1/graphiti.git C:\Users\<USERNAME>\graphiti
   cd C:\Users\<USERNAME>\graphiti
   ```

2. Set up Python environment:
   ```powershell
   uv venv
   .venv\Scripts\activate
   ```

3. Install Graphiti:
   ```powershell
   uv pip install "graphiti-core[neo4j,anthropic]"
   ```

4. Start Neo4j in Docker (one-time):
   ```powershell
   docker run -d -p 7687:7687 -p 7474:7474 `
     -e NEO4J_AUTH=neo4j/password `
     neo4j:5
   ```
   Note the credentials: `neo4j` / `password`

5. Configure Graphiti (create `.env`):
   ```
   OPENAI_API_KEY=YOUR_OPENAI_KEY_OR_ANTHROPIC_KEY
   GRAPHITI_TELEMETRY_ENABLED=false
   ```

6. Update the `claude_desktop_config.json` graphiti section:
   - Change `C:\path\to\python.exe` to actual Python path (usually `C:\Users\<USERNAME>\graphiti\.venv\Scripts\python.exe`)
   - Change `C:\path\to\graphiti\mcp_server` to the actual path (e.g., `C:\Users\<USERNAME>\graphiti\mcp_server`)

### ✅ Task 3.4: Save and Restart Claude Desktop
1. Save the edited `claude_desktop_config.json`
2. Close Claude Desktop completely
3. Reopen Claude Desktop
4. Wait 30–60 seconds for MCPs to initialize

### ✅ Task 3.5: Test One MCP
Ask Claude in Desktop:  
`Use Brave Search to find the latest news on nonprofit fundraising`

If it returns results, all basic MCPs are working. ✅

---

## PHASE 4: Claude Code MCP Config (10 min)

Claude Code uses a separate MCP config in project repos.

### ✅ Task 4.1: Create Project-Level MCP Config
For each project where Claude Code is used:

1. Copy the `.mcp.json` file (provided in this package) to the project root
2. Update placeholder API keys (same as Desktop config)
3. This config only activates when you run `claude` from that directory

---

## PHASE 5: Import Skills into Claude Projects (10 min)

Skills are reusable instruction bundles.

### ✅ Task 5.1: Create Skills Folder
1. In Claude Desktop or Claude Code, go to **Projects** (or **Skills** depending on version)
2. For each skill file provided:
   - `SKILL-designing-web-frontends.md`
   - `SKILL-developing-fullstack-apps.md`
   - `SKILL-building-marketing-campaigns.md`
   - `SKILL-maintaining-automation-workflows.md`

3. Copy the **entire content** of each file
4. Create a new Skill in Claude:
   - Click "+ New Skill"
   - Name: `designing-web-frontends` (match file name)
   - Description: (copy from the skill file's Description section)
   - Instructions: (paste the entire Instructions section from the skill file)
   - Save

Repeat for all 4 skills.

---

## PHASE 6: Verification & Testing (20 min)

Test the setup end-to-end.

### ✅ Task 6.1: Test Cloud Claude Desktop (MCPs)
In Claude Desktop, try each of these:

1. **Firecrawl**:  
   `Use Firecrawl to scrape https://example.com and extract all headings`

2. **Obsidian**:  
   `List all files in my Obsidian vault`

3. **Better Search Console** (if configured):  
   `Show me the top 10 queries for my website`

4. **Gmail**:  
   `Search my email for messages from [your email] in the last 7 days`

All should return data without errors.

### ✅ Task 6.2: Test Claude Code
1. Open a terminal and navigate to a project folder with `.mcp.json`
2. Run:
   ```bash
   claude
   ```
3. Try a tool:  
   `Write a hello-world.js script`

Claude Code should execute and create the file.

### ✅ Task 6.3: Test Skills
1. In Claude Desktop, create a new conversation
2. Try invoking a skill:  
   `Use the designing-web-frontends skill to create a landing page component`

Claude should recognize the skill and apply its instructions.

### ✅ Task 6.4: Test Ollama (Optional)
If you set it up:

1. Start Ollama in a separate terminal:
   ```powershell
   ollama serve
   ```

2. In another terminal, set environment variables:
   ```powershell
   $env:ANTHROPIC_BASE_URL = "http://localhost:11434/v1"
   $env:ANTHROPIC_MODEL = "qwen3-coder"
   ```

3. Run Claude Code:
   ```powershell
   claude
   ```

It will use the local model. Type `Ctrl+C` to stop, unset the vars to go back to cloud Claude.

---

## PHASE 7: Documentation & Ongoing (15 min)

### ✅ Task 7.1: Create a Setup Recap Document
In Obsidian, create a note:
```markdown
# Claude Environment Setup

**Date**: [today]
**Status**: Complete ✅

## MCPs Enabled
- Firecrawl (web scraping)
- Obsidian (knowledge base)
- Gmail (email search)
- [... list all enabled MCPs]

## Skills Created
- designing-web-frontends
- developing-fullstack-apps
- building-marketing-campaigns
- maintaining-automation-workflows

## Key Paths
- Obsidian vault: C:\Users\<USERNAME>\Obsidian\Claude-Knowledge
- Claude Desktop config: C:\Users\<USERNAME>\AppData\Roaming\Claude\claude_desktop_config.json
- Graphiti (if used): C:\Users\<USERNAME>\graphiti

## API Keys Stored In
- Password manager: [your password manager]
- Last rotation: [date]
- Next rotation due: [date + 90 days]

## Troubleshooting
[Add notes as issues are discovered]
```

### ✅ Task 7.2: Schedule Quarterly Reviews
- Set a reminder for 90 days from now
- Check that all API keys are still valid
- Review which MCPs are actually being used (disable unused ones)
- Update Claude version if available

### ✅ Task 7.3: Document Custom Integrations
If you add more MCPs or scripts later:
- Keep a log in Obsidian of what was added, when, and why
- Store config changes in git if possible
- Create runbooks for anything complex

---

## TROUBLESHOOTING

### MCP won't load / Connection refused
- **Cause**: Port conflict (Obsidian port 22360 taken)
- **Fix**: Change port in Obsidian settings, update `claude_desktop_config.json`

### Gmail MCP says "unauthorized"
- **Cause**: First time use requires OAuth
- **Fix**: Click the link Claude provides, authorize the app, try again

### Firecrawl returns empty results
- **Cause**: API key invalid or rate limit hit
- **Fix**: Verify API key in config, wait 1 hour before retrying

### Claude Code not picking up `.mcp.json`
- **Cause**: File not in project root, or Claude Code started from wrong directory
- **Fix**: Ensure `.mcp.json` is in the directory where you run `claude`

### Python/UV command not found
- **Cause**: PATH not updated after install
- **Fix**: Restart PowerShell or computer

---

## FINAL CHECKLIST

- [ ] Node.js installed and verified
- [ ] Python 3.10+ and UV installed
- [ ] Docker Desktop installed
- [ ] Ollama installed (optional)
- [ ] Obsidian vault created and plugins enabled
- [ ] Claude Desktop config updated with API keys
- [ ] All MCPs tested successfully
- [ ] Claude Code `.mcp.json` in project root
- [ ] All 4 Skills imported
- [ ] Cloud Claude Desktop test passed
- [ ] Claude Code test passed
- [ ] Ollama test passed (if using)
- [ ] Setup recap documented in Obsidian
- [ ] API key rotation schedule set

---

## Quick Commands Reference

```powershell
# Start Ollama (in separate terminal)
ollama serve

# Set Claude Code to use local model
$env:ANTHROPIC_BASE_URL = "http://localhost:11434/v1"
$env:ANTHROPIC_MODEL = "qwen3-coder"

# Reset Claude Code to cloud Claude
$env:ANTHROPIC_BASE_URL = ""
$env:ANTHROPIC_MODEL = ""

# Test MCP connection
curl http://localhost:22360/sse

# Check if port is in use
netstat -ano | findstr :22360
```

---

**Setup Complete!** You're ready to use Claude with full web scraping, knowledge management, email integration, and marketing tools. Start with a small task to get comfortable, then scale up. 🚀

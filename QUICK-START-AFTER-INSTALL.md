# Quick Start: After Running the Setup Script

**You've just run SETUP-AUTOMATED.ps1.** Now do this:

---

## 🎯 Your Email
```
francis@beyondlimitscarefoundation.org
```
Use this for all sign-ups below. I'll make it easy—copy the sign-up URLs with your email pre-filled.

---

## STEP 1: Sign Up for API Keys (15 min + waiting)

Open these URLs and sign up. Your email is pre-filled where possible.

### 🟢 FAST (Get keys immediately, 5-10 min each)

1. **Firecrawl** (Web Scraping)
   - https://app.firecrawl.dev/?email=francis@beyondlimitscarefoundation.org
   - Sign up → copy API key → save in password manager
   - Cost: Free tier sufficient

2. **Google Cloud** (Knowledge Graph + Service Account)
   - https://console.cloud.google.com/
   - Create project named "Claude-MCPs"
   - Enable "Knowledge Graph Search API"
   - Create API key → copy
   - Create Service Account → download JSON file
   - Cost: Free

3. **Notion Integration**
   - https://www.notion.so/my-integrations
   - "New integration" → name: "Claude-MCPs"
   - Copy integration token → save
   - Cost: Free

### 🟡 MEDIUM (Get keys in 1-2 hours)

4. **DataForSEO** (SEO Research)
   - https://dataforseo.com/
   - Sign up with email → get username/password
   - Cost: Free tier available

5. **Supadata** (Video Transcripts)
   - https://supadata.ai/
   - Sign up → Settings → API keys → copy
   - Cost: Free tier available

### 🔴 SLOW (Wait 24-48 hours for approval)

6. **Brave Search** (Web Search)
   - https://brave.com/search/api/
   - Sign up → submit for API access
   - Check email in 24-48 hours for approval
   - Don't wait for this one before proceeding

---

## STEP 2: Open Obsidian & Install Plugins (10 min)

1. Open Obsidian
2. Create vault:
   - Click "Create new vault"
   - Name: `Claude-Knowledge`
   - Location: (default is fine)
3. Enable community plugins:
   - Settings (gear icon) → Community plugins
   - Turn OFF "Restricted mode"
   - Click "Browse"
   - Search "Claude Code" → Install
   - Search "Local REST API" → Install
4. Enable both plugins:
   - Settings → Community plugins → Installed
   - Turn both ON
5. Note the **REST API key**:
   - Settings → Local REST API
   - Copy the "API Key" (long random string)
   - You'll need this for Claude config

---

## STEP 3: Update Claude Desktop Config (10 min)

1. **Locate** the config file:
   - Path: `C:\Users\<YOUR_USERNAME>\AppData\Roaming\Claude\claude_desktop_config.json`
   - **Backup first**: Save a copy as `.bak`

2. **Replace** with the provided `claude_desktop_config.json` from this package

3. **Fill in API keys** from Step 1:
   - Find `YOUR_FIRECRAWL_API_KEY` → replace with actual key
   - Find `YOUR_GOOGLE_KNOWLEDGE_GRAPH_API_KEY` → replace
   - Find `YOUR_GOOGLE_SERVICE_ACCOUNT_KEY` → replace with path to JSON file
   - Find `YOUR_NOTION_INTEGRATION_TOKEN` → replace
   - Find `YOUR_DATAFORSEO_LOGIN` → replace with username
   - Find `YOUR_DATAFORSEO_PASSWORD` → replace with password
   - Find `YOUR_SUPADATA_API_KEY` → replace
   - Find `YOUR_BRAVE_API_KEY` → leave blank (wait for approval, fill later)
   - **Gmail**: No key needed (OAuth on first use)

4. **Update Obsidian port** (if different from 22360):
   - Change `localhost:22360` if you used a different port

5. **Save** the file

6. **Restart Claude Desktop** (close completely, reopen)

---

## STEP 4: Test One MCP (5 min)

In Claude Desktop, ask:

```
Use Firecrawl to scrape https://example.com and extract all the headings.
```

If you get results → ✅ MCPs are working!

---

## STEP 5: Copy `.mcp.json` to Your Project (2 min)

For **Claude Code** (terminal `claude` command):

1. Copy `.mcp.json` from this package
2. Paste it into your main project folder (wherever you run `claude` from)
3. Update API keys (same as Desktop config)
4. When you run `claude` from that folder, it will use those MCPs

---

## STEP 6: Import the 4 Skills (10 min)

In Claude Desktop:

1. Go to **Projects** (or **Skills** depending on version)
2. Click **+ New Skill**
3. For each skill file:
   - **Name**: `designing-web-frontends` (from filename)
   - **Description**: Copy from skill file's Description section
   - **Instructions**: Copy the entire Instructions section
   - Click Save

Repeat for all 4:
- `SKILL-designing-web-frontends.md`
- `SKILL-developing-fullstack-apps.md`
- `SKILL-building-marketing-campaigns.md`
- `SKILL-maintaining-automation-workflows.md`

---

## STEP 7: Verify Everything Works (10 min)

In Claude Desktop, try each test:

**Test 1 - Firecrawl:**
```
Use Firecrawl to scrape https://www.ycombinator.com and extract the top 5 companies listed.
```

**Test 2 - Obsidian:**
```
List all files in my Obsidian vault.
```

**Test 3 - Notion:**
```
Create a new row in my Notion database with sample data.
```

**Test 4 - Gmail:**
```
Search Gmail for emails from [your partner's email] in the last 30 days.
```

**Test 5 - Skills:**
```
Use the designing-web-frontends skill to create a React button component.
```

If all 5 work → ✅ **You're done!**

---

## OPTIONAL: Set Up Local Ollama Model (15 min, can skip)

For free local coding without using cloud Claude:

1. Open PowerShell
2. Run:
   ```powershell
   ollama serve
   ```
   (Let this run in the background)

3. In a **new PowerShell** terminal:
   ```powershell
   ollama pull qwen3-coder
   ```
   (Wait ~20-30 min for download)

4. To use it with Claude Code:
   ```powershell
   $env:ANTHROPIC_BASE_URL = "http://localhost:11434/v1"
   $env:ANTHROPIC_MODEL = "qwen3-coder"
   claude
   ```

5. To go back to cloud Claude:
   ```powershell
   $env:ANTHROPIC_BASE_URL = ""
   $env:ANTHROPIC_MODEL = ""
   ```

---

## 📋 Time Summary

| Step | Time | Status |
|------|------|--------|
| Run PowerShell script | 20 min | Automated ✅ |
| Sign up for APIs | 15 min + 24-48 hr wait | Manual (mostly copy-paste) |
| Obsidian setup | 10 min | Manual |
| Update Claude config | 10 min | Copy-paste |
| Test MCPs | 10 min | Manual |
| Import Skills | 10 min | Copy-paste |
| **Total active time** | **~75 min** | |
| **Wait time** | **24-48 hrs** (Brave Search) | Can proceed without it |

---

## ⚠️ Common Issues

**Issue**: "MCP won't load"  
**Fix**: Restart Claude Desktop (close completely, reopen)

**Issue**: "API key doesn't work"  
**Fix**: Verify key is correct, check it's not in quotes in JSON

**Issue**: "Gmail says unauthorized"  
**Fix**: Click the auth link Claude provides, approve access

**Issue**: "Obsidian MCP returns nothing"  
**Fix**: Check REST API plugin is ON, port is 22360, vault is accessible

**Issue**: "Claude Code won't find `.mcp.json`"  
**Fix**: Ensure `.mcp.json` is in the directory where you run `claude`

---

## 🎯 You're Now Ready!

With this setup, you can:

✅ Scrape any website (Firecrawl)  
✅ Research keywords & competitors (DataForSEO, Brave)  
✅ Search your emails (Gmail)  
✅ Manage projects in Notion (Notion MCP)  
✅ Store knowledge in Obsidian (Obsidian MCP)  
✅ Build frontends with expert guidance (designing-web-frontends skill)  
✅ Build full-stack apps (developing-fullstack-apps skill)  
✅ Plan marketing campaigns (building-marketing-campaigns skill)  
✅ Design automation workflows (maintaining-automation-workflows skill)  

You have the most powerful Claude setup for your nonprofit tech stack! 🚀

---

**Next**: Start using Claude with these tools. Try asking:

```
"Use Firecrawl to scrape [competitor site] and Notion to store 
the findings. Then use DataForSEO to find keywords related to [topic]."
```

Claude will handle all the chaining automatically.

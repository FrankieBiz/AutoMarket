# Claude Desktop + Code Complete Setup Package

**For**: Francis's coworker  
**Goal**: Get Claude Desktop, Claude Code, and 15 MCPs fully configured and ready to use  
**Time**: ~3 hours total (mostly automated installs + waiting for API key approvals)  
**Difficulty**: Medium (lots of copy-paste, but clear instructions)

---

## 📦 What's in This Package

You have **6 files** in this folder:

1. **README-SETUP-MASTER.md** ← You are here
2. **SETUP-CHECKLIST.md** ← Follow this step-by-step
3. **API-CREDENTIALS-INVENTORY.md** ← Get all API keys first
4. **claude_desktop_config.json** ← Copy this to Claude Desktop config
5. **.mcp.json** ← Copy this to project directories (for Claude Code)
6. **SKILL-*.md** (4 files) ← Import these as Skills into Claude

---

## ⚡ Quick Start (In 60 Seconds)

1. **Read this first**: `API-CREDENTIALS-INVENTORY.md` (5 min read)
   - Decide which services you actually need (some are optional)
   - Start signing up; some approvals take 24–48 hours

2. **Follow this**: `SETUP-CHECKLIST.md` (2–3 hours of work)
   - Phase 1: Install prerequisites (Node, Python, Docker)
   - Phase 2: Set up Obsidian
   - Phase 3: Update Claude Desktop config with your API keys
   - Phase 4: Copy `.mcp.json` to your projects
   - Phase 5: Import the 4 Skills
   - Phase 6: Test everything

3. **Refer to these as needed**:
   - `claude_desktop_config.json` — all MCP definitions, pre-formatted
   - `.mcp.json` — Claude Code MCP config, copy to repos
   - `SKILL-*.md` files — copy content into Claude's skill editor

---

## 🎯 What You're Building

After setup, you'll have:

| Component | What It Does | Started By |
|-----------|-------------|-----------|
| **Claude Desktop** | Chat with Claude + 15 MCPs enabled | You (manually) |
| **Claude Code** | CLI tool for agentic coding | `claude` command |
| **Firecrawl MCP** | Scrape any website | Claude tool call |
| **Obsidian MCP** | Access knowledge base | Claude tool call |
| **Gmail MCP** | Search & summarize emails | Claude tool call |
| **Notion MCP** | Read/write Notion databases | Claude tool call |
| **DataForSEO MCP** | Keyword research & SERP data | Claude tool call |
| **Better Search Console MCP** | Website query analytics | Claude tool call |
| **Brave Search MCP** | Real-time web search | Claude tool call |
| **Supadata MCP** | Video transcript extraction | Claude tool call |
| **Google Knowledge Graph MCP** | Entity research | Claude tool call |
| **Chrome DevTools MCP** | Browser debugging | Claude tool call |
| **Graphiti MCP** | Knowledge graph database | Claude tool call (optional) |
| **Ollama Local Model** | Run code locally (free tier) | Environment variable |
| **4 Custom Skills** | Predefined behaviors for: frontends, full-stack, marketing, automation | Claude auto-invokes or you manually trigger |

---

## 🔑 Before You Start: API Keys

**Do this FIRST.** Some services take 24–48 hours to approve.

1. Open `API-CREDENTIALS-INVENTORY.md`
2. Go through the **Required Services** section
3. Sign up for each service, get API key
4. Store each key in a password manager (1Password, Bitwarden, etc.)
5. Come back and run the setup checklist

**Quick Wins** (instant keys):
- Google Cloud (Knowledge Graph + Service Account): 10 min
- Firecrawl: 5 min
- Notion: 5 min

**Wait For These** (24–48 hours):
- Brave Search approval: May take time
- DataForSEO: Usually instant, but double-check

---

## 📋 The Setup Checklist (Copy This Path Exactly)

### Phase 1: Prerequisites (~30 min)
```
✅ Install Node.js (LTS)
✅ Install Python 3.10+ and UV
✅ Install Docker Desktop
✅ Install Ollama (optional but recommended)
```
Follow: SETUP-CHECKLIST.md → PHASE 1

### Phase 2: Obsidian (~20 min)
```
✅ Install Obsidian
✅ Install Claude Code plugin + Local REST API plugin
✅ Note the REST API key and port
```
Follow: SETUP-CHECKLIST.md → PHASE 2

### Phase 3: Claude Desktop Config (~15 min)
```
✅ Backup original claude_desktop_config.json
✅ Copy the provided claude_desktop_config.json to your AppData\Roaming\Claude\
✅ Replace YOUR_API_KEY placeholders with actual keys from password manager
✅ Restart Claude Desktop
✅ Test one MCP (e.g., Brave Search)
```
Follow: SETUP-CHECKLIST.md → PHASE 3

### Phase 4: Claude Code Config (~10 min)
```
✅ Copy .mcp.json to your main project directory
✅ Update API keys in .mcp.json
✅ Test `claude` command in that directory
```
Follow: SETUP-CHECKLIST.md → PHASE 4

### Phase 5: Import Skills (~10 min)
```
✅ Import SKILL-designing-web-frontends.md
✅ Import SKILL-developing-fullstack-apps.md
✅ Import SKILL-building-marketing-campaigns.md
✅ Import SKILL-maintaining-automation-workflows.md
```
Follow: SETUP-CHECKLIST.md → PHASE 5

### Phase 6: Verify (~20 min)
```
✅ Test Firecrawl in Claude Desktop
✅ Test Obsidian in Claude Desktop
✅ Test Claude Code with a simple script
✅ Test Skills by invoking one
```
Follow: SETUP-CHECKLIST.md → PHASE 6

---

## 💾 File-by-File Guide

### `claude_desktop_config.json`
- **What**: Master config for all 15 MCPs
- **Where**: Copy to `C:\Users\<USERNAME>\AppData\Roaming\Claude\claude_desktop_config.json`
- **Edit**: Replace `YOUR_API_KEY` placeholders with actual values
- **When**: Before restarting Claude Desktop

### `.mcp.json`
- **What**: Claude Code-specific MCP config (lighter than Desktop)
- **Where**: Copy to the root of any project where you use `claude` CLI
- **Edit**: Replace API key placeholders
- **When**: Before running `claude` in that directory
- **Note**: Only MCPs needed for development (Firecrawl, Context7, Playwright, Sentry, etc.)

### `SKILL-designing-web-frontends.md`
- **What**: Instructions for building React/Next.js frontends
- **Where**: Copy content into Claude Skills editor → create new skill
- **Name**: `designing-web-frontends`
- **When**: After importing, ask Claude: "Use the designing-web-frontends skill..."

### `SKILL-developing-fullstack-apps.md`
- **What**: Instructions for full-stack Node + PostgreSQL development
- **Where**: Copy content into Claude Skills editor → create new skill
- **Name**: `developing-fullstack-apps`

### `SKILL-building-marketing-campaigns.md`
- **What**: Instructions for campaign strategy, data-driven marketing
- **Where**: Copy content into Claude Skills editor → create new skill
- **Name**: `building-marketing-campaigns`
- **Use Case**: "Use the building-marketing-campaigns skill to plan a Facebook/Instagram campaign..."

### `SKILL-maintaining-automation-workflows.md`
- **What**: Instructions for designing reliable Zapier/Make/n8n workflows
- **Where**: Copy content into Claude Skills editor → create new skill
- **Name**: `maintaining-automation-workflows`

---

## ⚠️ Common Mistakes to Avoid

1. **Forgetting to restart Claude Desktop** after editing config
   - → Changes won't take effect until restart

2. **Using wrong file path for Python/Graphiti**
   - → Find the actual path; don't guess
   - Check: `which python` in PowerShell

3. **Not filling in placeholder API keys**
   - → MCPs won't work; you'll get auth errors
   - Each placeholder must be replaced with a real key

4. **Putting `.mcp.json` in the wrong directory**
   - → Claude Code won't find it
   - Must be in the directory where you run `claude`

5. **Not testing individual MCPs after setup**
   - → Problems go unnoticed until you need them
   - Test each one: Firecrawl, Obsidian, Gmail, etc.

6. **Storing API keys in config files in git**
   - → Keys get leaked to version control
   - Always use `.env` files and `.gitignore` them

---

## 🚀 After Setup: Quick Usage Examples

### Using Claude Desktop with MCPs

**Example 1: Research a topic**
```
Use Firecrawl to scrape the top 3 competitor donation pages and extract 
their value propositions, then use DataForSEO to find high-volume keywords 
related to "nonprofit fundraising" + summarize what you find in Obsidian.
```

**Example 2: Analyze performance**
```
Use Better Search Console to show me the queries driving the most clicks 
to my site, then suggest SEO optimizations using Context7 (latest SEO docs).
```

**Example 3: Email research**
```
Search my Gmail for all emails from [partner@company.com] from the last 
30 days and summarize the key topics we discussed.
```

### Using Claude Code with Skills

**Example 4: Build a feature**
```
Use the designing-web-frontends skill to create a reusable Button component 
in React with variants for primary, secondary, and disabled states. Include 
TypeScript types.
```

**Example 5: Build backend**
```
Use the developing-fullstack-apps skill to design a /api/donations endpoint 
that creates a donation record in PostgreSQL and triggers a thank-you email.
```

**Example 6: Plan a campaign**
```
Use the building-marketing-campaigns skill to plan a 2-week Instagram + 
Facebook campaign for [donor target]. Include messaging hooks, audience 
targeting, and A/B test plan.
```

---

## 🔄 Regular Maintenance

### Weekly
- Monitor MCP logs for errors
- Check if any services have changed APIs

### Monthly
- Review which MCPs you actually use (disable unused ones)
- Verify API keys are still valid

### Quarterly
- Rotate API keys (security best practice)
- Update Claude Desktop to latest version
- Check if any new MCPs are available that would be useful

### Annually
- Audit all integrations
- Check service subscriptions (cancel unused paid tiers)
- Update documentation

---

## 🆘 Troubleshooting Quick Links

See `SETUP-CHECKLIST.md` → **TROUBLESHOOTING** section for:
- MCP won't load (port conflict)
- Gmail authorization issues
- Firecrawl rate limits
- Claude Code path issues
- Python/UV not found

---

## 📞 Support & Questions

If something breaks during setup:

1. **Check SETUP-CHECKLIST.md** → TROUBLESHOOTING section
2. **Re-read the specific phase** you're stuck on
3. **Verify API keys are correct** (most common issue)
4. **Restart Claude Desktop** (fixes ~50% of MCP issues)
5. **Check Windows Firewall** — make sure ports 22360, 7474, 7687 aren't blocked

---

## ✨ What's Next After Setup

Once everything is working:

1. **Start small**: Use one MCP (e.g., Firecrawl) to scrape a website
2. **Combine MCPs**: Try web scraping + Obsidian storage + Gmail search together
3. **Use Skills**: Build a React component with the `designing-web-frontends` skill
4. **Automate a workflow**: Use `maintaining-automation-workflows` skill to design a Zapier/Make flow
5. **Iterate**: As you find more uses, add more MCPs or customizations

---

## 📊 Setup Completion Checklist

- [ ] All API keys obtained and stored securely
- [ ] Node.js, Python, Docker installed and verified
- [ ] Obsidian vault created with plugins enabled
- [ ] claude_desktop_config.json copied and edited with API keys
- [ ] Claude Desktop restarted and MCPs are loading
- [ ] One MCP tested successfully
- [ ] .mcp.json copied to project directory (for Claude Code)
- [ ] All 4 Skills imported into Claude
- [ ] Cloud Claude Desktop test passed (Firecrawl, Obsidian, Gmail)
- [ ] Claude Code test passed
- [ ] Setup recap documented in Obsidian
- [ ] API key rotation schedule set (quarterly)
- [ ] This README has been read completely ✅

---

**You're ready to use Claude with enterprise-grade MCPs, local knowledge management, and marketing/dev automation!** 🎉

**Next step**: Open `SETUP-CHECKLIST.md` and start with PHASE 1.

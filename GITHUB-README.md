# Claude Desktop + Code Complete Setup

Complete automated setup for Claude Desktop + Code with 15 MCPs, 4 custom Skills, and full integration for web dev, marketing, and AI automation.

## ⚡ Quick Start

1. **Read first**: [`GO-NOW.txt`](GO-NOW.txt) (the fastest path, 8 steps)
2. **Run**: `SETUP-AUTOMATED.ps1` (installs Node, Python, Docker, Ollama, Obsidian)
3. **Sign up**: Use `OPEN-SIGNUP-PAGES.bat` to open API signup pages
4. **Configure**: Fill in API keys in `claude_desktop_config.json`
5. **Test**: Ask Claude to use any MCP

**Total time**: ~60–75 minutes (mostly automated)

## 📦 What's Included

### Executable Files
- **SETUP-AUTOMATED.ps1** — PowerShell script to install all prerequisites
- **OPEN-SIGNUP-PAGES.bat** — Opens API signup pages for quick access
- **GO-NOW.txt** — Sequential checklist (start here!)

### Configuration Files (Pre-built, fill in your API keys)
- **claude_desktop_config.json** — 15 MCPs ready to go
- **.mcp.json** — Claude Code project config

### Documentation
- **README-SETUP-MASTER.md** — Complete overview
- **QUICK-START-AFTER-INSTALL.md** — What to do after running the installer
- **SETUP-CHECKLIST.md** — Detailed phase-by-phase guide
- **API-CREDENTIALS-INVENTORY.md** — Which services to sign up for + costs
- **MCP-REFERENCE-GUIDE.md** — What each MCP does + examples

### Skills (Copy into Claude Projects)
- **SKILL-designing-web-frontends.md** — React/Next.js frontend instructions
- **SKILL-developing-fullstack-apps.md** — Node/PostgreSQL backend
- **SKILL-building-marketing-campaigns.md** — Campaign strategy & data-driven marketing
- **SKILL-maintaining-automation-workflows.md** — Zapier/Make automation design

## 🎯 What You Get

**15 MCPs** (AI tools):
- Firecrawl (web scraping)
- Gmail (email search)
- Notion (project management)
- DataForSEO (keyword research)
- Better Search Console (SEO analytics)
- Brave Search (real-time web search)
- Obsidian (knowledge base)
- And 8 more...

**4 Custom Skills**:
- Frontend design (React/Next.js)
- Full-stack development (Node + PostgreSQL)
- Marketing campaigns (data-driven)
- Automation workflows (Zapier/Make)

**Features**:
- ✅ Cloud Claude (Desktop) + Claude Code (CLI)
- ✅ Local Ollama model (optional, for free inference)
- ✅ Obsidian knowledge base connected
- ✅ All APIs pre-configured, just add keys

## 🚀 Usage Examples

After setup, you can ask Claude things like:

```
"Use Firecrawl to scrape competitor landing page, 
DataForSEO to find keywords, Gmail to search partner emails, 
and store findings in Obsidian"
```

Or:

```
"Use the designing-web-frontends skill to build a React component 
with TypeScript and Tailwind CSS"
```

Or:

```
"Use the building-marketing-campaigns skill to plan a 2-week 
Instagram + Facebook campaign for [audience]"
```

All MCPs chain automatically. No extra setup needed.

## 📋 File Guide

| File | Purpose | Action |
|------|---------|--------|
| GO-NOW.txt | Start here | Read & follow |
| SETUP-AUTOMATED.ps1 | Install everything | Run as Administrator |
| OPEN-SIGNUP-PAGES.bat | Sign up for APIs | Double-click to open browser |
| claude_desktop_config.json | Claude Desktop config | Edit with your API keys |
| .mcp.json | Claude Code config | Copy to your project folder |
| SKILL-*.md | Custom instructions | Copy into Claude Projects |

## 🔑 API Keys Required

**Fast to get** (5-10 min each):
- Firecrawl (web scraping)
- Google Cloud (Knowledge Graph + Service Account)
- Notion (project management)
- DataForSEO (SEO research)
- Supadata (video transcripts)

**Slow** (24-48 hour approval):
- Brave Search (web search)

**No key needed**:
- Gmail (OAuth on first use)

See [`API-CREDENTIALS-INVENTORY.md`](API-CREDENTIALS-INVENTORY.md) for signup links and costs.

## ⚙️ System Requirements

- **Windows 10/11** (currently configured for Windows)
- **4GB RAM minimum** (8GB+ recommended)
- **20GB disk space** for Ollama + Docker (optional)
- **PowerShell 5.1+** (usually pre-installed)
- **Administrator access** (for installer)

## 🆘 Troubleshooting

**MCP won't load?**
- Restart Claude Desktop (close completely, reopen)

**API key doesn't work?**
- Verify it's correct and not wrapped in extra quotes

**Obsidian MCP returns nothing?**
- Check REST API plugin is ON in Obsidian settings

**Claude Code can't find .mcp.json?**
- Ensure it's in the directory where you run `claude`

See `SETUP-CHECKLIST.md` → **TROUBLESHOOTING** section for more.

## 📖 Next Steps

1. Clone or download this repo
2. Open **GO-NOW.txt** and follow the 8 steps
3. After setup, start using Claude with MCPs:
   - Desktop: Ask Claude to use any MCP
   - Code: Run `claude` in a directory with `.mcp.json`

## 🎓 Learning Resources

- **MCP docs**: See `MCP-REFERENCE-GUIDE.md` (what each MCP does)
- **Setup help**: See `SETUP-CHECKLIST.md` (detailed walkthrough)
- **API details**: See `API-CREDENTIALS-INVENTORY.md` (which services, costs)
- **Skills**: See individual `SKILL-*.md` files (detailed instructions)

## 💡 Pro Tips

1. **Chain MCPs**: Ask Claude to use multiple MCPs in one request (Firecrawl + DataForSEO + Gmail)
2. **Use Skills**: Ask Claude to use a specific Skill for guidance (e.g., "Use the designing-web-frontends skill...")
3. **Store findings**: After research, have Claude save to Obsidian
4. **Track metrics**: Use Notion MCP to store KPIs and results

## ⚖️ License & Attribution

This setup package is designed for solo use or small teams.

Free tier APIs are sufficient to start. Upgrade to paid plans as you scale.

## 🤝 Support

**For setup help**:
- Read `GO-NOW.txt` (fastest path)
- See `QUICK-START-AFTER-INSTALL.md` (step-by-step)
- Check `SETUP-CHECKLIST.md` → TROUBLESHOOTING

**For MCP questions**:
- See `MCP-REFERENCE-GUIDE.md` (what each does)
- Check official docs: [Anthropic MCP](https://modelcontextprotocol.io/)

## 🔄 Updates & Maintenance

- **Weekly**: Check MCP logs for errors
- **Monthly**: Verify API keys are valid
- **Quarterly**: Rotate API keys (security best practice)
- **Yearly**: Audit integrations and subscriptions

---

**Ready to go?** Start with [`GO-NOW.txt`](GO-NOW.txt) — takes ~60 minutes. 🚀

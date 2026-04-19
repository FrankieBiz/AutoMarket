# MCP Reference Guide

**Quick lookup**: What each MCP does, how to use it, and when you need it.

---

## 📡 All 15 MCPs at a Glance

| # | MCP | Purpose | Status | Usage |
|---|-----|---------|--------|-------|
| 1 | **Desktop Commander** | Run OS commands, open files, control Windows | ✅ Enabled | `claude desktop` |
| 2 | **Firecrawl** | Scrape & crawl websites, extract structured data | ✅ Enabled | Web research, competitor analysis |
| 3 | **Supadata** | Extract transcripts from YouTube, TikTok, Instagram | ✅ Enabled | Video content analysis |
| 4 | **Brave Search** | Real-time web search, news, better than Google | ✅ Enabled | Research, fact-checking |
| 5 | **Context7** | Current docs for libraries, framework versions | ✅ Enabled | Dev: stay up-to-date on SDKs |
| 6 | **Chrome DevTools** | Browser automation, debugging, testing | ✅ Enabled | QA, testing, UI validation |
| 7 | **Obsidian** | Access your knowledge base, notes, backlinks | ✅ Enabled | Store & retrieve project info |
| 8 | **Google Knowledge Graph** | Entity lookup, relationships, facts | ✅ Enabled | Research entities, organizations |
| 9 | **Better Search Console** | Website analytics, query performance | ✅ Enabled | SEO analysis, audience insights |
| 10 | **DataForSEO** | SERP rankings, keyword volume, competitor tracking | ✅ Enabled | Marketing: keyword research |
| 11 | **Gmail** | Search emails, summarize, extract info | ✅ Enabled | Email research, follow-ups |
| 12 | **Notion** | Read/write Notion databases | ✅ Enabled | Project management integration |
| 13 | **Graphiti** | Knowledge graph with temporal data | ⚪ Optional | Advanced: store complex relationships |
| 14 | **Gemini** (Optional) | Google's multimodal model for images | ⚪ Optional | Image analysis if needed |
| 15 | **Better Search Console** + **DataForSEO** | Combined SEO dashboard | ✅ Enabled | Full marketing stack |

---

## 🛠️ MCP Details & Examples

### 1. Desktop Commander
**Does**: Run PowerShell commands, open apps, navigate files  
**Enabled**: Claude Desktop only  
**Examples**:
- Open a file: `"Open C:\path\to\file.txt"`
- Run a script: `"Run powershell script to list all .js files"`
- Check system: `"What's the current Windows version?"`

---

### 2. Firecrawl ⭐
**Does**: Scrape websites, extract structured content, crawl entire sites  
**Example Usage**:
```
"Use Firecrawl to scrape https://example.com/pricing and extract 
the pricing table (plans, prices, features)"
```
**Best For**:
- Competitor analysis (landing pages, pricing, messaging)
- Content extraction (articles, FAQ, blog posts)
- Market research (scrape multiple competitor sites, compare)
- Link checking (verify all links on a site are working)

---

### 3. Supadata
**Does**: Extract transcripts from videos + metadata  
**Example Usage**:
```
"Use Supadata to get the transcript from 
https://www.youtube.com/watch?v=... and summarize the key points"
```
**Best For**:
- Analyzing competitor video content
- Extracting hooks from successful YouTube videos
- Summarizing long webinars/training videos
- Finding quotes for marketing

---

### 4. Brave Search ⭐
**Does**: Real-time web search (better freshness than Google)  
**Example Usage**:
```
"Use Brave Search to find the latest news about nonprofit 
fundraising trends this year"
```
**Best For**:
- Finding breaking news
- Research with time filters (last 24 hours, last week)
- Competitive intelligence
- Fact-checking current claims
- Alternative to Google (faster, more privacy-focused)

---

### 5. Context7
**Does**: Fetch current versions of docs (React, Next.js, Node, etc.)  
**Example Usage**:
```
"Use Context7 to get the latest Next.js 15 documentation 
and explain the new App Router features"
```
**Best For**:
- Development: keep code aligned with current library versions
- Avoiding outdated examples
- Learning new framework features
- Debugging version-specific issues

---

### 6. Chrome DevTools
**Does**: Automate browser, take screenshots, run tests, debug  
**Example Usage**:
```
"Use Chrome DevTools to visit https://example.com and 
take a screenshot of the mobile view (375px width)"
```
**Best For**:
- Testing responsive design
- Visual validation (does button look right?)
- E2E testing (click button → verify page loaded)
- Screenshot generation for docs

---

### 7. Obsidian MCP ⭐
**Does**: Read/write to your Obsidian vault  
**Example Usage**:
```
"Create a new note in my Obsidian vault called 'Campaign Ideas' 
and add the following content: [...]"
```
**Best For**:
- Storing research findings
- Creating project documentation
- Building a knowledge base
- Linking related ideas (Obsidian backlinks)
- Keeping a decision log

---

### 8. Google Knowledge Graph
**Does**: Look up entities (people, organizations, concepts)  
**Example Usage**:
```
"Use Google Knowledge Graph to find information about 
the Bill & Melinda Gates Foundation"
```
**Best For**:
- Research organizations
- Verify facts about entities
- Find relationships (CEO, related companies)
- Get official descriptions

---

### 9. Better Search Console ⭐
**Does**: Sync Google Search Console data (your site's performance)  
**Example Usage**:
```
"Use Better Search Console to show me the top 10 queries 
driving clicks to my site last month"
```
**Best For**:
- SEO analysis (see what people search for to find you)
- Identify content gaps (searches you're not ranking for)
- Track ranking positions
- Optimize titles/descriptions (improve CTR)

---

### 10. DataForSEO ⭐⭐
**Does**: SERP data, keyword volume, competitor rankings, trends  
**Example Usage**:
```
"Use DataForSEO to find high-volume keywords related to 
'nonprofit donor management' and show me who's ranking #1-3"
```
**Best For**:
- Keyword research (volume, difficulty, CPC)
- Competitor analysis (what keywords do they rank for?)
- SERP features (featured snippets, People Also Ask)
- Trend analysis (seasonal keyword volume)
- **Most powerful MCP for marketing strategy**

---

### 11. Gmail ⭐
**Does**: Search, read, summarize emails  
**Example Usage**:
```
"Search my Gmail for all emails from John@partner.com 
in the last 30 days and summarize what we discussed"
```
**Best For**:
- Email research (find past conversations)
- Extract info from threads
- Find contact details (extract from signatures)
- Analyze partner/donor emails
- Track action items

---

### 12. Notion MCP
**Does**: Read/write Notion databases and pages  
**Example Usage**:
```
"Create a new row in my Notion 'Campaigns' database with: 
Name: 'Q2 Fundraising', Status: 'Planning', Budget: $5000"
```
**Best For**:
- Project management (create tasks, update status)
- Content planning (schedule posts)
- Donor tracking (create/update records)
- Reporting (pull metrics from Notion)

---

### 13. Graphiti (Optional)
**Does**: Knowledge graph with temporal awareness (remembers relationships over time)  
**Advanced**: Stores context about your projects, decisions, learnings  
**Example Usage**:
```
"Add to Graphiti: On [date], we learned that [insight] 
about [topic]. It relates to [previous learning] from [date]."
```
**Best For**:
- Complex project memory (more powerful than notes)
- Temporal knowledge (what changed when?)
- Relationship tracking (who works with whom?)
- Long-term project intelligence

---

## 🎯 Common Workflows Using Multiple MCPs

### Workflow 1: Competitor Analysis
```
1. Use Firecrawl to scrape competitor website (landing page, pricing)
2. Use Supadata to extract video content (if they have YouTube)
3. Use DataForSEO to see what keywords they rank for
4. Use Gmail to pull emails from them (partnerships, updates)
5. Store findings in Obsidian → link related insights
6. Create summary in Notion for the team
```

### Workflow 2: SEO Campaign Planning
```
1. Use DataForSEO to find high-volume keywords
2. Use Better Search Console to see current performance
3. Use Brave Search to research top-ranking competitors
4. Use Context7 to ensure latest SEO best practices
5. Store strategy in Obsidian + create roadmap in Notion
6. Monitor weekly with Better Search Console
```

### Workflow 3: Content Creation
```
1. Use DataForSEO to find trending topics in your niche
2. Use Supadata to extract hooks from competitor videos
3. Use Firecrawl to scrape best-performing blog posts
4. Use Gmail to find successful email subject lines
5. Create content plan in Notion
6. Store content library in Obsidian
```

### Workflow 4: Email Research
```
1. Use Gmail to find all emails from a partner
2. Use Firecrawl to scrape their website for latest updates
3. Use Brave Search to see if they're in the news
4. Use Google Knowledge Graph for official info
5. Store findings in Obsidian as a relationship profile
6. Add action items to Notion
```

---

## 📊 MCP Activation Map

### When Using Claude Desktop (Chat)
```
✅ All 15 MCPs are available
✅ Ask Claude to use any of them
✅ MCPs only activate when called (no performance impact if unused)
```

### When Using Claude Code (Terminal)
```
✅ Only `.mcp.json` MCPs are available
  - Firecrawl, Context7, Brave Search, Playwright, Chromium
  - Supadata, Sentry, Vercel
❌ Obsidian, Gmail, Notion (Desktop-only) are NOT available
  → Use Desktop Claude if you need these
```

### When Using Ollama (Local Model)
```
✅ Set environment vars:
  ANTHROPIC_BASE_URL=http://localhost:11434/v1
  ANTHROPIC_MODEL=qwen3-coder
✅ All MCPs work the same way
❌ But you lose cloud Claude's intelligence (local model is weaker)
→ Use for boilerplate/simple tasks only
```

---

## 💡 Pro Tips

### Tip 1: Chain MCPs for Compound Research
Instead of:
```
"Use Firecrawl to scrape competitor landing page"
```

Do this:
```
"Use Firecrawl to scrape competitor landing page, then use 
DataForSEO to find the keywords they're ranking for, then 
use Brave Search to find news about them. Summarize all findings."
```

### Tip 2: Store Findings Immediately
After research, save to Obsidian or Notion while context is fresh:
```
"After analyzing [thing], create a new Obsidian note called 
'[Topic] Research' and add: findings, links, related topics, 
next steps to investigate"
```

### Tip 3: Use Context7 for Dev Tasks
Before coding, pull current docs:
```
"Use Context7 to get the latest Next.js 15 docs, then 
help me build a [feature] using the current best practices"
```

### Tip 4: Gmail as Your Memory
Extract past decisions/agreements:
```
"Search Gmail for emails about [topic] from [date range], 
summarize what we agreed to, and add to Obsidian"
```

### Tip 5: DataForSEO for Marketing
Every campaign should start with keywords:
```
"Use DataForSEO to find 20 high-volume keywords for [topic], 
show me the difficulty/CPC, and suggest which to target first"
```

---

## 🚫 What MCPs Cannot Do

| MCP | Cannot Do | Workaround |
|-----|-----------|-----------|
| Firecrawl | Log into gated sites | Use username/password if Firecrawl supports it |
| Gmail | Send emails | Use Gmail's SMTP API or integrations |
| Notion | Create workspace | Must be done in Notion UI |
| DataForSEO | Guarantee rankings | Data is historical/current, not future |
| Brave Search | Deep web results | Use Firecrawl for structured data instead |
| Obsidian | Real-time sync with cloud | Use Obsidian Sync (paid) or Git |

---

## 🔄 MCP Status Check

To verify all MCPs are working:

**In Claude Desktop**, ask:
```
"Test all available MCPs:
1. Use Brave Search to find [topic]
2. List my Obsidian files
3. Search Gmail for [sender]
4. Get the top 5 queries from Better Search Console
5. Find keywords with DataForSEO for [topic]"
```

If all 5 return results, your setup is complete ✅

---

## 📖 For More Details

- **Setup**: See `SETUP-CHECKLIST.md`
- **API Keys**: See `API-CREDENTIALS-INVENTORY.md`
- **Configuration**: See `claude_desktop_config.json`
- **Skills**: See the 4 `SKILL-*.md` files

---

**You now have the most powerful Claude setup for web dev, AI automation, and marketing campaigns.** 🚀

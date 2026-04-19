# API Credentials Inventory

**Use this checklist to gather all API keys before starting setup.**  
Store each key in your password manager (1Password, Bitwarden, LastPass, etc.) with the name provided below.

---

## Required Services & Credentials

### 1. FIRECRAWL (Web Scraping & Crawling)
- **Service**: https://app.firecrawl.dev/
- **What It Does**: Scrape competitor sites, landing pages, extract content structure
- **Sign Up**: Click "Sign Up", create account
- **API Key Location**: Dashboard → API Keys → copy the key
- **Config Name**: `FIRECRAWL_API_KEY`
- **Cost**: Free tier available (25 credits/month); paid plans start ~$10/month
- **Status**: ⚪ Not yet obtained

### 2. SUPADATA (Video/Transcript Extraction)
- **Service**: https://supadata.ai/
- **What It Does**: Extract transcripts from YouTube, TikTok, Instagram, Twitter videos
- **Sign Up**: Create account (email or Google OAuth)
- **API Key Location**: Settings → API Keys → copy the key
- **Config Name**: `SUPADATA_API_KEY`
- **Cost**: Free tier available; paid starts ~$19/month
- **Status**: ⚪ Not yet obtained

### 3. BRAVE SEARCH (Real-Time Web Search)
- **Service**: https://brave.com/search/api/
- **What It Does**: Real-time web search, news, with better freshness than Google
- **Sign Up**: Create account, submit API access request
- **API Key Location**: After approval, Settings → API Keys
- **Config Name**: `BRAVE_API_KEY`
- **Cost**: Free tier (2,000 calls/month); paid $5–100/month depending on volume
- **Status**: ⚪ Not yet obtained

### 4. GOOGLE KNOWLEDGE GRAPH (Entity Research)
- **Service**: https://console.cloud.google.com/
- **What It Does**: Look up facts, entities, relationships (organizations, people, concepts)
- **Sign Up**: Create/use Google account
- **Steps**:
  1. Go to Google Cloud Console
  2. Create new project (name: "Claude MCPs" or similar)
  3. Enable "Knowledge Graph Search API"
  4. Create API Key (Credentials → + Create Credentials → API Key)
- **Config Name**: `GOOGLE_KNOWLEDGE_GRAPH_API_KEY`
- **Cost**: Free tier (100 requests/day); $5 per 1000 queries above that
- **Status**: ⚪ Not yet obtained

### 5. DATAFORSEO (SEO & Keyword Research)
- **Service**: https://dataforseo.com/
- **What It Does**: SERP data, keyword volumes, ranking tracking, competitor analysis
- **Sign Up**: Create account (email)
- **Login Credentials**: Username and password
- **Config Names**: `DATAFORSEO_LOGIN` + `DATAFORSEO_PASSWORD`
- **Cost**: Free tier available; paid plans start $99/month
- **Status**: ⚪ Not yet obtained

### 6. GOOGLE SEARCH CONSOLE (Web Performance Data)
- **Service**: https://console.cloud.google.com/
- **What It Does**: Query performance, click-through rates, rankings for your site
- **Setup**:
  1. Go to Google Cloud Console (same project as above)
  2. Create **Service Account**:
     - IAM & Admin → Service Accounts → Create Service Account
     - Name: "Claude-MCPs"
     - Skip optional steps, click Create
  3. Go to the new service account → Keys → Add Key → Create new JSON key
  4. A JSON file downloads automatically. **Save this file**.
- **File Path**: `C:\Users\<USERNAME>\service-accounts\gsc-service-account.json` (your choice of location)
- **Config Name**: `GOOGLE_SERVICE_ACCOUNT_KEY` (path to the JSON file)
- **Cost**: Free
- **Status**: ⚪ Not yet obtained

### 7. NOTION INTEGRATION (Project Management & Notes)
- **Service**: https://www.notion.so/my-integrations
- **What It Does**: Read/write Notion databases for project tracking, content planning
- **Setup**:
  1. Go to Notion Integrations
  2. Click "+ New integration"
  3. Name: "Claude MCPs", set logo if desired
  4. Submit
  5. Copy the **Integration Token** (shown on the confirmation page)
- **Config Name**: `OPENAPI_MCP_HEADERS` (formatted as JSON with Bearer token; see config file)
- **Cost**: Free
- **Status**: ⚪ Not yet obtained

### 8. GMAIL (Email Integration)
- **Service**: Gmail (Google account)
- **What It Does**: Search emails, summarize threads, extract info
- **Setup**: 
  - First time you use the Gmail MCP, Claude will ask to authenticate
  - Click the auth link, approve access to Gmail
  - No API key needed
- **Cost**: Free
- **Status**: ⚪ Not yet obtained (uses OAuth)

### 9. OPENAI API KEY (for Graphiti, Optional)
- **Service**: https://platform.openai.com/api/keys
- **What It Does**: Powers Graphiti's knowledge graph (if using)
- **Sign Up**: Create OpenAI account, add payment method
- **API Key Location**: Settings → API Keys → create new
- **Config Name**: `OPENAI_API_KEY` (in Graphiti `.env`)
- **Cost**: Pay-as-you-go; typical usage ~$5–20/month
- **Status**: ⚪ Not yet obtained (optional)
- **Note**: Can use Anthropic API instead if preferred

---

## Optional but Recommended

### 10. VERCEL (Deployment & Logs)
- **Service**: https://vercel.com/dashboard
- **What It Does**: Deploy Next.js apps, check logs, manage env vars
- **Setup**: 
  1. Sign up with GitHub
  2. Settings → Tokens → create Personal Access Token
  3. Copy token
- **Config Name**: `VERCEL_API_TOKEN`
- **Status**: ⚪ Not yet obtained

### 11. LINEAR (Issue Tracking)
- **Service**: https://linear.app/settings/api
- **What It Does**: Create/update issues, manage sprints
- **Setup**:
  1. In Linear: Settings → API → Personal API Keys
  2. Create key, copy
- **Config Name**: `LINEAR_API_TOKEN`
- **Status**: ⚪ Not yet obtained

### 12. SENTRY (Error Monitoring)
- **Service**: https://sentry.io/
- **What It Does**: Track errors in deployed apps
- **Setup**:
  1. Create account, create organization
  2. Settings → Auth Tokens → Create token (scope: `event:read`, `org:read`)
- **Config Name**: `SENTRY_AUTH_TOKEN`
- **Status**: ⚪ Not yet obtained

---

## Credential Storage Checklist

Use this template for your password manager:

```
Service: [Name]
Type: API Key / Credentials
Username: [if applicable]
Password/Token: [the key]
URL: [service login page]
Notes: Used by Claude MCP [MCP name]
Last Rotated: [date]
Rotation Due: [date + 90 days]
```

---

## Setup Order (Recommended)

Do these in this order to minimize blocked time:

1. **Immediately** (required for setup):
   - Google Knowledge Graph API (quick, 5 min)
   - Google Service Account JSON (quick, 5 min)
   - Gmail (auto on first use, 2 min)

2. **Before coworker starts setup** (takes time to approve):
   - Brave Search (may take 24–48 hours for approval)
   - DataForSEO (can use right away)
   - Firecrawl (instant)
   - Supadata (instant)

3. **During setup** (can parallelize):
   - Notion Integration (5 min)
   - Vercel (5 min, if using)
   - Sentry (5 min, if using)
   - OpenAI API (instant, if using Graphiti)

4. **After setup** (nice to have, not blocking):
   - Linear (if using)

---

## Cost Summary

| Service | Free Tier | Paid Tier | Recommended For |
|---------|-----------|-----------|-----------------|
| Firecrawl | 25 credits/mo | $10+/mo | Web scraping; start free |
| Supadata | Limited | $19+/mo | Video transcripts; free tier enough to start |
| Brave Search | 2,000 queries/mo | $5–100/mo | Research; free tier sufficient |
| Google KG | 100/day | $5 per 1k queries | Entity lookups; free tier ok |
| DataForSEO | Free tier | $99+/mo | SEO research; free tier limited but works |
| Gmail | Free | N/A | Part of Google account |
| Notion | Free | $10+/mo | Free tier sufficient for Claude |
| Vercel | Free | $20+/mo | Deployment; free tier sufficient |
| Sentry | Free | $29+/mo | Error tracking; free tier ok |
| OpenAI | Pay-as-you-go | N/A | ~$5–20/mo for typical Graphiti use |

**Estimated monthly cost if all enabled**: $50–150 (highly optional; start with free tiers)

---

## Final Checklist Before Setup

- [ ] All required credentials obtained or noted as "will auth on first use"
- [ ] Credentials stored securely in password manager
- [ ] Service account JSON file downloaded (for Google)
- [ ] Brave Search approval status checked (may take 24–48 hours)
- [ ] All API keys are valid (test by visiting service dashboard)
- [ ] Coworker has access to password manager
- [ ] Backup of original `claude_desktop_config.json` made

**Ready to begin setup!** ✅

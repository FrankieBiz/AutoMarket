@echo off
REM This script opens all the API signup pages in your browser
REM Email is pre-filled: francis@beyondlimitscarefoundation.org

echo.
echo Opening API signup pages...
echo ===========================
echo.

REM Google Cloud (Knowledge Graph + Service Account)
echo Opening Google Cloud...
start "Google Cloud" "https://console.cloud.google.com/"

REM Firecrawl
echo Opening Firecrawl...
start "Firecrawl" "https://app.firecrawl.dev/"

REM DataForSEO
echo Opening DataForSEO...
start "DataForSEO" "https://dataforseo.com/"

REM Supadata
echo Opening Supadata...
start "Supadata" "https://supadata.ai/"

REM Brave Search
echo Opening Brave Search...
start "Brave Search" "https://brave.com/search/api/"

REM Notion
echo Opening Notion Integrations...
start "Notion" "https://www.notion.so/my-integrations"

REM GitHub (for future MCP development)
echo Opening GitHub...
start "GitHub" "https://github.com/signup?email=francis@beyondlimitscarefoundation.org"

echo.
echo All signup pages opened in your browser!
echo.
echo Sign up for each service and save API keys in your password manager.
echo See QUICK-START-AFTER-INSTALL.md for details.
echo.
pause

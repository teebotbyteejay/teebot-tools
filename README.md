# teebot-tools 🐣🔧

Small CLI tools for AI agents and their humans. All bash, minimal dependencies.

## Tools

| Tool | What it does |
|------|-------------|
| **workspace-status** | Health dashboard — identity files, memory, git repos, memchain, disk |
| **session-recap** | Daily activity summary — builder rounds, curiosity sessions, commits |
| **quick-commit** (qc) | One-command git: stage → auto-commit → push |
| **mailcheck** | Check Gmail (or agentmail) inbox for unread messages |
| **mem-eval** | Memory coherence scorer (0-100) — staleness, orphans, density, contradictions |
| **memcompress** | Memory compression — dedup, filler stripping, date merging. `--in-place` or stdout |
| **hymem** | Complexity-routed memory retrieval — classifies queries into 3 tiers (fast/medium/deep) |
| **daily-briefing** | Morning summary — builder rounds, git, email, moltbook, workspace health |
| **publish-post** | One-command blog publishing — copies post, commits, pushes to GitHub Pages |
| **tz** | Quick timezone display and converter |
| **git-stats** | Activity summary across all workspace git repos |
| **safe-prepend** | Prepend text to files with backup + corruption protection |
| **build-streak** | Shipping streak tracker from builder-log.md |
| **log-search** | Search across all memory and identity files with context |
| **todo** | Markdown-backed task tracker (add/done/rm/clear/list) |
| **mem-density** | Information density report for markdown files |
| **update-stats** | Regenerate stats.html from live data |
| **auto-rss** | Auto-generate RSS feed from blog posts |
| **orchestrate** | Sub-agent orchestration helpers — file-based checkpoints, chain/ensemble/supervisor templates |
| **sync-docs** | Sync documentation files across repos |

## Install

```bash
# Install all tools to ~/.local/bin
curl -fsSL https://raw.githubusercontent.com/teebotbyteejay/teebot-tools/main/install.sh | bash

# Or clone and install
git clone https://github.com/teebotbyteejay/teebot-tools.git
cd teebot-tools && bash install.sh
```

## Requirements

- bash, coreutils, git, grep, awk, sed
- `gog` CLI (for mailcheck Gmail mode)
- That's it.

## Memory Tools

The memory toolkit works together:

1. **memcompress** — compress verbose logs, strip filler
2. **mem-eval** — score memory health (0-100), flag staleness and orphans
3. **hymem** — route memory queries by complexity (fast grep → targeted read → deep synthesis)

For cryptographic memory integrity, see [memchain](https://github.com/teebotbyteejay/memchain).

## License

MIT

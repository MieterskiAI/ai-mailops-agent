# Repository Metadata (GitHub About + Topics)

## About description
Decision-routing workflow for email triage: classifies intent, routes edge cases, and keeps a human approval gate (no auto-send).

## Validated topics
All topics below comply with `^[a-z0-9-]{1,50}$`, and the list has 11 topics total (<= 20):

- workflow
- process-automation
- operations
- email-triage
- ticketing
- human-in-the-loop
- decision-routing
- portfolio
- power-platform
- power-automate
- power-apps

## How to apply metadata
From the repository root:

```bash
bash scripts/set_repo_metadata.sh OWNER/REPO
```

Example:

```bash
bash scripts/set_repo_metadata.sh MieterskiAI/ai-mailops-agent
```

The script checks `gh` installation/authentication, applies the About description, replaces topics (best-effort), and prints a summary.

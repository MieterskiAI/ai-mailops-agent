# AI MailOps Agent — Decision Support Prototype (Human-in-the-Loop)

This repository documents a **decision-support agent** for operational inbox triage. It is **not automation**: the agent never sends or deletes emails and does not execute actions on its own.

## Suggested GitHub About & Topics
- **GitHub About (1 line):** Decision-support prototype for inbox triage: converts an email into a Decision Context Card with risk/next-step/draft reply; human-in-the-loop (no autosend).
- **Topics (tags):** decision-support, human-in-the-loop, ops, triage, guardrails, privacy, evaluation, python, portfolio
- **Note:** About/Topics are set in the GitHub UI (not via git).

## Repo Type
- **AI agent / decision-support prototype** (documentation-first, human-in-the-loop).

## What this does (concrete)
- Converts incoming emails into a **Decision Context Card**.
- Suggests a **recommended next action** and a **draft reply**.
- Requires a **human decision** before any action is taken.

## Quick start (no setup)
1. Open the synthetic examples in `/examples`.
2. Compare each `email_*.txt` with its `*_expected_decision_card.md`.
3. (Optional) Run the sanity check script:
   ```bash
   python scripts/sanity_check.py
   ```

## Quick start (local)
There is no runnable pipeline code in this repo yet. When a runtime is added, this section will include installation steps, environment variables, and how to start the local service.

## Examples
- `/examples/email_1.txt` + `/examples/email_1_expected_decision_card.md`
- `/examples/email_2.txt` + `/examples/email_2_expected_decision_card.md`
- `/examples/email_3.txt` + `/examples/email_3_expected_decision_card.md`

## Documentation
- Architecture: `/docs/architecture.md`
- Guardrails (safety): `/docs/guardrails.md`
- Evaluation rubric: `/docs/evaluation.md`
- Privacy & logging: `/docs/privacy.md`
- Reasoning prompts: `/agent_reasoning.md`
- Portfolio audit: `/docs/portfolio_audit.md`

## Roles
- Operations/Process Analyst
- Reporting/Data Quality
- Decision Support

### What this proves
- Decision context can be standardized without auto-execution.
- Risk and intent can be surfaced consistently for operator review.
- Drafts can be produced safely under strict guardrails.
- Evaluation criteria are explicit and auditable (see rubric).
- Privacy/logging boundaries are defined, including no PII storage.

## Consistency: Not Automation
- No auto-send, no deletion, no autonomous actions.
- Human operator is always the final decision maker.

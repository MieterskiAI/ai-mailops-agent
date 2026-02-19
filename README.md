# Email Triage Decision-Routing Workflow (Human-in-the-Loop)

A portfolio case study for **Business Automation / Process Automation**: route inbound email cases to the right path, escalate uncertainty, and keep human approval at critical decisions.

## Problem
Operations inboxes receive mixed requests (billing, access, incidents, vendor messages). Manual triage is slow, inconsistent, and hard to audit.

## Solution
This project defines a **decision-routing workflow** that:
- classifies email intent,
- applies routing and risk rules,
- generates a recommended next step and draft response,
- requires a human gate before final action.

## Scope / Non-goals (Safety)
- No auto-send, no deletion, no autonomous actions.
- Draft replies are suggestions only; a human operator is always the final decision maker.
- Examples are synthetic; do not store or commit real customer PII.

## Workflow
1. Ingest email from shared mailbox.
2. Build a Decision Context Card (intent, risk, recommendation, draft).
3. Route by rules (standard path vs. edge-case queue).
4. Trigger human review/approval for edge cases or high-risk items.
5. Log decision outcome for audit and continuous improvement.

## Inputs / Outputs
**Inputs**
- Email subject/body + metadata (sender, timestamp, thread).
- Routing rules and policy constraints.

**Outputs**
- Decision Context Card.
- Suggested route + operator decision record.
- Draft reply (not auto-sent).

## Edge Cases Covered
- Low-confidence classification.
- Missing required context (incomplete request).
- Potentially sensitive/high-impact requests.
- Conflicting signals (urgent tone vs low operational risk).

## KPIs (Planned)
- Triage cycle time.
- First-pass routing accuracy.
- % cases requiring human escalation.
- Rework rate after operator review.

> Note: KPI improvement claims are intentionally omitted until baseline and measured results are collected.

## Documentation
- [Architecture](docs/architecture.md)
- [Guardrails](docs/guardrails.md)
- [Evaluation Rubric](docs/evaluation.md)
- [Privacy](docs/privacy.md)
- [Portfolio Audit](docs/portfolio_audit.md)
- [Agent Reasoning](agent_reasoning.md)

## Quick Demo / Artifacts
> This repository is documentation-first (case study + artifacts). It does not include a production runtime yet.

- Synthetic sample emails and expected decision cards in [`examples/`](examples/).
- Architecture and controls documentation in [`docs/`](docs/).
- Sanity check for examples:
  ```bash
  python scripts/sanity_check.py
  ```

## Power Platform Implementation Mapping
- **Power Apps**: intake/review UI for each email case, with operator decision capture.
- **Power Automate**: orchestration flow for classification handoff, routing rules, approvals, and notifications.
- **Outlook/Exchange Connector + Shared Mailbox**: monitored intake channel for operational emails.
- **SharePoint or Dataverse**: persistent case records, labels, and decision logs.
- **Teams + Approvals**: human-in-the-loop gate for escalations and exceptions.

## What This Proves
- Ability to model a credible operations workflow with clear handoffs.
- Human-in-the-loop decision design (not blind automation).
- Governance mindset: guardrails, auditability, and documented edge-case handling.
- Readiness for Junior Business Automation / Power Platform analyst roles.

# Architecture

This repository documents a human-in-the-loop decision-support agent for operational email triage. The system does **not** execute actions; it prepares decision context for a human operator.

## Decision Flow (Mermaid)

```mermaid
flowchart LR
    A[Trigger: New email] --> B[Intent & Risk Analysis]
    B --> C[Decision Context Card]
    C --> D[Logging & Audit Trail]
    D --> E[Draft Reply]
    E --> F[Human Action]
```

## Notes
- Drafts are suggestions, never auto-sent.
- Logging captures decision artifacts, not sensitive content.

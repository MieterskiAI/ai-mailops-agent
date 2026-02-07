# Privacy & Logging

## What we log
- Decision Context Card fields (intent, risk, recommended action, rationale).
- Timestamps and routing metadata (e.g., team assignment).
- Human decision outcome (approved, edited, escalated).

## What we do NOT log
- Full raw email bodies.
- Personal identifiers (names, emails, phone numbers, IDs).
- Attachments or sensitive content.

## Masking policy
- Replace any detected PII with placeholders (e.g., [NAME], [EMAIL], [ID]).
- Store only minimal, decision-relevant context.

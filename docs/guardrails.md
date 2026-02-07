# Guardrails (Safety Rules)

These rules enforce human-in-the-loop operation and prevent unsafe automation.

## Mandatory Rules
- **No auto-send:** The agent must never send emails on its own.
- **No deletion:** The agent must never delete messages or records.
- **PII masking:** Mask sensitive data in logs and examples (names, emails, IDs).
- **Uncertainty handling:** If intent or risk is unclear, return “Uncertain” and ask for clarification.
- **Escalation:** Urgent or high-risk cases must be escalated to a human owner (on-call/lead).

## Operator Overrides
- Humans can override any recommendation.
- Draft replies are editable and optional.

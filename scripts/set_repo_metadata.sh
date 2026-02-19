#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 OWNER/REPO" >&2
  exit 1
fi

REPO="$1"
if ! printf '%s' "$REPO" | grep -Eq '^[^/]+/[^/]+$'; then
  echo "Error: argument must be in OWNER/REPO format." >&2
  exit 1
fi

DESCRIPTION="Decision-routing workflow for email triage: classifies intent, routes edge cases, and keeps a human approval gate (no auto-send)."
TOPICS=(
  workflow
  process-automation
  operations
  email-triage
  ticketing
  human-in-the-loop
  decision-routing
  portfolio
  power-platform
  power-automate
  power-apps
)

if ! command -v gh >/dev/null 2>&1; then
  echo "Error: GitHub CLI ('gh') is not installed." >&2
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "Error: gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

for topic in "${TOPICS[@]}"; do
  if ! printf '%s' "$topic" | grep -Eq '^[a-z0-9-]{1,50}$'; then
    echo "Error: invalid topic '$topic'. Topics must match ^[a-z0-9-]{1,50}$." >&2
    exit 1
  fi
done

if [ "${#TOPICS[@]}" -gt 20 ]; then
  echo "Error: too many topics (${#TOPICS[@]}). Maximum is 20." >&2
  exit 1
fi

echo "Applying description to ${REPO}..."
gh repo edit "$REPO" --description "$DESCRIPTION"

echo "Fetching existing topics..."
EXISTING_TOPICS=$(gh api "repos/${REPO}/topics" --jq '.names[]' 2>/dev/null || true)

CAN_REMOVE_TOPICS=false
if gh repo edit --help 2>/dev/null | grep -q -- '--remove-topic'; then
  CAN_REMOVE_TOPICS=true
fi

if [ -n "$EXISTING_TOPICS" ]; then
  if [ "$CAN_REMOVE_TOPICS" = true ]; then
    echo "Removing existing topics..."
    while IFS= read -r old_topic; do
      [ -z "$old_topic" ] && continue
      gh repo edit "$REPO" --remove-topic "$old_topic" >/dev/null
    done <<EOF_TOPICS
$EXISTING_TOPICS
EOF_TOPICS
  else
    echo "Warning: gh does not support --remove-topic; existing topics may remain." >&2
  fi
else
  echo "No existing topics found (or unable to list)."
fi

echo "Applying topics..."
for topic in "${TOPICS[@]}"; do
  gh repo edit "$REPO" --add-topic "$topic"
done

printf '\nDone.\n'
echo "Repository: https://github.com/${REPO}"
echo "Description: ${DESCRIPTION}"
printf 'Topics (%s): %s\n' "${#TOPICS[@]}" "$(printf '%s, ' "${TOPICS[@]}" | sed 's/, $//')"

#!/usr/bin/env python3
import sys
from pathlib import Path

REQUIRED_SECTIONS = {
    "intent",
    "risk",
    "recommended next action",
    "draft reply",
    "human verification",
}

EXAMPLES = [
    ("examples/email_1.txt", "examples/email_1_expected_decision_card.md"),
    ("examples/email_2.txt", "examples/email_2_expected_decision_card.md"),
    ("examples/email_3.txt", "examples/email_3_expected_decision_card.md"),
]


def normalized_headers(markdown_text: str) -> set[str]:
    headers = set()
    for line in markdown_text.splitlines():
        stripped = line.strip()
        if stripped.startswith("#"):
            header = stripped.lstrip("#").strip().lower()
            headers.add(header)
    return headers


def main() -> int:
    repo_root = Path(__file__).resolve().parents[1]
    missing_files = []
    missing_sections = []

    for email_path, card_path in EXAMPLES:
        email_file = repo_root / email_path
        card_file = repo_root / card_path
        if not email_file.exists():
            missing_files.append(str(email_file))
        if not card_file.exists():
            missing_files.append(str(card_file))
            continue

        headers = normalized_headers(card_file.read_text(encoding="utf-8"))
        missing = sorted(section for section in REQUIRED_SECTIONS if section not in headers)
        if missing:
            missing_sections.append((str(card_file), missing))

    if missing_files:
        print("Missing files:")
        for path in missing_files:
            print(f"- {path}")
        return 1

    if missing_sections:
        print("Missing required sections:")
        for path, sections in missing_sections:
            print(f"- {path}: {', '.join(sections)}")
        return 1

    print("Sanity check passed: all example files and required sections present.")
    return 0


if __name__ == "__main__":
    sys.exit(main())

AI MailOps 2.0 — Intelligent Email Automation System
Automated end-to-end pipeline for processing inbound emails using Zapier + OpenAI.
Classifies messages (Lead / Support / Question / Spam / Urgent), assigns priority (1–10), generates a clean summary, logs everything to Google Sheets, and creates a ready-to-send draft reply in Gmail.
Tech Stack:
Zapier, OpenAI (GPT-4o), Gmail API, Google Sheets
How it Works (High-Level Flow)
New Email Arrives (Gmail Trigger)
Zapier captures incoming email metadata + body.
AI Classification (OpenAI GPT)
The model assigns:
Type: Lead / Support / Question / Urgent / Spam
Priority Score (1–10)
Summary of the message
Data Cleanup (Formatter Steps)
Several steps extract clean outputs for Sheets & Gmail.
Log to Google Sheets
System saves every message to MailOps_Log sheet, including:
Timestamp
Sender
Subject
Classification
Priority
Summary
Draft status
AI draft reply
Generate Draft Reply (OpenAI GPT)
AI produces a short, helpful response — no greeting, no signature.
Create Gmail Draft
Google Draft is created and ready for manual approval / sending.
Repository Structure
/
├── README.md          # Project documentation
├── prompts.md         # Prompts used inside Zapier steps
└── docs/
    └── zapier_steps.md   # Step-by-step Zap setup
Zapier Steps Overview
Trigger: Gmail — New Email
AI Classification: OpenAI Conversation
Formatter: Extract classification
Formatter: Extract priority
Formatter: Extract summary
Google Sheets: Add new log row
OpenAI Draft Writer: Create email draft body
Gmail: Create Draft
Why This Project Matters
Modern companies drown in repetitive support emails.
This automation:
Reduces response time
Prevents missed urgent messages
Standardizes communication quality
Saves hours of manual triage weekly
Creates audit logs for every email
It’s a production-ready AI operations pipeline — perfect for customer service, lead generation desks, and internal operations teams.
Live Demo (Concept)
New email → Sheet log entry → Automated draft → Human sends reply.
Fully auditable, extendable, and customizable.
Future Improvements
Auto-send for low-risk categories
Slack notifications for urgent cases
CRM integration (HubSpot / Pipedrive)
Adding sentiment analysis
Auto-tagging inside Gmail
Attachments handling
Author
MieterskiAI
AI Automation Developer — building practical, production-ready AI systems with Zapier, GPT, and RAG pipelines.

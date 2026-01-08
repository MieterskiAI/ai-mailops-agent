# AI MailOps 2.0 – Decision-Support System for Operational Email Triage

Designing human-centered workflows that help operational teams regain control over chaotic inboxes.

## 🧠 Business Context

In many organizations, shared inboxes are a hidden bottleneck in operational processes.  
Important cases get lost, priorities are unclear and decisions are made chaotically.

This project is not about replacing people with automation.

It is about designing a decision-support workflow that helps employees:
- understand the intent of each message,
- see what really matters,
- and decide what to do next.

## 🔁 Before / After

**Before**
- no prioritization  
- manual inbox triage  
- high risk of missing critical cases  

**After**
- structured decision flow  
- AI-supported action suggestions  
- faster reaction time of operational teams  

## 🔄 Decision Flow

Incoming Email  
→ AI Intent Analysis  
→ Suggested Decision  
→ Human Action

## 🤝 Human-in-the-Loop

This system never sends or executes decisions automatically.  
AI suggests actions, but final responsibility always belongs to the employee.

---

### How the Pipeline Works

**1. Gmail Trigger – New Email Arrives**  
Zapier captures incoming email metadata + body.

**2. AI Classification (OpenAI GPT)**  
Model assigns:
- Type: Lead / Support / Question / Urgent / Spam  
- Priority: 1–10  
- Summary: clean, short description

**3. Data Cleanup (Formatter Steps)**  
Extracted components for Sheets & Gmail:
- Timestamp  
- Sender  
- Subject  
- Classification  
- Priority  
- Summary  

**4. Log to Google Sheets**  
System saves every message to `MailOps_Log` sheet.

**5. AI Draft Reply (OpenAI GPT)**  
AI generates a short, helpful reply:
- No greeting  
- No signature  
- No invented facts  

**6. Gmail Draft Creation**  
Google Draft is created and ready for final approval / sending.

---

## 📁 Repository Structure

📦 email-ai-mailops-2.0  
├── README.md  
├── prompts.md  
└── docs/  
&nbsp;&nbsp;&nbsp;&nbsp;└── zapier_steps.md  

---

## ⚡ Why This Project Matters

Modern companies drown in repetitive support emails.

This system supports operational decision making by:
- reducing response time  
- preventing missed urgent messages  
- standardizing communication quality  
- saving hours of manual triage every week  
- creating full audit logs  

Perfect for:
- customer service  
- lead qualification  
- internal operations teams  
- small businesses  

---

## 🧪 Live Demo (Flow)

Email → Zapier → Extract fields → GPT classification & priority → Summary  
→ Log to Google Sheets  
→ AI draft reply → Gmail draft → Human approves → Send

---

## 📌 Future Improvements

- Auto-send for low-risk messages  
- Slack notifications for urgent issues  
- CRM integration (HubSpot / Pipedrive)  
- Sentiment analysis  
- Auto-tagging attachments  
- Multi-language support  

---

## 👤 Author

**MieterskiAI**  
Junior AI Process & Decision Support Designer — designing human-centered AI workflows that help organizations regain control over complex operational processes.

---

## ⭐ Support

If this project was helpful, leave a ⭐ on GitHub.

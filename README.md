# AI MailOps 2.0

Intelligent Email Automation System  
Automated end-to-end pipeline for processing inbound emails using Zapier + OpenAI.

System automatically:
- classifies messages (Lead / Support / Question / Spam / Urgent),
- assigns priority (1–10),
- generates a clean summary,
- logs everything to Google Sheets,
- and creates a ready-to-send **email draft in Gmail**.

---

## 🚀 Tech Stack
- **Zapier**
- **OpenAI (GPT-4o)**
- **Gmail API**
- **Google Sheets**

---

## 🔄 How the Pipeline Works (High-Level Flow)

### 1. Gmail Trigger – *New Email Arrives*
Zapier captures email metadata + body.

### 2. AI Classification (OpenAI GPT)
Model assigns:
- **Type:** Lead / Support / Question / Urgent / Spam  
- **Priority:** 1–10  
- **Summary:** clean, short description

### 3. Data Cleanup (Formatter Steps)
Extracted components for Sheets & Gmail:
- Timestamp  
- Sender  
- Subject  
- Classification  
- Priority  
- Summary  

### 4. Log to Google Sheets
System saves every message to `MailOps_Log` sheet.

### 5. AI Draft Reply (OpenAI GPT)
AI generates a short, helpful reply:
- No greeting  
- No signature  
- No invented facts  

### 6. Gmail Draft Creation
Google Draft is created and ready for final approval / sending.

---

📦 email-ai-mailops-2.0
│
├── README.md # Project overview
├── prompts.md # Prompts used in OpenAI steps
└── docs/
└── zapier_steps.md # Step-by-step Zap setup


## ⚡ Why This Project Matters

Modern companies drown in repetitive support emails.

This automation:

- Reduces response time  
- Prevents missed urgent messages  
- Standardizes communication quality  
- Saves **hours** of manual triage every week  
- Creates full audit logs  
- Is a **production-ready AI operations pipeline**

Perfect for:

- Customer service  
- Lead qualification  
- Internal operations teams  
- Small businesses  
- Anyone wanting real AI automation in workflow

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
AI Automation Developer — building practical, production-ready AI systems using Zapier, GPT, RAG and workflow automation techniques.

---

## ⭐ Support

If this project was helpful, leave a ⭐ on GitHub.  
More AI-powered pipelines coming soon.

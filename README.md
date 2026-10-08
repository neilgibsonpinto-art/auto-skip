# Antigravity Auto-Run (Zero-Prompt Autonomous Mode)

Eliminate repetitive **"Submit"**, **"Approve"**, and **"Proceed"** button clicks in Google Antigravity. This repository configures Antigravity to run tasks autonomously from start to finish without pausing for unnecessary confirmations or question prompts.

---

## 🚀 How It Works

Antigravity pauses and displays "Submit" / "Approve" buttons in three main scenarios:
1. **Interactive question tools (`ask_question`) and confirmation prompts**: Triggering interactive dialog boxes waiting for user clicks.
2. **Artifact feedback gates (`RequestFeedback: true`)**: Blocking execution until the user clicks "Proceed" or "Submit".
3. **Workspace Tool Approval Policies**: Stopping before executing terminal commands or file changes.

This repository provides **rules**, **skills**, and **configuration profiles** that instruct the agent to run continuously in autonomous mode, choose sensible defaults, self-heal errors, and execute tasks without waiting for manual confirmation.

---

## 📦 How to Publish This Repository to Your GitHub Account

1. Open your browser and go to [GitHub New Repository](https://github.com/new).
2. Name your repository (e.g. `antigravity-auto-run`).
3. In your local terminal inside this project directory, run:

```bash
git add .
git commit -m "Initial commit: Antigravity Auto-Run Autonomous Mode configuration"
git branch -M main
git remote add origin https://github.com/<YOUR_GITHUB_USERNAME>/antigravity-auto-run.git
git push -u origin main
```

---

## 🛠️ Usage in Antigravity

### Option 1: Call/Clone This Repo in Your Workspace
Whenever you open a project or reference this repo in Antigravity:
- The agent reads [AGENTS.md](file:///c:/Users/Neil%20Gibson%20Pinto/Documents/antigravity/charming-rutherford/AGENTS.md) and [.agents/rules/auto-execution.md](file:///c:/Users/Neil%20Gibson%20Pinto/Documents/antigravity/charming-rutherford/.agents/rules/auto-execution.md).
- It will automatically execute your requests hands-free without asking for trivial submit approvals.

### Option 2: Install Globally (One-Click)
To make **ALL** your Antigravity chats everywhere automatically run hands-free:

- **Windows (PowerShell)**:
  ```powershell
  .\scripts\install-global.ps1
  ```
- **Linux / macOS (Bash)**:
  ```bash
  chmod +x scripts/install-global.sh && ./scripts/install-global.sh
  ```

### Option 3: Use the `/goal` Slash Command
In any chat session where you want complete autonomous execution without interruptions, type `/goal` before your prompt:
```text
/goal build a full-stack dashboard with auth and run all tests
```

---

## ⚙️ Antigravity IDE / Desktop App Settings

To ensure the client UI never halts on tool execution approvals:
1. Open Antigravity **Settings** (`Ctrl + ,` or `Cmd + ,`).
2. Search for **`Permissions`** or **`Auto-Approve`**.
3. Set **Terminal Command Execution** and **File Modifications** to **`Always Allow` / `Auto-Approve`**.

---

## 📁 Repository Structure

```
├── .agents/
│   └── rules/
│       └── auto-execution.md   # Modular rule for continuous execution
├── scripts/
│   ├── install-global.ps1      # PowerShell global installation script
│   └── install-global.sh       # Bash global installation script
├── skills/
│   └── auto-run/
│       └── SKILL.md            # Reusable Antigravity auto-run skill
├── AGENTS.md                   # Workspace agent autonomous directives
├── GEMINI.md                   # Root agent directives
└── README.md                   # Setup and usage guide
```

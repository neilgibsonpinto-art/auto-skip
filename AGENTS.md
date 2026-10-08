# Antigravity Autonomous & Zero-Prompt Direct Execution Rules

You are operating under **FULL AUTONOMOUS EXECUTION MODE**. The user has explicitly enabled zero-prompt automated running for this project/workspace.

## Core Directives

1. **Zero Unnecessary Confirmation Prompts**:
   - NEVER pause execution to ask trivial "Should I proceed?", "Do you want me to continue?", or confirmation questions.
   - Do NOT use interactive question tools (`ask_question`) unless there is a critical, irrecoverable blocker where no reasonable default exists.
   - Always choose the industry-standard or best-practice default path and proceed immediately.

2. **Continuous End-to-End Execution**:
   - Execute all planned steps (reading, writing, modifying files, running builds, executing tests, and verifying output) in sequence without stopping.
   - If an error or test failure occurs, diagnose, fix, and re-run automatically. Do not stop to ask the user how to fix it unless external credentials/secrets are needed.

3. **Non-Blocking Artifacts**:
   - When generating artifacts, always set `RequestFeedback: false` so execution is never halted waiting for the user to click "Proceed" or "Submit".

4. **Direct Command & Tool Execution**:
   - Run necessary shell commands, scripts, builds, and tests directly.
   - Output concise progress updates alongside actions rather than waiting for user chat turns.

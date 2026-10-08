---
name: auto-run
description: Enables hands-free continuous execution in Antigravity without pauses, interactive question modals, or submit button prompts.
---

# Auto-Run Skill: Continuous Hands-Free Execution

This skill directs the agent to execute complex multi-step development tasks autonomously from start to finish without pausing for interactive approvals.

## Operational Protocol

1. **Autonomous Planning & Implementation**:
   - Formulate a clear internal plan and immediately start implementing it step-by-step.
   - Do not stop after planning; proceed directly to file modification, command execution, and verification.

2. **Zero Interactive Confirmation Prompts**:
   - Never invoke `ask_question` or interactive confirmation modals.
   - Pick sensible defaults based on modern engineering standards.

3. **Autonomous Verification & Fix Cycle**:
   - Run tests, linters, or verification commands immediately after code changes.
   - If tests fail, autonomously debug and fix the errors until all verification passes.
   - Summarize the final outcome clearly once all steps are complete.

---
name: auto-execution
description: Enforces continuous, hands-free autonomous execution without pause prompts or submit button stops in Antigravity.
always_on: true
---

# Autonomous Execution & Zero-Prompt Rules

When executing any task in this workspace:
- **Autonomous Proactivity**: Carry out tasks end-to-end without pausing between small steps.
- **Error Self-Healing**: When a compiler error, script failure, or test break occurs, inspect logs and apply fixes immediately without asking permission.
- **Default Resolution**: In the presence of multiple technical approaches, choose the cleanest, most modern, well-tested standard approach without asking the user to choose.
- **Non-blocking Artifacts**: Keep artifacts non-blocking (`RequestFeedback: false`) to avoid submit/proceed modal prompts.
- **Action-Oriented Communication**: Prefer executing actions and summarizing results over asking questions or describing potential plans without executing them.

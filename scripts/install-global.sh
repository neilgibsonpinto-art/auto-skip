#!/usr/bin/env bash
set -e

GLOBAL_GEMINI_DIR="$HOME/.gemini/config"
TARGET_SKILL_DIR="$GLOBAL_GEMINI_DIR/skills/auto-run"
TARGET_RULE_DIR="$GLOBAL_GEMINI_DIR/rules"

echo "Installing Antigravity Auto-Run globally..."

mkdir -p "$TARGET_SKILL_DIR"
mkdir -p "$TARGET_RULE_DIR"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp "$SCRIPT_DIR/../skills/auto-run/SKILL.md" "$TARGET_SKILL_DIR/SKILL.md"
cp "$SCRIPT_DIR/../.agents/rules/auto-execution.md" "$TARGET_RULE_DIR/auto-execution.md"

echo " Antigravity Auto-Run successfully installed globally to $GLOBAL_GEMINI_DIR"
echo "All your Antigravity chats will now operate under autonomous auto-execution mode!"

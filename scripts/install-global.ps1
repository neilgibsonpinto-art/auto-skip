# PowerShell Script to install Antigravity Auto-Run skill & rules globally
$ErrorActionPreference = "Stop"

$globalGeminiDir = [System.IO.Path]::Combine($env:USERPROFILE, ".gemini", "config")
$targetSkillDir = [System.IO.Path]::Combine($globalGeminiDir, "skills", "auto-run")
$targetRuleDir = [System.IO.Path]::Combine($globalGeminiDir, "rules")

Write-Host "Installing Antigravity Auto-Run globally..." -ForegroundColor Cyan

# Create directories if they do not exist
if (-not (Test-Path $targetSkillDir)) {
    New-Item -ItemType Directory -Path $targetSkillDir -Force | Out-Null
}
if (-not (Test-Path $targetRuleDir)) {
    New-Item -ItemType Directory -Path $targetRuleDir -Force | Out-Null
}

# Copy skill and rule
$currentDir = $PSScriptRoot
Copy-Item -Path (Join-Path $currentDir "..\skills\auto-run\SKILL.md") -Destination (Join-Path $targetSkillDir "SKILL.md") -Force
Copy-Item -Path (Join-Path $currentDir "..\.agents\rules\auto-execution.md") -Destination (Join-Path $targetRuleDir "auto-execution.md") -Force

Write-Host " Antigravity Auto-Run successfully installed globally to $globalGeminiDir" -ForegroundColor Green
Write-Host "All your Antigravity chats will now operate under autonomous auto-execution mode!" -ForegroundColor Yellow

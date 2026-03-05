#!/bin/bash

# AI Tutor Starter Kit Installer
# Creates workspace and configures OpenClaw agent

set -e

WORKSPACE_DIR="${HOME}/.openclaw/workspace-tutor"
AGENT_DIR="${HOME}/.openclaw/agents/tutor"
CONFIG_FILE="${HOME}/.openclaw/openclaw.json"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🎓 AI Tutor Starter Kit Installer"
echo "=================================="
echo ""

# Check if OpenClaw is installed
if ! command -v openclaw &> /dev/null; then
    echo "❌ OpenClaw not found. Please install OpenClaw first:"
    echo "   https://github.com/openclaw/openclaw"
    exit 1
fi

echo "✓ OpenClaw found"

# Create workspace directory
echo "📁 Creating workspace at ${WORKSPACE_DIR}..."
mkdir -p "${WORKSPACE_DIR}"/{CURRICULUM,LEARNING,ARCHIVE}

# Copy template files
echo "📄 Copying template files..."
cp "${SCRIPT_DIR}/templates/"*.md "${WORKSPACE_DIR}/"

# Copy curricula
echo "📚 Copying curricula..."
mkdir -p "${WORKSPACE_DIR}/curricula"
cp -r "${SCRIPT_DIR}/curricula/"* "${WORKSPACE_DIR}/curricula/"

# Copy docs
echo "📖 Copying documentation..."
mkdir -p "${WORKSPACE_DIR}/docs"
cp -r "${SCRIPT_DIR}/docs/"* "${WORKSPACE_DIR}/docs/" 2>/dev/null || true

# Create agent directory
echo "🤖 Creating agent directory..."
mkdir -p "${AGENT_DIR}"

echo ""
echo "✅ Workspace created successfully!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📋 NEXT STEPS:"
echo ""
echo "1. Add the tutor agent to your openclaw.json:"
echo ""
echo '   Add this to your "agents.list" array:'
echo ""
echo '   {'
echo '     "id": "tutor",'
echo '     "name": "Sage",'
echo '     "workspace": "~/.openclaw/workspace-tutor",'
echo '     "agentDir": "~/.openclaw/agents/tutor",'
echo '     "tools": { "profile": "full" }'
echo '   }'
echo ""
echo "2. (Optional) Add a channel binding to route a chat to the tutor"
echo ""
echo "3. Restart the gateway:"
echo "   openclaw gateway restart"
echo ""
echo "4. Start a conversation and say: Let's bootstrap"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "🎓 Happy learning!"

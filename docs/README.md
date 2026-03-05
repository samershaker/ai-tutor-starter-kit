# AI Tutor Starter Kit — Documentation

Welcome to the docs for the AI Tutor Starter Kit.

## Guides

- **[Curriculum Format](curriculum-format.md)** — How to create custom curricula in YAML
- **[Customization](customization.md)** — Personalize the tutor's personality, accountability, and behavior
- **[Feedback Loop](feedback-loop.md)** — How the student feedback system works

## Quick Reference

### Commands

| Command | Description |
|---------|-------------|
| `/study` | Start a study session |
| `/quiz` | Quick quiz on recent concepts |
| `/progress` | View your learning stats |
| `/explain [topic]` | Get an explanation at your level |
| `/project` | Get a mini-project suggestion |
| `/review` | Spaced repetition review |
| `/log [notes]` | Log offline study |
| `/curriculum` | View current learning track |
| `/load-curriculum [id]` | Load a new curriculum |
| `/skip` | Mark current topic as known |
| `/stuck` | Signal you're struggling |
| `/break` | Take a break |
| `/feedback [note]` | Log feedback locally |
| `/suggest [improvement]` | Create GitHub issue |
| `/review-feedback` | Show pending feedback |

### File Structure

```
~/.openclaw/workspace-tutor/
├── AGENTS.md         # Commands & capabilities
├── BOOTSTRAP.md      # Onboarding flow
├── FEEDBACK.md       # Local feedback notes
├── IDENTITY.md       # Tutor identity
├── MEMORY.md         # Long-term student observations
├── RESOURCES.md      # Current learning materials
├── SOUL.md           # Tutor personality
├── USER.md           # Student profile
├── curricula/        # Curriculum YAML files
├── docs/             # This documentation
├── CURRICULUM/       # Active learning tracks
├── LEARNING/         # Progress tracking
└── ARCHIVE/          # Completed tracks
```

## Getting Started

1. Run `install.sh` to set up the workspace
2. Add the tutor agent to your `openclaw.json` (see main README)
3. Start a conversation and say **"Let's bootstrap"**
4. Load a curriculum: `/load-curriculum ml-systems`
5. Start learning: `/study`

---

Back to [main README](../README.md).

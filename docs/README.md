# AI Tutor Starter Kit 🚀

Welcome to the **AI Tutor Starter Kit** — your personal AI-powered learning companion that helps you master any subject through personalized, spaced repetition and accountable study sessions.

## What is the AI Tutor Starter Kit?

The AI Tutor Starter Kit is an OpenClaw agent skill designed to make learning more effective, engaging, and tailored to you. Whether you're learning a new language, studying for certifications, or diving into a technical subject, the Tutor adapts to your pace and keeps you on track.

### Core Features

- **Personalized Learning** — The tutor learns your strengths and weaknesses, adjusting questions and explanations to focus on what you need most.
- **Spaced Repetition** — Reviews material at optimal intervals to maximize long-term retention (based on proven memory science).
- **Accountability** — Check-ins, streak tracking, and gentle nudges to keep you consistent.
- **Curriculum-Agnostic** — Not tied to any specific subject. Create curricula for languages, coding, history, science, or anything you want to learn.

## Quick Start Guide

### 1. Install & Bootstrap

If you're using OpenClaw, the Tutor comes pre-installed as a skill. To bootstrap your learning environment:

```bash
# Load the tutor skill
openclaw skill load tutor

# Initialize your learning profile
/tutor bootstrap
```

### 2. Load a Curriculum

Bring in a curriculum file (YAML format):

```bash
/tutor load curriculum path/to/your-curriculum.yaml
```

Or use a built-in sample:

```bash
/tutor load-sample
```

### 3. Start Learning!

Begin your first session:

```bash
/study
```

The tutor will guide you through lessons, quiz you, and track your progress.

## Available Commands

| Command | Description |
|---------|-------------|
| `/study` | Start a study session — lessons and practice |
| `/quiz` | Quick quiz on recent material |
| `/progress` | View your learning stats and streak |
| `/review` | Spaced repetition review session |
| `/reset` | Reset progress (use with caution!) |
| `/curriculum` | Show current curriculum info |
| `/help` | List all available commands |

### Example Session

```
You: /study
Tutor: Great! Let's dive into [Topic]. Here's today's lesson:
       [Explanation content]
       
       Question 1 of 5: [Question]
       
       [Answer choices or input field]
```

## File Structure

```
~/.openclaw/workspace-tutor/
├── docs/                    # This documentation
│   ├── README.md
│   ├── curriculum-format.md
│   └── customization.md
├── curricula/               # Your curriculum files
│   └── sample.yaml
├── data/                    # Progress & state
│   ├── progress.json
│   └── stats.json
├── SOUL.md                  # Tutor personality config
└── config.yaml              # Settings
```

## What's Next?

- **[Curriculum Format Guide](curriculum-format.md)** — Learn how to create your own curricula
- **[Customization Guide](customization.md)** — Tailor the tutor to your style

Happy learning! 📚

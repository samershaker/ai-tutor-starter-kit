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
| `/feedback [note]` | Log feedback/notes locally to FEEDBACK.md |
| `/suggest [improvement]` | Create GitHub issue on main repo |
| `/review-feedback` | Show pending feedback items |
| `/help` | List all available commands |

## Feedback System

The AI Tutor Starter Kit includes a feedback loop that lets students contribute improvements back to the community.

### Commands

| Command | Description |
|---------|-------------|
| `/feedback [note]` | Log a personal note or observation locally |
| `/suggest [improvement]` | Submit an improvement idea as a GitHub issue |
| `/review-feedback` | View pending feedback items |

### How It Works

1. **Student uses the tutor** → encounters a bug, has an idea, or finds something confusing
2. **Student uses `/suggest`** → creates a GitHub issue on the main repo
3. **Maintainers review** → issues are triaged and potentially implemented
4. **Improvement merges** → gets merged into the main template
5. **All students benefit** → update their local copy

### Local vs. Public Feedback

- **`/feedback`** — Personal notes stored in `FEEDBACK.md` in your workspace. Good for private reflections or things that are specific to your setup.
- **`/suggest`** — Creates a public GitHub issue. Good for bugs, feature ideas, or improvements that would benefit all users.

### Example

```
You: /suggest Add support for audio pronunciations
→ Creates GitHub issue: "Add support for audio pronunciations"
→ Link posted to your chat

You: /feedback The quiz timer feels too short
→ Logged to FEEDBACK.md for your reference
```

See [Feedback Loop](feedback-loop.md) for detailed workflow.

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

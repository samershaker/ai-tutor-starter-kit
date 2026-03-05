# 🎓 AI Tutor Starter Kit

A personalized AI tutor agent for [OpenClaw](https://github.com/openclaw/openclaw). Learn anything with adaptive teaching, spaced repetition, and accountability built in.

## ✨ Features

- **Personalized onboarding** — Bootstrap asks about your learning style, goals, and schedule
- **Curriculum-agnostic** — Learn ML, cooking, languages, anything with a structured curriculum
- **Spaced repetition** — Concepts resurface at optimal intervals for retention
- **Adaptive teaching** — Tutor adjusts to your complexity preference and struggles
- **Accountability** — Configurable nudges, streaks, and check-ins
- **Progress tracking** — See where you are, what's next, what needs review

## 🚀 Quick Start

### 1. Install

```bash
# Clone the repo
git clone https://github.com/samershaker/ai-tutor-starter-kit.git
cd ai-tutor-starter-kit

# Run installer
./install.sh
```

### 2. Bootstrap

Start a conversation with your tutor and say:

```
Let's bootstrap
```

Answer the onboarding questions to personalize your tutor.

### 3. Load a Curriculum

```
/load-curriculum ml-systems
```

Or create your own (see [curriculum format](docs/curriculum-format.md)).

### 4. Start Learning

```
/study
```

## 📚 Available Commands

| Command | Description |
|---------|-------------|
| `/study` | Start a study session |
| `/quiz` | Quick quiz on recent concepts |
| `/progress` | View your learning stats |
| `/explain [topic]` | Get an explanation at your level |
| `/project` | Get a mini-project suggestion |
| `/review` | Spaced repetition review |
| `/log [notes]` | Log offline study |
| `/stuck` | Signal you're struggling |
| `/break` | Take a break |

## 📁 File Structure

```
~/.openclaw/workspace-tutor/
├── BOOTSTRAP.md      # Onboarding flow
├── SOUL.md           # Tutor personality
├── IDENTITY.md       # Tutor identity  
├── AGENTS.md         # Commands & capabilities
├── USER.md           # Your learning profile
├── MEMORY.md         # Long-term observations
├── RESOURCES.md      # Current learning materials
├── CURRICULUM/       # Active learning tracks
├── LEARNING/         # Progress tracking
└── ARCHIVE/          # Completed tracks
```

## 🎨 Customization

- **Tutor personality** — Edit `SOUL.md` to change teaching style
- **Accountability level** — Set during bootstrap or edit `USER.md`
- **Custom curricula** — Create YAML files following [the format](docs/curriculum-format.md)

See [customization guide](docs/customization.md) for details.

## 📖 Sample Curricula

- `ml-systems` — Machine Learning Systems (Harvard CS249r / MIT Press)
- More coming soon...

## 🤝 Contributing

1. Fork this repo
2. Use it for your own learning
3. Find improvements? PR them back!

## 📄 License

MIT License — use it, modify it, sell it.

---

Built with [OpenClaw](https://github.com/openclaw/openclaw) 🐾

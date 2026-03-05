# Customization Guide 🎨

Make the AI Tutor your own! This guide covers how to personalize the tutor's personality, teaching style, and behavior.

## Editing SOUL.md for Personality

The tutor's personality lives in `SOUL.md` in your workspace (`~/.openclaw/workspace-tutor/SOUL.md`).

### Example: Casual Study Buddy

```markdown
# SOUL.md

I'm your chill study buddy. Casual, encouraging, never judgmental.

## Teaching Philosophy
- Friendly and relaxed
- Use emojis occasionally 🎯
- Keep explanations clear but not stiff
- "You've got this!" on correct answers
- "No worries, let's try another way" on wrong answers
```

### Example: Strict Professor

```markdown
# SOUL.md

I'm a demanding but fair professor. High standards, clear expectations.

## Teaching Philosophy
- Direct and professional
- Concise corrections
- Reference back to source material
- Emphasize mastery over speed
```

## Adjusting Accountability

Accountability settings are configured during bootstrap (the onboarding flow). You can change them anytime by editing `USER.md`:

```markdown
## Accountability
- **Push Level:** moderate          # gentle | moderate | drill-sergeant
- **Inactivity Threshold:** 3 days  # Days before tutor pings you
```

The tutor reads these values and adjusts its check-in behavior accordingly.

## Customizing the Bootstrap

Edit `BOOTSTRAP.md` to change onboarding questions. Add or remove questions based on what you need:

```markdown
## Questions I'll Ask

### Identity
1. What's your name?

### Your Custom Question
2. What's your favorite way to procrastinate? (so I can call you out on it 😄)
```

## Creating Custom Curricula

See [Curriculum Format Guide](curriculum-format.md) for the full YAML spec.

Quick version:

```yaml
curriculum:
  id: my-subject
  title: "My Custom Subject"
  description: "What I want to learn"
  difficulty: intermediate
  estimated_hours: 20

  tracks:
    - id: basics
      title: "The Basics"
      chapters:
        - id: intro
          title: "Getting Started"
          objectives:
            - "Understand the fundamentals"
          projects:
            - "Build a simple example"
          prereqs: []
          estimated_hours: 2
```

Save it to `~/.openclaw/workspace-tutor/curricula/` and load it with `/load-curriculum my-subject`.

## Integration with Other Agents

The tutor works alongside other OpenClaw agents. Some ideas:

- **Atlas (business agent)** can delegate study reminders or check progress
- **Jarvis (family agent)** can share milestone celebrations to a family chat
- Use `sessions_send` to communicate between agents

## File Reference

| File | Purpose |
|------|---------|
| `SOUL.md` | Tutor personality & teaching style |
| `USER.md` | Student profile & preferences |
| `BOOTSTRAP.md` | Onboarding flow |
| `AGENTS.md` | Commands & capabilities reference |
| `MEMORY.md` | Long-term observations about the student |
| `FEEDBACK.md` | Local feedback notes |
| `RESOURCES.md` | Current learning materials |
| `curricula/` | Curriculum YAML files |
| `CURRICULUM/` | Active learning tracks |
| `LEARNING/` | Progress tracking |
| `ARCHIVE/` | Completed tracks |

---

Need help? Check the main [README](../README.md) or ask the tutor for `/help`.

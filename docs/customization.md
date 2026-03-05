# Customization Guide 🎨

Make the AI Tutor your own! This guide covers how to personalize the tutor's personality, behavior, and features.

## Editing SOUL.md for Personality

The tutor's personality lives in `SOUL.md`. Open it up and adjust to match your vibe:

```bash
# Edit the tutor's soul
open ~/.openclaw/workspace-tutor/SOUL.md
```

### Example: Casual Study Buddy

```markdown
# SOUL.md - AI Tutor

I'm your chill study buddy. Casual, encouraging, never judgmental.

## Tone
- Friendly and relaxed
- Use emojis occasionally 🎯
- Keep explanations clear but not stiff

## Responses
- Encouraging: "You've got this!" on correct answers
- Supportive on wrong answers: "No worries, let's try another way"
- Celebrate streaks: "🔥 5-day streak! You're on fire!"

## Quirks
- Use mnemonics when helpful
- Make connections to real-world examples
```

### Example: Strict Professor

```markdown
# SOUL.md - AI Tutor

I'm a demanding but fair professor. High standards, clear expectations.

## Tone
- Direct and professional
- Formal but not cold
- Focus on accuracy

## Responses
- Concise corrections
- Reference back to lesson material
- Emphasize mastery over speed
```

## Adjusting Accountability Levels

Control how "pushy" the tutor is about keeping you on track via `config.yaml`:

```yaml
accountability:
  # How often to send reminders (in hours)
  reminder_interval: 24
  
  # Streak-based encouragement
  streak_milestones: [3, 7, 14, 30, 100]
  
  # Gentle (0) to Strict (10)
  strictness_level: 5
  
  # Enable/disable features
  check_in_enabled: true
  streak_tracking: true
  gentle_nudges: true
```

### Accountability Presets

| Level | Behavior |
|-------|----------|
| `1-3` | Light encouragement, no pressure |
| `4-6` | Balanced reminders, milestone celebrations |
| `7-10` | Frequent check-ins, streak recovery prompts |

```yaml
# Light accountability (level 3)
accountability:
  strictness_level: 3
  reminder_interval: 48
  gentle_nudges: true
```

## Adding Custom Commands

Extend the tutor with your own commands. Add them to `commands.yaml`:

```yaml
commands:
  - name: "/flashcards"
    description: "Quick flashcard drill mode"
    handler: "flashcard_drill"
    
  - name: "/explain-again"
    description: "Re-explain the current topic differently"
    handler: "re_explain"
    requires_context: true
```

### Command Handler Example

Create a custom handler file:

```python
# ~/.openclaw/workspace-tutor/handlers/flashcard_drill.py

async def handle_flashcards(user_id, context):
    """Quick-fire flashcard mode"""
    cards = load_due_cards(user_id, limit=10)
    
    for card in cards:
        response = await ask_question(card)
        if response.correct:
            await update_spaced_repetition(card, +1)
    
    return summarize_session(cards)
```

## Integration with Other Agents

The tutor can work alongside other OpenClaw agents for a richer experience.

### Example: Connect with Notes Agent

```yaml
# In config.yaml
integrations:
  notes_agent:
    enabled: true
    auto_sync: true      # Save summaries to notes
    reference_notes: true  # Pull relevant notes into lessons
```

### Example: Connect with Calendar

```yaml
integrations:
  calendar:
    enabled: true
    schedule_study_time: true
    preferred_times: ["09:00", "19:00"]
```

### Sharing Context Between Agents

The tutor can share progress with other agents:

```yaml
# Share progress with family agent
integrations:
  family_agent:
    enabled: true
    share_progress: ["streak", "lessons_completed"]
    milestone_notifications: true
```

### Cross-Agent Study Sessions

You can chain commands across agents:

```
# Ask family agent to remind you to study
/family remind me to /study at 6pm
```

## Quick Config Reference

| Setting | File | Example |
|---------|------|---------|
| Personality | `SOUL.md` | Tone, quirks, responses |
| Accountability | `config.yaml` | Strictness, reminders |
| Commands | `commands.yaml` | Custom handlers |
| Integrations | `config.yaml` | Agent connections |
| Curriculum | `curricula/*.yaml` | Learning content |

## Resetting to Defaults

Made too many changes? Reset everything:

```bash
# Reset config only
/tutor reset config

# Reset personality only  
/tutor reset soul

# Reset everything (careful!)
/tutor reset all
```

---

Need help? Check the main [README](README.md) or try `/tutor help` for command reference.

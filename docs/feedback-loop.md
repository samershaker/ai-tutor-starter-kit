# Feedback Loop

The AI Tutor Starter Kit uses a two-way feedback system that lets students not only learn from the tutor but also improve the tutor for everyone.

## How Feedback Flows

```
Student → /suggest → GitHub Issue → Maintainer Review → Merge → All Students Update
```

1. **You discover an issue or improvement** while using the tutor
2. **You run `/suggest [your idea]`** — this creates a GitHub issue on the main repo
3. **Maintainers review** the issue, discuss, and potentially implement it
4. **Your improvement gets merged** into the main template
5. **All students benefit** when they pull the latest updates

## Local vs. Public Feedback

### `/feedback [note]` — Local Notes

Use for:
- Personal reflections on learning
- Things specific to your setup
- Private observations you want to remember

```bash
/feedback The examples in chapter 3 really helped me understand recursion
```
→ Stored in `FEEDBACK.md` in your workspace

### `/suggest [improvement]` — GitHub Issues

Use for:
- Bug reports
- Feature requests
- Confusing explanations
- Curriculum errors
- UI/UX improvements

```bash
/suggest The quiz should explain why the wrong answer is wrong
```
→ Creates issue on `samershaker/ai-tutor-starter-kit`

## Reviewing Feedback

Run `/review-feedback` to see pending items you've submitted.

## Example Workflow

**You notice something:**

```
You: /suggest Add a "hint" option for quiz questions
```

**GitHub issue created:**

```
→ [Issue #42] Add "hint" option for quiz questions
→ Created on samershaker/ai-tutor-starter-kit
→ Label: enhancement
```

**Later:**

- Maintainer sees issue, implements feature
- Merges to main branch
- You pull updates, now everyone has hints!

## Making Your Suggestion Count

Good suggestions include:
- **What you expected** vs. what happened
- **Steps to reproduce** (for bugs)
- **Why it matters** — how would this improve your learning?

## Reviewing Community Feedback

Maintainers: check the GitHub Issues page to see what students are requesting. Label and triage appropriately.

---

Questions? Open an issue or check the main README.

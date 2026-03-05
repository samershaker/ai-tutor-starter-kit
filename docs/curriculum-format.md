# Curriculum Format Guide 📋

The AI Tutor uses YAML files to define curricula. This guide walks you through creating your own custom learning paths.

## YAML Structure Overview

Every curriculum follows this structure:

```yaml
curriculum:
  id: "unique-id"
  title: "Course Title"
  description: "What this covers"
  difficulty: beginner | intermediate | advanced
  estimated_hours: 40

  source:                          # Optional: reference material
    type: book | course | video
    url: "https://..."
    pdf: "https://..."
    repo: "https://..."

  tracks:                          # Major sections
    - id: "track-id"
      title: "Track Title"
      description: "What this track covers"
      chapters:                    # Lessons within the track
        - id: "chapter-id"
          title: "Chapter Title"
          objectives:
            - "Learning objective 1"
            - "Learning objective 2"
          resources:
            - type: reading
              ref: "Chapter 1"
          projects:
            - "Hands-on project description"
          prereqs: []              # IDs of prerequisite chapters
          estimated_hours: 3

  milestones:                      # Celebrations at key points
    - after: [chapter-id-1, chapter-id-2]
      title: "Milestone Name! 🎉"
      message: "Encouraging message"

  completion:                      # Final completion message
    title: "Course Complete! 🎓"
    message: "Congratulations message"
```

## Full Example: Spanish Essentials

```yaml
curriculum:
  id: spanish-essentials
  title: "Spanish Essentials"
  description: "Basic Spanish vocabulary and phrases for travelers"
  difficulty: beginner
  estimated_hours: 5

  source:
    type: course
    url: "https://example.com/spanish"

  tracks:
    - id: greetings
      title: "Greetings & Introductions"
      description: "Learn to say hello and introduce yourself"

      chapters:
        - id: basic-greetings
          title: "Basic Greetings"
          objectives:
            - "Know the common Spanish greetings"
            - "Understand when to use formal vs informal greetings"
          resources:
            - type: reading
              ref: "Unit 1, Lesson 1"
          projects:
            - "Practice greeting 3 people using different times of day"
          prereqs: []
          estimated_hours: 1

        - id: introductions
          title: "Introducing Yourself"
          objectives:
            - "Say your name and ask for someone else's"
            - "Use basic pleasantries (mucho gusto, etc.)"
          resources:
            - type: reading
              ref: "Unit 1, Lesson 2"
          projects:
            - "Write a 5-line self-introduction in Spanish"
          prereqs: [basic-greetings]
          estimated_hours: 1

    - id: everyday
      title: "Everyday Phrases"
      description: "Common phrases for daily interactions"

      chapters:
        - id: ordering-food
          title: "Ordering Food & Drinks"
          objectives:
            - "Order at a restaurant in Spanish"
            - "Ask for the check"
          resources:
            - type: reading
              ref: "Unit 2, Lesson 1"
          projects:
            - "Role-play ordering a full meal"
          prereqs: [introductions]
          estimated_hours: 1.5

  milestones:
    - after: [basic-greetings, introductions]
      title: "Social Butterfly! 🦋"
      message: "You can introduce yourself in Spanish!"

  completion:
    title: "Travel Ready! ✈️"
    message: "You know enough Spanish to navigate basic travel situations. ¡Buen viaje!"
```

## Field Reference

### Curriculum (top-level)

| Field | Required | Description |
|-------|----------|-------------|
| `id` | Yes | Unique identifier (used in `/load-curriculum`) |
| `title` | Yes | Display name |
| `description` | Yes | Brief summary |
| `difficulty` | No | `beginner`, `intermediate`, or `advanced` |
| `estimated_hours` | No | Total estimated study time |
| `source` | No | Reference material (book, course, etc.) |
| `tracks` | Yes | Array of learning tracks |
| `milestones` | No | Celebration points |
| `completion` | No | Final completion message |

### Tracks

| Field | Required | Description |
|-------|----------|-------------|
| `id` | Yes | Unique track identifier |
| `title` | Yes | Track display name |
| `description` | No | What this track covers |
| `chapters` | Yes | Array of chapters/lessons |

### Chapters

| Field | Required | Description |
|-------|----------|-------------|
| `id` | Yes | Unique chapter identifier |
| `title` | Yes | Chapter display name |
| `objectives` | Yes | Learning objectives (array of strings) |
| `resources` | No | Reference materials |
| `projects` | No | Hands-on exercises |
| `prereqs` | No | Array of prerequisite chapter IDs |
| `estimated_hours` | No | Estimated study time |

## Tips for Good Curriculum Design

### 1. Start Simple
- First chapter should be accessible to beginners
- Build complexity gradually through prerequisites

### 2. Keep Chapters Focused
- One main concept per chapter
- 2-5 clear objectives
- 1-3 projects for hands-on practice

### 3. Use Prerequisites
- Chain chapters that build on each other
- The tutor uses prereqs to ensure proper learning order

### 4. Add Milestones
- Place them after completing major sections
- Keep messages encouraging and specific

### 5. Include Projects
- Practical application cements learning
- Projects should be doable within the chapter's time estimate

---

**Ready to customize the tutor itself?** → See [Customization Guide](customization.md)

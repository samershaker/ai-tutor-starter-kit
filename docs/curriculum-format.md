# Curriculum Format Guide 📋

The AI Tutor uses YAML files to define curricula. This guide walks you through creating your own custom learning paths.

## YAML Format Overview

Curriculum files use a clean, human-readable YAML structure. Each curriculum defines lessons, questions, and metadata.

### Required Fields

Every curriculum **must** include these top-level fields:

```yaml
name: "Course Title"          # Display name
version: "1.0"                # Curriculum version
description: "What this covers"
units:                        # Array of learning units
  - title: "Unit Name"
    lessons:                  # Array of lessons
      - id: "lesson_1"
        title: "Lesson Title"
        content: "Lesson explanation..."
```

### Optional Fields

Add these to enrich the learning experience:

```yaml
# Metadata
author: "Your Name"
language: "en"
tags: ["programming", "python", "beginner"]
estimated_hours: 10

# Settings
difficulty: "beginner"        # beginner, intermediate, advanced
prerequisites: ["unit_1"]     # Required lesson IDs

# Per-unit settings
units:
  - title: "Unit Name"
    order: 1                  # Explicit ordering
    weight: 2                 # Relative importance (affects quiz frequency)
```

## Full Example Curriculum

Here's a complete example for learning basic Spanish:

```yaml
name: "Spanish Essentials"
version: "1.0"
author: "Your Name"
description: "Basic Spanish vocabulary and phrases for travelers"
language: "es"
difficulty: "beginner"
estimated_hours: 5
tags: ["language", "spanish", "travel"]

units:
  - title: "Greetings & Introductions"
    lessons:
      - id: "greetings_1"
        title: "Basic Greetings"
        content: |
          # Basic Greetings
            
          - **Hola** = Hello
          - **Buenos días** = Good morning
          - **Buenas tardes** = Good afternoon
          - **Buenas noches** = Good evening/night
          
          Use "Buenos días" before noon, "Buenas tardes" after.
        questions:
          - id: "g1_q1"
            type: "multiple_choice"
            question: "How do you say 'Good morning' in Spanish?"
            options:
              - "Hola"
              - "Buenos días"
              - "Buenas noches"
            correct: 1
            explanation: "'Buenos días' literally means 'good days' and is used in the morning."
            
      - id: "greetings_2"
        title: "Introducing Yourself"
        content: |
          # Introducing Yourself
            
          - **Me llamo...** = My name is...
          - **Soy...** = I am...
          - **Mucho gusto** = Nice to meet you
          - **¿Cómo estás?** = How are you?
        questions:
          - id: "g2_q1"
            type: "fill_blank"
            question: "___ means 'My name is' in Spanish."
            answer: "Me llamo"
            acceptable: ["Me llamo", "Me llamo."]
```

## Question Types

| Type | Description | Example |
|------|-------------|---------|
| `multiple_choice` | Select from options | "What is 'hello' in Spanish?" |
| `fill_blank` | Type the answer | "___ means 'hello'" |
| `true_false` | True or false statement | "‘Hola' means 'goodbye'" |
| `open_ended` | Free-form response | "Explain the concept of..." |

### Multiple Choice Structure

```yaml
questions:
  - id: "q1"
    type: "multiple_choice"
    question: "What is 2 + 2?"
    options:
      - "3"
      - "4"
      - "5"
    correct: 1          # 0-indexed (0=first option)
    explanation: "2 + 2 equals 4."
```

### Fill in the Blank Structure

```yaml
questions:
  - id: "q2"
    type: "fill_blank"
    question: "The Spanish word for 'cat' is ___."
    answer: "gato"
    acceptable: ["gato", "el gato"]  # Alternative acceptable answers
    case_sensitive: false
```

## Tips for Good Curriculum Design

### 1. Start Simple
- First lesson should be accessible to true beginners
- Build complexity gradually

### 2. Mix Question Types
- Use multiple choice for recall
- Use fill-in-the-blank for active recall
- Use open-ended for deeper understanding

### 3. Include Explanations
Always provide explanations for answers — this is where the real learning happens:

```yaml
explanation: "The past tense of 'go' is 'went'. This is an irregular verb..."
```

### 4. Keep Lessons Focused
- One main concept per lesson
- 3-5 questions per lesson
- 200-500 words of content per lesson

### 5. Use Spacing
- Put related questions in different lessons
- Review key concepts across multiple units

### 6. Test Your Curriculum
```bash
/tutor validate curriculum.yaml
```

This catches syntax errors and missing fields before you load it.

---

**Ready to customize the tutor itself?** → See [Customization Guide](customization.md)

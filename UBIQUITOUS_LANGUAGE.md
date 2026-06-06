# Ubiquitous Language

## Player Progression

| Term       | Definition                                                             | Aliases to avoid              |
| ---------- | ---------------------------------------------------------------------- | ----------------------------- |
| **Player** | The human learner using Lori                                           | User, account, gamer          |
| **XP**     | Experience points earned from study sessions                           | Exp, points, score            |
| **Level**  | Player rank derived from total accumulated XP                          | Tier, stage, grade            |
| **Streak** | Consecutive calendar days with at least one completed session          | Chain, daily streak, run      |

## Learning Structure

| Term          | Definition                                                              | Aliases to avoid              |
| ------------- | ----------------------------------------------------------------------- | ----------------------------- |
| **Domain**    | A subject or skill being learned (e.g. Japanese, React, calculus)       | Subject, topic, territory     |
| **Skill Tree**| Visual map of concepts and prerequisites inside a domain                | Tree, roadmap, tech tree      |
| **Node**      | A single concept, technique, or milestone in a skill tree               | Item, skill, lesson           |

## Study Session

| Term         | Definition                                                               | Aliases to avoid              |
| ------------ | ------------------------------------------------------------------------ | ----------------------------- |
| **Session**  | A timed learning activity performed inside a domain                      | Study, run, mission           |
| **Technique**| A specific study method drawn from the 9 ultralearning principles        | Method, practice, ritual      |
| **Ritual**   | A technique in its consumable, non-permanent form before mastery         | Consumable, temporary         |
| **Passive**  | A technique that has reached mastery level and activates automatically   | Permanent, mastery, buff      |
| **Combo**    | A sequence of techniques used within a time window yielding bonus XP     | Chain, sequence, synergy      |
| **Modifier** | A temporary bonus or malus applied to XP calculation                     | Bonus, multiplier, debuff     |
| **Focus**    | A self-reported or measured concentration metric during a session        | Attention, concentration      |
| **Honesty**  | A self-reported metric of how truthfully the player assessed knowledge   | Integrity, accuracy           |
| **Abandon**  | Automatic session cancellation when the process dies or timeout expires  | Forfeit, quit, dropout        |

## Spaced Repetition

| Term          | Definition                                                              | Aliases to avoid              |
| ------------- | ----------------------------------------------------------------------- | ----------------------------- |
| **Card**      | A flashcard created from session content for spaced review              | Flashcard, item, note         |
| **Review**    | The act of answering a card and rating recall quality (0–5)             | Repetition, drill             |
| **Interval**  | Days until a card becomes due again                                     | Delay, spacing, gap           |
| **Ease Factor**| SM-2 parameter controlling how quickly intervals grow                  | EF, difficulty                |
| **Penalty**   | A late-review malus layered on top of SM-2 before the next calculation  | Late fee, malus, decay        |

## Weaknesses

| Term        | Definition                                                               | Aliases to avoid              |
| ----------- | ------------------------------------------------------------------------ | ----------------------------- |
| **Weakness**| A recorded mistake or hesitation identified during study                 | Mistake, error, gap           |
| **Forge**   | The act of registering a weakness from session feedback                  | Create, record, capture       |
| **Resolve** | Converting a weakness into an achievement by targeted practice           | Fix, close, heal              |

## Quests & Narrative

| Term           | Definition                                                            | Aliases to avoid              |
| -------------- | --------------------------------------------------------------------- | ----------------------------- |
| **Quest**      | A generated challenge with defined rewards (daily or weekly)          | Mission, task, challenge      |
| **Achievement**| A permanent marker of a milestone or first-time event                 | Badge, trophy, medal          |
| **Story**      | The narrative layer unlocked by progression milestones                | Lore, narrative, plot         |
| **Chapter**    | A discrete segment of the story tied to skill-tree progress           | Episode, act                  |

## Ghost System

| Term          | Definition                                                              | Aliases to avoid              |
| ------------- | ----------------------------------------------------------------------- | ----------------------------- |
| **Ghost Run** | Comparison of the current session against a past similar session        | Ghost, past run, shadow       |
| **Fingerprint**| A set of weaknesses, concepts, and techniques representing session content | Signature, profile, snapshot |
| **Matching**  | The process of finding a similar past session via Jaccard similarity    | Comparison, pairing           |

## Customization

| Term         | Definition                                                               | Aliases to avoid              |
| ------------ | ------------------------------------------------------------------------ | ----------------------------- |
| **Skin**     | A visual and textual theme that renames core concepts at presentation    | Theme, lens, armor            |
| **Persona**  | An AI personality tied to one of the 9 ultralearning principles          | Voice, character, role        |
| **Principle**| One of the 9 core ultralearning philosophies (e.g. Focus, Retrieval)     | Rule, law, pillar             |

## State & Persistence

| Term           | Definition                                                            | Aliases to avoid              |
| -------------- | --------------------------------------------------------------------- | ----------------------------- |
| **Action**     | A serializable intent to mutate game state                            | Command, mutation             |
| **Event**      | A persisted, append-only record of an executed action                 | Log entry, row                |
| **Hot State**  | Frequently accessed data kept in memory at boot                       | Hot data, cache               |
| **Cold State** | Rarely accessed data loaded lazily from SQLite                        | Cold data, archive            |
| **Snapshot**   | A periodic full-state capture used for fast boot and compaction       | Checkpoint, backup            |

## Relationships

- A **Player** studies one or more **Domains**
- A **Domain** contains exactly one **Skill Tree**
- A **Skill Tree** has many **Nodes** with prerequisite edges
- A **Session** belongs to exactly one **Domain** and uses zero or more **Techniques**
- A **Technique** starts as a **Ritual** and becomes a **Passive** at mastery level
- A **Session** generates zero or more **Cards** for the **SRS**
- A **Session** produces one **Fingerprint** used for **Ghost Run Matching**
- A **Weakness** is **Forged** during a **Session** and can be **Resolved** later
- A **Skin** translates **Core Events** into **Presentation Events** but never changes state
- A **Persona** is selected per **Principle** and guides AI responses without affecting rules

## Example dialogue

> **Dev:** "When a **Player** starts a **Session** in the Japanese **Domain**, do we create **Cards** immediately?"
> **Domain expert:** "No — **Cards** are only generated after the **Session** ends and the player confirms honest **Focus**. A **Technique** like Active Recall used during the **Session** may increase the number of **Cards** created."
> **Dev:** "If the player **Abandons** the **Session** because Pi restarts, what happens to the **Streak**?"
> **Domain expert:** "The **Lifecycle Processor** checks elapsed time on boot. If the gap exceeds 24h, it flags **Abandon** and breaks the **Streak**. Otherwise the **Session** can resume."
> **Dev:** "So a **Weakness** **Forged** during a **Session** becomes part of that **Session**'s **Fingerprint** for future **Ghost Run Matching**?"
> **Domain expert:** "Exactly. When the player later studies a similar topic, the **Ghost Processor** finds the closest past **Fingerprint** via Jaccard similarity and surfaces the old **Session** as a **Ghost Run**."

## Flagged ambiguities

- **"Session"** can mean a Pi agent session (process lifetime) or a Lori learning session. The architecture doc notes Pi recreates its process at every agent session, while Lori learning sessions must survive across them. Use **agent session** or **Lori session** to disambiguate.
- **"Action"** vs **"Event"**: In the event-sourcing layer, an **Action** is the serializable intent dispatched to the store, while an **Event** is the append-only persisted record. In casual speech they blur; in code reviews keep them distinct.
- **"Mission"** / **"Territory"** / **"Armor"** are skin-local aliases for **Quest**, **Domain**, and **Skin** respectively. They must not leak into the core domain or database schema.
- **"User"** appears in tests and UI mockups but is not a domain concept — the human is always a **Player**.

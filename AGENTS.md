# Agent Task Brief — Description to Presentation

## Mission

Upon launch, your objective is to transform the topic description in
`topic.md` into a polished, projector-ready Beamer presentation, and to
deliver it as a compiled PDF. This repository is itself a teaching artifact:
it demonstrates that the distance from a few honest paragraphs to a finished
slide deck is one well-conducted agentic workflow. Author accordingly — the
deck you produce will be judged both as a tutorial and as evidence.

Read `README.md` for the shape of the exercise and `topic.md` for the
substance. The description is the authoritative source of content, emphasis,
and arc; this brief governs how you work.

## Deliverables

### 1. The presentation

Author `slides.tex`, a Beamer deck realizing the description faithfully:

- A 15-minute tutorial: title frame, motivation, one section per major idea,
  the running example threaded through the sections as the description
  directs, the terminology-mapping frame, and a closing takeaway.
- Honor the description's own one-line definitions verbatim where it states
  them — they are load-bearing.
- Favor legibility over density: one idea per frame, short lines, room to
  breathe. A frame the back row cannot read is a frame that does not exist.
- Use a clean theme (`metropolis` if available, else a restrained standard
  theme) and, where a diagram earns its place — the ladder of levels, a
  graph acquiring a back-edge — draw it with TikZ rather than describing it
  in prose.
- You may split sections into separate `.tex` files included from
  `slides.tex` if the structure warrants it; keep the entry point
  `slides.tex`.

### 2. The build

Compile with the provided recipe:

```
just slides
```

which builds `output/slides.pdf`. Iterate — author, build, inspect, revise —
until the deck compiles without errors and every frame renders as intended.
Treat the compile loop as part of the authoring, not an afterthought; the
topic itself will tell you why.

## Definition of done

A fresh checkout of this repository, followed by a single `just slides`,
produces `output/slides.pdf`: a complete, cleanly compiled deck that a
lecturer could present tomorrow without editing a frame. The narrative
follows the description's desired arc, the running example appears in every
section, and no content in `topic.md` of substance is silently dropped.
Commit your work with a clear message.

## Cautions

- Treat `topic.md` and `README.md` as read-only — the description is the
  raw material, and students must be able to diff their copy against it.
- Resist inventing content beyond the description. Elaboration in service of
  clarity is your job; new claims are not.
- Verify the PDF, not just the exit code: confirm page count is sensible for
  fifteen minutes (roughly 12–18 frames) and that no frame overflows.

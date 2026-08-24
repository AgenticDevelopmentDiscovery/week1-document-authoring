# Week 1 Challenge: From Description to Presentation

In this course, every student chooses a topic for a tutorial they will give.
This repository demonstrates the authoring workflow behind that tutorial: how
to go from a plain-language *description* of a topic to a polished,
projector-ready *presentation*, using a LaTeX (Beamer) toolchain and an
agentic workflow.

The repository is a template. The topic it ships with is one we will present
in lecture, but the structure is deliberately generic — replace `topic.md`
with a description of your own topic and the same workflow carries you to
your own slides.


## The pieces

| File | Role |
|---|---|
| `topic.md` | The topic description — the raw material. What you would jot down after deciding what your tutorial is about, before making any slides. |
| `AGENTS.md` | The brief handed to an agent: how to transform the description into a presentation. |
| `Justfile` | The build: `just slides` compiles the deck into `output/`. |
| `slides.tex` | The presentation source (to be authored — it does not exist yet). |


## Tasks

 1. **Read** `topic.md` — understand the subject, its intended arc, and its
    audience before writing a single frame.
 2. **Author** a Beamer presentation that delivers the topic as a 15-minute
    tutorial: a clear opening, one section per major idea, a running example
    that threads the sections together, and a closing summary.
 3. **Build** the deck with `just slides` and iterate until it compiles
    cleanly and reads well frame by frame.
 4. **Deliver** — commit the source and confirm a fresh checkout builds the
    same PDF with one command.


## Deliverables

 1. The presentation source (`slides.tex`, plus any supporting files).
 2. A `Justfile` recipe that builds the PDF into `output/` (provided).
 3. The compiled deck, reproducible via `just slides`.


## For students

When it is your turn: fork or copy this template, overwrite `topic.md` with
a description of *your* tutorial topic — a few honest paragraphs about what
you want to teach, to whom, and in what order — and run the same workflow.
The quality of what comes out is governed by the quality of the description
you put in. That, as it happens, is the very subject of the topic this
template ships with.

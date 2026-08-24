# Topic Description: Four Levels of Agentic Engineering

*A 15-minute tutorial for students beginning to work with AI agents.*


## What this tutorial is about

Working effectively with AI agents is an engineering discipline, and it has
levels. This tutorial draws the distinction between four of them:

- **Prompt engineering** — asking the right question.
- **Context engineering** — providing the right information.
- **Graph engineering** — giving proper structure to the problem so that an
  agent can navigate complexity effectively.
- **Evolutionary frameworks** — going from a graph to a loop with feedback.

The central claim is that these are not four competing techniques but a
ladder: each level exists because the one before it hits a wall. A
well-phrased question fails when the model simply lacks information it
cannot be asked into having — so we curate context. Curated context fails
when the task outgrows what one context window and one shot can hold — so we
give the problem structure and let an agent traverse it piecewise. A static
structure fails when quality demands iteration rather than a single pass —
so we close the graph into a loop, with feedback deciding what happens next.


## The four levels, in a paragraph each

**Prompt engineering** is the craft of phrasing: constraining the form of
the answer, supplying the criteria for success, choosing what to ask first.
It is where everyone starts, and it is genuinely powerful — but it operates
entirely on the question, and no rewording can conjure knowledge the model
does not have in front of it.

**Context engineering** shifts attention from the question to the
information surrounding it: the files, conventions, examples, and constraints
an agent needs in view to act well. Repository briefs such as the
`AGENTS.md` files in this course are context engineering in the wild — the
agent behaves differently, and better, because of what it was given to read,
not because of how it was asked.

**Graph engineering** concedes that some problems are too large for any
single, well-fed request. The move is to impose structure: decompose the
task into nodes — subtasks with defined inputs and outputs — and let agents
traverse the resulting graph, each step small enough to do well. The
community speaks of task decomposition, workflow orchestration, and DAG
pipelines; the essential idea is that the *shape* of the problem, made
explicit, is what lets an agent navigate complexity without drowning in it.

**Evolutionary frameworks** add the final ingredient: feedback. A graph run
once produces a draft; a graph with a back-edge — generate, evaluate, revise
— produces successively better drafts, with an evaluator deciding when to
stop. This is the territory of evaluator–optimizer loops, self-refinement,
and evolutionary search over candidate solutions. The presentation itself
should note that compile-and-fix cycles and review-and-revise passes are
humble, everyday instances of the same idea.


## The running example

Thread one concrete task through all four levels, revisited on one slide per
section: *producing this very tutorial's slide deck from this very
description.* At level one, a single clever prompt yields generic slides. At
level two, handing over the description, the audience profile, and the house
LaTeX conventions yields slides about the right things. At level three,
building the deck section by section — outline first, then frames, then
diagrams — keeps each step tractable. At level four, a compile-check-revise
loop polishes the deck until it builds cleanly and reads well. The tutorial
about the ladder is thereby a demonstration of the ladder.


## Terminology note for the audience

The first two terms are established in the literature; the last two are our
names for ideas the community calls by scattered names (task decomposition,
agent orchestration, LangGraph-style DAG pipelines; evaluator–optimizer
loops, self-refinement, AlphaEvolve-style evolutionary search). One slide
should map our vocabulary to those names so students can find the ideas
again on their own.


## Desired arc

Open with the question "why do agents sometimes fail us?", introduce the
ladder, spend one section per level (definition, failure mode it answers,
running-example slide), give the terminology map, and close with the
takeaway: when an agent disappoints, diagnose which level you are on —
the fix is usually one rung up.

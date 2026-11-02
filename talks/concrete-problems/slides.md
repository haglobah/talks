---
theme: ./theme
title: "Concrete Problems, ten years on"
info: |
  A tour of AI safety, hung on Amodei et al. (2016): what the paper asked, what became of it, and what it left out.
date: 2026-11-02
author: Beat Hagenlocher
transition: slide-left
duration: 45min
layout: cover
---

# Concrete Problems<br><span class="accent">2016 → 2026</span>

How did the founding agenda of AI safety hold up?

<!--
Amodei, Olah, Steinhardt, Christiano, Schulman, Mané (2016):
"Concrete Problems in AI Safety", arXiv:1606.06565
-->

---

# By the end, you will have

<div class="grid grid-cols-[1.4fr_1fr] gap-12 mt-8">
<div>

<v-clicks>

- understood the paper
- gotten an overview of AI safety
- followed each strand from 2016 to today
- placed all the big things

</v-clicks>

</div>
<div v-click>

###### Knowing where these sit

- Benchmarking
- Mech Interp
- Evals
- Alignment

</div>
</div>

---

# In 2016, one <Scribble note="Anthropic, CEO" :at="4" from="top" :dx="319" :dy="-15">Dario Amodei</Scribble> …

<v-clicks>

- … and <Scribble note="Anthropic, interpretability" :at="5" :dx="525" :dy="248">Chris Olah</Scribble>, <Scribble note="Berkeley & Transluce" :at="6" :dx="413" :dy="188">Jacob Steinhardt</Scribble>, <Scribble note="US AI Safety Institute" :at="7" :dx="279" :dy="128">Paul Christiano</Scribble>, <Scribble :note="'OpenAI → Anthropic\n→ Thinking Machines'" :at="8" :dx="150" :dy="68">John Schulman</Scribble>, Dan Mané
- wrote down what could go wrong with ML systems, _concretely_
- <span class="example">before GPT, before RLHF, before "alignment" was a job title</span>

</v-clicks>

<!--
Verify current roles before the talk; these are from memory.
Amodei: co-founded Anthropic (2021). Olah: Anthropic, interpretability lead.
Steinhardt: UC Berkeley, co-founded Transluce. Christiano: ARC, then head of safety at US AISI.
Schulman: OpenAI co-founder, Anthropic 2024, Thinking Machines 2025.
-->

---
layout: statement
---

# How did it hold up?

<div class="mt-8">

## <span v-click>What are the terms now?</span>

## <span v-click>What has changed?</span>

</div>

---
layout: section
---

# The 2016 paper

---
clicks: 3
---

# What they cared about

<ConcernRow :highlight="$clicks >= 1 ? ['accidents in ML systems'] : []" />

<div v-click="2" class="mt-12">

## Long-term worry: a non-aligned superintelligence.

</div>

<div v-click="3">

## Their move: turn it into **practical** problems you can work on today.

</div>

<!--
The paper explicitly sets aside privacy, security, fairness, economics, policy
and transparency, and focuses on one thing: accidents —
"unintended and harmful behavior that may emerge from poor design of real-world AI systems".
-->

---

# Five problems

A cleaning robot, and everything that can go wrong with it

<v-clicks>

1. **Avoiding negative side effects** <span class="example">— knocks over the vase on the way</span>
2. **Avoiding reward hacking** <span class="example">— hides the mess instead of cleaning it</span>
3. **Scalable oversight** <span class="example">— can't ask a human about every candy wrapper</span>
4. **Safe exploration** <span class="example">— tries the wet mop in the power socket</span>
5. **Robustness to distributional shift** <span class="example">— trained in an office, deployed in a factory</span>

</v-clicks>

<div v-click class="mt-8">

###### Grouped by where it breaks

1–2 wrong objective · 3 objective too expensive to check · 4–5 bad behavior while learning / when the world changes

</div>

---
layout: section
---

# One by one

① what is it? · ② what happened over time · ③ relevance today

---

# 1 · Avoiding negative side effects

<div class="three-q">
<div v-click>

###### ① What is it?

- Do the task without wrecking everything else
- _"Be aware of your surroundings and don't do dumb things"_
- 2016 ideas: impact regularizers, penalize changing the world

</div>
<div v-click>

###### ② What happened?

- Mostly worked — but not via impact penalties
- Pretraining on human text gives common sense for free
- Plus sandboxes, permissions, confirmations
- Plus lots of patching

</div>
<div v-click>

###### ③ Relevance today

- Agents now have shells, credentials, production databases
- Big one: systems **smart enough to break out** of the sandbox

</div>
</div>

<!--
Impact measures: relative reachability (Krakovna et al. 2018), attainable utility preservation (Turner et al. 2020). Stayed niche.
Example: coding agents deleting files / production databases (e.g. the Replit incident, mid-2025).
-->

---

# 2 · Avoiding reward hacking

<div class="three-q">
<div v-click>

###### ① What is it?

- Optimizer finds the gap between what you measured and what you meant
- Goodhart's law, with gradients
- <span class="example">the boat that circles for points instead of finishing the race</span>

</div>
<div v-click>

###### ② What happened?

- Renamed: _specification gaming_
- RLHF: reward model over-optimization, sycophancy
- RL on code: special-casing tests, editing the tests
- Same story as side effects: generalization + lots of patching

</div>
<div v-click>

###### ③ Relevance today

- Central — every RL run on a frontier model fights it
- Hacking can generalize into broader misalignment
- Penalizing hacky reasoning can teach models to _hide_ it

</div>
</div>

<!--
CoastRunners: OpenAI blog "Faulty reward functions in the wild" (2016).
Specification gaming examples list: Krakovna et al. (2020).
Reward model overoptimization: Gao, Schulman, Hilton (2022).
Coding test hacks: reported for o3 (METR, 2025) and Claude 3.7 Sonnet system card.
Generalization: Anthropic, "Natural emergent misalignment from reward hacking" (2025).
Obfuscation: OpenAI, "Monitoring reasoning models for misbehavior" (2025).
-->

---

# 3 · Scalable oversight

<div class="three-q">
<div v-click>

###### ① What is it?

- The true objective is too expensive to check every time
- <span class="example">throw away the candy wrapper, not the phone — but you can't ask each time</span>
- Learn from sparse human feedback

</div>
<div v-click>

###### ② What happened?

- The paper's biggest success: **RLHF** (Christiano et al. 2017)
- → InstructGPT → ChatGPT
- Debate, amplification, recursive reward modeling
- Constitutional AI / RLAIF, weak-to-strong generalization

</div>
<div v-click>

###### ③ Relevance today

- Harder than ever: humans can't check superhuman outputs
- AI overseeing AI
- One of the core open problems

</div>
</div>

<!--
Debate: Irving, Christiano, Amodei (2018). IDA: Christiano et al. (2018).
Constitutional AI: Bai et al. (2022). Weak-to-strong: Burns et al. (2023).
-->

---

# 4 · Safe exploration

<div class="three-q">
<div v-click>

###### ① What is it?

- Learning means trying things — some of which are catastrophic
- <span class="example">don't try the wet mop in the socket</span>
- Implicit assumption: the agent learns **on the job**

</div>
<div v-click>

###### ② What happened?

- Constrained RL, Safety Gym — mostly robotics
- Then the paradigm changed: pretrain, post-train, _then_ deploy
- Learning on the job? Not really, anymore

</div>
<div v-click>

###### ③ Relevance today

- Small, for now
- Returns with agents doing RL in real environments and continual learning

</div>
</div>

<!--
Constrained Policy Optimization: Achiam et al. (2017). Safety Gym: Ray, Achiam, Amodei (2019).
-->

---

# 5 · Robustness to distributional shift

<div class="three-q">
<div v-click>

###### ① What is it?

- The world at deployment ≠ the world in training
- Know when you don't know
- <span class="example">the office robot on the factory floor</span>

</div>
<div v-click>

###### ② What happened?

- Renamed: **generalization**
- LLMs generalize far better than anyone expected
- Adversarial robustness → jailbreaks
- Goal misgeneralization: capabilities generalize, goals don't

</div>
<div v-click>

###### ③ Relevance today

- Arguably _the_ alignment question: what does training generalize to?
- Emergent misalignment from narrow finetuning
- Eval awareness: test ≠ deployment, and models notice

</div>
</div>

<!--
Goal misgeneralization: Langosco et al. (2022), Shah et al. (2022).
Emergent misalignment: Betley et al. (2025), finetuning on insecure code → broadly misaligned.
-->

---
layout: section
---

# vs AI safety today

---

# Everything that's missing

<div class="grid grid-cols-[1fr_1.2fr] gap-12 mt-6">
<div>

<v-clicks>

- **Alignment** — as its own field: deception, scheming
- **Interpretability**
- **Evals** — even knowing what these systems _can_ do
- **AI Control** — safe even if alignment fails
- **Misuse** vs accidents

</v-clicks>

</div>
<div v-click>

###### And the rest of the list

<ConcernRow :highlight="['privacy', 'security', 'fairness', 'economics', 'policy', 'transparency']" />

</div>
</div>

<!--
Control: Greenblatt et al., "AI Control" (2023).
Misuse was explicitly out of scope in 2016; today it drives a large share of safety work (bio, cyber).
-->

---

# Then vs now

<div class="mt-6">

###### Then

## Let's focus on accidents in ML systems, for now.

<ConcernRow class="mt-4" :highlight="['accidents in ML systems']" />

</div>

<div v-click class="mt-12">

###### Now

## To prevent very bad outcomes, we need all of it.

<ConcernRow class="mt-4" :highlight="['accidents in ML systems', 'policy', 'transparency', 'security', 'economics', 'privacy', 'fairness']" />

</div>

---

# The map

<div class="map-table">

| 2016 problem | Where it lives today |
|---|---|
| Side effects | agent sandboxing, permissions, control |
| Reward hacking | specification gaming, sycophancy, RL environment design, CoT monitoring |
| Scalable oversight | RLHF, Constitutional AI, debate, weak-to-strong |
| Safe exploration | quiet — returns with continual learning |
| Distributional shift | generalization, goal misgeneralization, jailbreaks, eval awareness |
| _not in the paper_ | mech interp, evals & benchmarking, AI control, governance, security |

</div>

---

# Fazit

<v-clicks>

- Paper: understood
- Overview: gotten
- Strands: followed
- Compared with today, and everything placed

</v-clicks>

---
layout: section
---

# Discussion

---

# Discussion prompts

<v-clicks>

- Which of the five problems aged best? Which worst?
- "Mostly solved by generalization + patching" — is that good enough?
- What would a 2026 version of this paper list?
- What will we be embarrassed to have left out, in 2036?

</v-clicks>

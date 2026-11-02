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

# Concrete Problems in AI Safety

<br>

## 2016 <heroicons-arrow-right class="size-6 inline-block relative -top-1 mx-2" /> 2026

<!--
Amodei, Olah, Steinhardt, Christiano, Schulman, Mané (2016):
"Concrete Problems in AI Safety", arXiv:1606.06565
-->

---

# Today

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

# In 2016, one <Scribble note="Google Brain → OpenAI → Anthropic" :at="2" from="top" :dx="219" :dy="-15">Dario Amodei</Scribble> …

<v-clicks>

- … and <Scribble note="Google Brain → OpenAI → Anthropic" :at="3" :dx="425" :dy="278">Chris Olah</Scribble>, <Scribble note="OpenAI → Berkeley → Transluce" :at="4" :dx="313" :dy="208">Jacob Steinhardt</Scribble>, <Scribble note="OpenAI → ARC → US AISI" :at="5" :dx="179" :dy="138">Paul Christiano</Scribble>, <Scribble note="OpenAI → Anthropic → Thinking Machines" :at="6" :dx="50" :dy="68">John Schulman</Scribble>, Dan Mané

</v-clicks>

<!--
Researched 2026-11-02.
Amodei: Baidu (2014), Google Brain (2015–16), OpenAI (2016–20, VP Research, GPT-2/3), co-founded Anthropic 2021, CEO.
Olah: Google Brain (2015–18, DeepDream, Distill), OpenAI interpretability lead (2018–20), co-founded Anthropic 2021.
Steinhardt: OpenAI research scientist, Berkeley Statistics/EECS professor, co-founded Transluce (2024) with Sarah Schwettmann.
Christiano: ran OpenAI's language-model alignment team (RLHF), founded ARC (2021), Head of AI Safety at US AISI (Apr 2024, now CAISI); joined the OpenAI Foundation board Sep 2026.
Schulman: OpenAI co-founder (2015–24, PPO, post-training), Anthropic alignment science (2024), Thinking Machines chief scientist (2025).
Mané: Google Brain (2016); no public trail after that.
-->

<div class="coda">

### <span v-click="7">How did it hold up?</span>

<p v-click="8">What are the terms now?</p>
<p v-click="9">What has changed?</p>

</div>

---
clicks: 11
---

# What they cared about

<ConcernRow
  :at="1"
  :branches="['extinction risks from superintelligence', 'tractable risks']"
  :branch-at="9"
  :highlight="[...($clicks >= 8 ? ['accidents in ML systems'] : []), ...($clicks >= 11 ? ['tractable risks'] : [])]"
/>

<!--
The paper explicitly sets aside privacy, security, fairness, economics, policy
and transparency, and focuses on one thing: accidents —
"unintended and harmful behavior that may emerge from poor design of real-world AI systems".
-->

---

# Five problems

Example: A cleaning robot

<ol class="problem-list">
  <li v-click="1"><strong>Avoiding negative side effects</strong><span v-click="2" class="example">(knocking over things in the way)</span></li>
  <li v-click="3"><strong>Avoiding reward hacking</strong><span v-click="4" class="example">(hides the mess instead of cleaning it)</span></li>
  <li v-click="5"><strong>Scalable oversight</strong><span v-click="6" class="example">(can't ask a human about every candy wrapper)</span></li>
  <li v-click="7"><strong>Safe exploration</strong><span v-click="8" class="example">(tries the wet mop in the power socket)</span></li>
  <li v-click="9"><strong>Robustness to distributional shift</strong><span v-click="10" class="example">(trained in an office, deployed in a factory)</span></li>
</ol>

---
clicks: 12
---

# 1. Avoiding negative side effects

<div class="three-q">
<div>

<h6 v-click="1">What is it?</h6>

<v-clicks at="4">

- Not _"knocking over things"_
- 2016: impact regularizers, penalize changing the world

</v-clicks>

</div>
<div>

<h6 v-click="2">What happened?</h6>

<v-clicks at="7">

- Mostly worked — but not via impact penalties
- Pretraining on human text gives common sense for free
- Plus sandboxes, permissions, confirmations
- Plus lots of patching

</v-clicks>

</div>
<div>

<h6 v-click="3">today</h6>

<v-clicks at="11">

- Agents now have shells, credentials, production databases
- Big one: systems **smart enough to break out** of the sandbox

</v-clicks>

</div>
</div>

<!--
Impact measures: relative reachability (Krakovna et al. 2018), attainable utility preservation (Turner et al. 2020). Stayed niche.
Example: coding agents deleting files / production databases (e.g. the Replit incident, mid-2025).
-->

---

# 2. Avoiding reward hacking

<div class="three-q">
<div>

###### What is it?

<v-clicks>

- Optimizer finds the gap between what you measured and what you meant
- Goodhart's law, with gradients
- <span class="example">the boat that circles for points instead of finishing the race</span>

</v-clicks>

</div>
<div>

###### What happened?

<v-clicks>

- Renamed: _specification gaming_
- RLHF: reward model over-optimization, sycophancy
- RL on code: special-casing tests, editing the tests
- Same story as side effects: generalization + lots of patching

</v-clicks>

</div>
<div>

###### Relevance today

<v-clicks>

- Central — every RL run on a frontier model fights it
- Hacking can generalize into broader misalignment
- Penalizing hacky reasoning can teach models to _hide_ it

</v-clicks>

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

# 3. Scalable oversight

<div class="three-q">
<div>

###### What is it?

<v-clicks>

- The true objective is too expensive to check every time
- <span class="example">throw away the candy wrapper, not the phone — but you can't ask each time</span>
- Learn from sparse human feedback

</v-clicks>

</div>
<div>

###### What happened?

<v-clicks>

- The paper's biggest success: **RLHF** (Christiano et al. 2017)
- → InstructGPT → ChatGPT
- Debate, amplification, recursive reward modeling
- Constitutional AI / RLAIF, weak-to-strong generalization

</v-clicks>

</div>
<div>

###### Relevance today

<v-clicks>

- Harder than ever: humans can't check superhuman outputs
- AI overseeing AI
- One of the core open problems

</v-clicks>

</div>
</div>

<!--
Debate: Irving, Christiano, Amodei (2018). IDA: Christiano et al. (2018).
Constitutional AI: Bai et al. (2022). Weak-to-strong: Burns et al. (2023).
-->

---

# 4. Safe exploration

<div class="three-q">
<div>

###### What is it?

<v-clicks>

- Learning means trying things — some of which are catastrophic
- <span class="example">don't try the wet mop in the socket</span>
- Implicit assumption: the agent learns **on the job**

</v-clicks>

</div>
<div>

###### What happened?

<v-clicks>

- Constrained RL, Safety Gym — mostly robotics
- Then the paradigm changed: pretrain, post-train, _then_ deploy
- Learning on the job? Not really, anymore

</v-clicks>

</div>
<div>

###### Relevance today

<v-clicks>

- Small, for now
- Returns with agents doing RL in real environments and continual learning

</v-clicks>

</div>
</div>

<!--
Constrained Policy Optimization: Achiam et al. (2017). Safety Gym: Ray, Achiam, Amodei (2019).
-->

---

# 5. Robustness to distributional shift

<div class="three-q">
<div>

###### What is it?

<v-clicks>

- The world at deployment ≠ the world in training
- Know when you don't know
- <span class="example">the office robot on the factory floor</span>

</v-clicks>

</div>
<div>

###### What happened?

<v-clicks>

- Renamed: **generalization**
- LLMs generalize far better than anyone expected
- Adversarial robustness → jailbreaks
- Goal misgeneralization: capabilities generalize, goals don't

</v-clicks>

</div>
<div>

###### Relevance today

<v-clicks>

- Arguably _the_ alignment question: what does training generalize to?
- Emergent misalignment from narrow finetuning
- Eval awareness: test ≠ deployment, and models notice

</v-clicks>

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

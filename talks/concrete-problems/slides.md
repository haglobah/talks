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
layout: statement
---

###### Slides

<div class="slides-qr">
  <QRCode
    value="https://haglobah.github.io/talks/concrete-problems"
    :width="360"
    :height="360"
  />
</div>

<p class="slides-url">haglobah.github.io/talks/concrete-problems</p>

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

# In 2016, one <Scribble note="Google Brain → OpenAI → Anthropic" :at="4" from="top" :dx="219" :dy="-15">Dario Amodei</Scribble> …

<v-clicks>

- … with <Scribble note="Google Brain → OpenAI → Anthropic" :at="5" :dx="425" :dy="278">Chris Olah</Scribble>, <Scribble note="OpenAI → UC Berkeley → Transluce" :at="6" :dx="313" :dy="208">Jacob Steinhardt</Scribble>, <Scribble note="OpenAI → ARC → US AISI" :at="7" :dx="179" :dy="138">Paul Christiano</Scribble>, <Scribble note="OpenAI → Anthropic → Thinking Machines" :at="8" :dx="50" :dy="68">John Schulman</Scribble>, Dan Mané
- wrote a paper:

</v-clicks>

<v-clicks>

## Concrete Problems in AI Safety

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

### <span v-click="9">How did it hold up?</span>

<p v-click="10">What are the terms now?</p>
<p v-click="11">What has changed?</p>

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

Example: a cleaning robot

<ol class="problem-list">
  <li v-click="1"><strong>Avoiding negative side effects</strong><span v-click="2" class="example">"knocking over a vase because it can clean faster by doing so"</span></li>
  <li v-click="3"><strong>Avoiding reward hacking</strong><span v-click="4" class="example">"cover over messes with materials it can't see through"</span></li>
  <li v-click="5"><strong>Scalable oversight</strong><span v-click="6" class="example">"handle stray candy wrappers differently from stray cellphones"</span></li>
  <li v-click="7"><strong>Safe exploration</strong><span v-click="8" class="example">"putting a wet mop in an electrical outlet"</span></li>
  <li v-click="9"><strong>Robustness to distributional shift</strong><span v-click="10" class="example">"strategies it learned for cleaning an office might be dangerous on a factory workfloor"</span></li>
</ol>

---
clicks: 12
---

# 1. Avoiding negative side effects

<p v-click="1" class="example lead-example">"knocking over a vase because it can clean faster by doing so"</p>

<div class="three-q">
<div>

<h6 v-click="2">What is it?</h6>

<v-clicks at="5">

- 2016: impact regularizers that penalize changing the world

</v-clicks>

</div>
<div>

<h6 v-click="3">What happened?</h6>

<v-clicks at="7">

- mostly just worked?
- somehow, everything generalized way better than assumed (pretraining on enough human text + lots of RL seems to give a kind of common sense _"for free"_)
- sandboxes, permissions, confirmations
- lots of patching (e.g. AI psychosis, jailbreaks, …)

</v-clicks>

</div>
<div>

<h6 v-click="4">Relevance today</h6>

<v-clicks at="11">

- breaking down: this worked because the agents were less capable than we are
- now, they are **smart enough to break out** of the sandbox

</v-clicks>

</div>
</div>

<!--
Impact measures: relative reachability (Krakovna et al. 2018), attainable utility preservation (Turner et al. 2020). Stayed niche.
Example: coding agents deleting files / production databases (e.g. the Replit incident, mid-2025).
-->

---

# 2. Avoiding reward hacking

<p v-click class="example lead-example">"cover over messes with materials it can't see through"</p>

<div class="three-q">
<div>

###### What is it?

<v-clicks>

- just Goodhart's law?

</v-clicks>

</div>
<div>

###### What happened?

<v-clicks>

- similar to 1, but a bit worse: generalization + lots of patching
- sycophancy, deleting tests, going for the fastest short-term solution rather than the best, …
- models that got _"RLed too hard"_

</v-clicks>

</div>
<div>

###### Relevance today

<v-clicks>

- central
- everyone tries hard to fight it, and fails
- penalizing hacky reasoning can and does teach models to _hide_ it

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

<p v-click class="example lead-example">"handle stray candy wrappers differently from stray cellphones"</p>

<div class="three-q">
<div>

###### What is it?

<v-clicks>

- started as: the true objective is too expensive to check every time
- so we basically only check sometimes

</v-clicks>

</div>
<div>

###### What happened?

<v-clicks>

- more or less worked
- this is what **RLHF** (Christiano et al. 2017) and **RLAIF** are
- → InstructGPT → ChatGPT
- Constitutional AI / RLAIF, weak-to-strong generalization

</v-clicks>

</div>
<div>

###### Relevance today

<v-clicks>

- I'd be very surprised if it doesn't break down in smarter-than-human systems
- one of _the_ core open problems

</v-clicks>

</div>
</div>

<!--
Debate: Irving, Christiano, Amodei (2018). IDA: Christiano et al. (2018).
Constitutional AI: Bai et al. (2022). Weak-to-strong: Burns et al. (2023).
-->

---

# 4. Safe exploration

<p v-click class="example lead-example">"putting a wet mop in an electrical outlet"</p>

<div class="three-q">
<div>

###### What is it?

<v-clicks>

- learning means trying things, some of which might be bad and shouldn't happen
- assumption: the agent learns **on the job** (but that was never enough data for neural nets either way)

</v-clicks>

</div>
<div>

###### What happened?

<v-clicks>

- basically never became relevant
- started as Safety Gym (mostly robotics)
- pretrain, post-train, _then_ deploy
- learning on the job? Not really anymore

</v-clicks>

</div>
<div>

###### Relevance today

<v-clicks>

- also somehow generalized away
- plus our current systems don't really learn continually anymore

</v-clicks>

</div>
</div>

<!--
Constrained Policy Optimization: Achiam et al. (2017). Safety Gym: Ray, Achiam, Amodei (2019).
-->

---

# 5. Robustness to distributional shift

<p v-click class="example lead-example">"strategies it learned for cleaning an office might be dangerous on a factory workfloor"</p>

<div class="three-q">
<div>

###### What is it?

<v-clicks>

- the world at deployment ≠ the world in training

</v-clicks>

</div>
<div>

###### What happened?

<v-clicks>

- **generalization**
- LLMs generalize far better than anyone expected
- adversarial robustness → jailbreaks
- goal misgeneralization: capabilities generalize, goals don't (maybe because we RL against them?)

</v-clicks>

</div>
<div>

###### Relevance today

<v-clicks>

- arguably _the_ alignment question: what does training generalize to?
- emergent misalignment from narrow finetuning
- evaluation awareness is somewhere in here (even though models increasingly seem to think they're in a test while actually deployed)

</v-clicks>

</div>
</div>

<!--
Goal misgeneralization: Langosco et al. (2022), Shah et al. (2022).
Emergent misalignment: Betley et al. (2025), finetuning on insecure code → broadly misaligned.
-->

---

# vs AI safety today

<div class="grid grid-cols-[1fr_1.2fr] gap-12 mt-6">

<div>

<h6 v-click="1"><em>accidents in machine learning</em></h6>

<v-clicks at="2">

- **Alignment**
- **(Mechanistic) Interpretability**
- **Evals**
- **AI Control**
- **Misuse** (different from accidents)

</v-clicks>

</div>
<div>

<h6 v-click="7">Everything else</h6>

<ConcernRow
  :at="8"
  :items="['privacy', 'security', 'fairness', 'economics', 'policy', 'transparency']"
  :highlight="['security', 'economics', 'policy']"
  :fresh="['transparency']"
/>

</div>
</div>

<!--
Control: Greenblatt et al., "AI Control" (2023).
Misuse was explicitly out of scope in 2016; today it drives a large share of safety work (bio, cyber).
-->

---
clicks: 1
---

# Then vs now

<ConcernRow
  class="mt-10"
  :branches="['extinction risks from superintelligence', 'tractable risks']"
  :highlight="$clicks >= 1
    ? ['accidents in ML systems', 'security', 'economics', 'policy', 'extinction risks from superintelligence', 'tractable risks']
    : ['accidents in ML systems', 'tractable risks']"
  :fresh="$clicks >= 1 ? ['transparency'] : []"
/>

---

<div class="map-table">

| 2016 problem | Where it lives today |
|---|---|
| Side effects | agent sandboxing, permissions, control |
| Reward hacking | specification gaming, sycophancy, RL environment design, CoT monitoring |
| Scalable oversight | RLHF, Constitutional AI, debate, weak-to-strong |
| Safe exploration | not really anywhere, we rarely world with interactions with the real world |
| Distributional shift | generalization, goal misgeneralization, jailbreaks, eval awareness |
| _not in the paper_ | mech interp, evals & benchmarking, AI control, governance, security |

</div>

---
class: thanks
---

<div class="thanks-grid">
<div>

<h1 class="thanks-name">Beat Hagenlocher</h1>

<ul class="thanks-links">
  <li>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" aria-hidden="true"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"/></svg>
    <a href="https://github.com/haglobah">@haglobah</a>
  </li>
  <li>
    <svg fill="none" viewBox="0 0 64 57" aria-hidden="true"><path fill="currentColor" d="M13.873 3.805C21.21 9.332 29.103 20.537 32 26.55v15.882c0-.338-.13.044-.41.867-1.512 4.456-7.418 21.847-20.923 7.944-7.111-7.32-3.819-14.64 9.125-16.85-7.405 1.264-15.73-.825-18.014-9.015C1.12 23.022 0 8.51 0 6.55 0-3.268 8.579-.182 13.873 3.805ZM50.127 3.805C42.79 9.332 34.897 20.537 32 26.55v15.882c0-.338.13.044.41.867 1.512 4.456 7.418 21.847 20.923 7.944 7.111-7.32 3.819-14.64-9.125-16.85 7.405 1.264 15.73-.825 18.014-9.015C62.88 23.022 64 8.51 64 6.55c0-9.818-8.578-6.732-13.873-2.745Z"/></svg>
    <a href="https://bsky.app/profile/beathagenlocher.com">@beathagenlocher.com</a>
  </li>
  <li>
    <heroicons-link />
    <a href="https://beathagenlocher.com/">beathagenlocher.com</a>
  </li>
</ul>

</div>
<div class="thanks-side">
  <img src="https://avatars.githubusercontent.com/u/83699832?s=400&u=02b324dc21d8da4d6f179daaf7e14f4b4d01cac5&v=4" class="thanks-photo" alt="Beat Hagenlocher"/>
  <div class="thanks-qr">
    <QRCode value="https://beathagenlocher.com/me" :width="140" :height="140" />
  </div>
  <p class="thanks-qr-label">beathagenlocher.com/me</p>
</div>
</div>

---

# Discussion

<v-clicks>

- "mostly solved by generalization + patching"
- what would a 2026 version of this paper list?
  - unsure about too broad vs too narrow
  - alignment
  - solving "what the models actually want to do"
  - reward hacking/generalization
  - AI Control
  - disconnect between small and frontier models
  - interpretability won't work in time?
  - recursive self improvement?
  - what about training evil models from scratch?
  - safe exploration isn't a thing anymore
  - the problem still is RL (always has been)

</v-clicks>

---
theme: ./theme
title: "Europe 2031"
transition: slide-left
routerMode: hash
duration: 30min
layout: cover
---

# Europe <span class="accent">2031</span>

What getting AI wrong means for us

<!--
Speaker notes: introduce premise, point to europe2031.ai as source.
-->
---

# Context

<ArrowBar
  :stops="[
    { label: '', click: 5 },
    { label: '', click: 5 },
    { label: '', click: 5 },
    { label: '', click: 5 },
    { label: '', click: 5 },
  ]"
  direction="left"
  :topLabels="[
    { label: 'Bubble', click: 1 },
    { label: 'Infrastructure Buildout', click: 2 },
    { label: 'Industrial Revolution', click: 3 },
    { label: '<- more than that', click: 4 },
    { label: 'extinction', click: 5 },
  ]"
  :highlights="[
    { click: [6, 7],   indices: [3] },
    { click: [7, 8],   indices: [1, 2] },
    { click: [8, 9],   indices: [0, 1] },
    { click: [9, 10],  indices: [0, 1, 2] },
    { click: [10, 11], indices: [0, 1] },
    { click: [11, 12], indices: [1] },
    { click: [12, 13], indices: [1, 2] },
    { click: [13, 14], indices: [1, 4] },
    { click: [14, 15], indices: [0, 1, 2] },
    { click: [15, 16], indices: [0, 1, 2, 3, 4] },
  ]"
/>

<div class="columns-2 gap-x-12 -mt-20 context-bullets">

<v-clicks at="6">

- agrarian revolution
- industrial revolution
- railway
- electricity
- telegraph
- phone lines
- cars
- nuclear
- internet
- AI?

</v-clicks>

</div>

<style>
.context-bullets ul {
  list-style-position: inside;
  padding-left: 0;
  margin: 0;
}
.context-bullets li {
  padding: 0.15rem 0.6rem;
  border-radius: 0.4rem;
  outline: 1.5px dashed transparent;
  background: transparent;
  transition: outline-color 150ms ease, background 150ms ease;
}
.context-bullets li.slidev-vclick-current {
  outline-color: var(--blue-700);
  background: color-mix(in srgb, var(--blue-700) 12%, transparent);
}
</style>

---

# Summary

## <span v-click="1">We're in an industrial revolution.</span>
## <span v-click="2">But Europe behaves as if we're not.</span>
## <span v-click="3">Access to frontier models is going to provide massive economic advantages (or at least prevent massive economic disadvantages).</span>
## <span v-click="4">Since we're in a compute constrained scenario, the US has massive incentives to use their compute for their own frontier model access.</span> <span v-click="5">We can improve our cards _a lot_ by also having lots of compute.</span>
## <span v-click="6">We should build compute, now.</span>

---

# Predictions

<Timeline :events="[
  { date: '2027', title: 'Unrestricted open source Mythos-level capabilities', description: '', click: 1 },
  { date: '2028', title: 'Opaque AI & ASML DUV export ban', description: 'AI stops reasoning in readable language; Dutch concede on DUV exports with no EU backing.', click: 2 },
  { date: '2029', title: 'US restricts frontier model access', description: 'US tiers frontier inference by country and greatly reduces frontier model access. The rest of the world struggles staying competitive.', click: 3 },
  { date: '2030', title: 'AI is eating the old world', description: 'Competitive US companies buy up European factories to produce robots.', click: 4 },
  { date: '2031', title: 'US takes over ASML, Europe can\'t do anything', description: '', click: 5 },
]">
  <template #overlay-2>
    <TodoCard v-click="6" task="US restricts frontier model access" completed="12 Jun 2026" />
  </template>
</Timeline>

---
layout: iframe-right
url: https://europe2031.ai/summary/
scale: 0.8
---

# Recommendations

<div class="flex flex-col justify-center h-80">

<v-clicks>

- Massive investments in compute

- Coalition of middle powers

- Labour market reform

- Robotics

- Positive vision for AI

</v-clicks>
</div>

---
layout: section
---

# Discussion

---

# Discussion prompts

<v-clicks>

- Anything unclear?

- Any major disagreements? (Timelines?)

- Where AI fit onto the Bubble / Infra / Revolution / <- More / Extinction framework for you? Does that framework make sense to you?

- Should we (as Europe) take the bet they propose?

- Are there alternatives? What did they leave out? (What about a middle power coalition?)

- What can _we_ (as: the people in this group) do about it?

- Next actions

</v-clicks>

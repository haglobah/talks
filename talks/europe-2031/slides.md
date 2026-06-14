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

# Summary

## <span v-click="1">We're in an industrial revolution.</span> <span v-click="2">Access to frontier models is going to provide massive economic advantages (or at least prevent massive economic disadvantages).</span> <span v-click="3">Since we're in a compute constrained scenario, the US has massive incentives to use their compute for their own frontier model access.</span> <span v-click="4">We can improve our cards by a lot by <em>also</em> having lots of compute available compared to the US.</span> <span v-click="5">We should build compute, now.</span>

---

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
/>

- agrarian revolution
- industrial revolution
- railway
- electricity
- telegraf
- phone lines
- cars
- nuclear
- internet

---

# A chronology of the scenario

<Timeline :events="[
  { date: 'Jan 2025', title: 'Pre-scenario baseline', description: 'Frontier labs publish first agentic systems; EU AI Act enters initial phase.', click: 1 },
  { date: 'Sep 2025', title: 'AGI roadmaps converge', description: 'Major labs target 2027 timelines; capital flows accelerate.', click: 2 },
  { date: '2026', title: 'The inflection', description: 'Capability jump; first wave of cognitive labor displacement.', click: 3 },
  { date: '2028', title: 'Power consolidation', description: 'A handful of actors control compute; sovereignty becomes central.', click: 4 },
  { date: '2030', title: 'Geopolitical break', description: 'Bloc realignment around model access and compute.', click: 5 },
  { date: '2031', title: 'Where Europe lands', description: 'Scenario outcome — depends on actions taken in 2026–2028.', click: 6 },
]" />

---
layout: section
---

# Discussion

---

# Discussion prompts

<v-clicks>

- Which 2026 inflection signals would you treat as load-bearing for your own planning?
- Where does Europe have actual room to act between 2026 and 2028 — and where is it already a price-taker?
- If the 2030 geopolitical break happens, what does that imply for the institutions you work in or care about?
- What single thing in this scenario would you most want to be wrong about? Why?

</v-clicks>

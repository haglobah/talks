---
theme: ./yoarhe
title: Explaining Functional Programming
info: |
  Most of us have been there—explaining functional programming is hard. This talk first gathers the prerequisites for understanding functional programming and then provides a template for explaining it. In the meantime, it touches on the history of programming, programming languages, and some general concepts such as coupling and complexity.
author: Beat Hagenlocher
class: text-center
fonts:
  sans: Fira Sans
  mono: Fira Code
transition: slide-left
mdc: true
---

<Title>Explaining Functional Programming</Title>

<Subtitle>Beat Hagenlocher</Subtitle>

---
layout: left-right
---

::header::

<Heading>The page title</Heading>

::left::

<v-click>

- [Rationality](https://zelium.io/beat/rationality)
  - The [Codex](https://lesswrong.com/codex)
  - The [Sequences](https://lesswrong.com/sequences)
- [Situational Awareness](https://situational-awareness.ai)
- [School of Moral Ambition](https://moralambition.eu)
- [Local-First Software](https://localfirstweb.dev/)

</v-click>

::right::

<!-- ### small -->

<br/>

<v-click>

- Intellectual Monopoly
- Aaron Swartz
- https://annas-archive.org
- Bullshit Jobs
- Principles for Dealing with the changing world order
- Cryptonomicon
- ["What it means to be open" by Lu Wilson at Heart of Clojure 2024](https://www.youtube.com/watch?app=desktop&v=MJzV0CX0q8o)
- [List of Common Misconceptions](https://en.m.wikipedia.org/wiki/List_of_common_misconceptions)

</v-click>

---
layout: cover
---

Functional Programming is  
<Highlight>a way to write programs</Highlight>

---

## And 2025?

<br/>

<v-clicks>

1. Digital Garden
2. [CO2 Watch](https://github.com/cscott/watchy-co2-pcb#readme)?
3. [Smart Mirror](https://supersimple.org/blog/smart-mirror)?
4. Moral Ambition

</v-clicks>

---
layout: intro
---

# Beat Hagenlocher

<div class="leading-8 opacity-80">
Software Architect <a href="https://active-group.de">@active group</a><br>

</div>

<div class="my-10 mx-4">
  <div class="flex gap-2 my-4 items-center">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" class="h-6 w-6" aria-hidden="true"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path></svg>
    <a href="https://github.com/haglobah" target="_blank">
      @haglobah
    </a>
  </div>
  <div class="flex gap-2 my-4 items-center">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6"><path stroke-linecap="round" stroke-linejoin="round" d="M13.19 8.688a4.5 4.5 0 0 1 1.242 7.244l-4.5 4.5a4.5 4.5 0 0 1-6.364-6.364l1.757-1.757m13.35-.622 1.757-1.757a4.5 4.5 0 0 0-6.364-6.364l-4.5 4.5a4.5 4.5 0 0 0 1.242 7.244"></path></svg>
    <a href="https://me.beathagenlocher.com" target="_blank">
      me.beathagenlocher.com
    </a>
  </div>
</div>

<img src="https://avatars.githubusercontent.com/u/83699832?s=400&u=02b324dc21d8da4d6f179daaf7e14f4b4d01cac5&v=4" class="rounded-full w-40 abs-tr mt-16 mr-12"/>


---

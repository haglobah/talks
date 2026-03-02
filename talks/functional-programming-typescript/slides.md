---
theme: ../../themes/beathagenlocher.com
title: Functional Programming in TypeScript
info: |

author: Beat Hagenlocher
class: text-center
fonts:
  sans: "Fira Sans"
  mono: "Fira Code"
transition: slide-left
mdc: true
---

<Title>{{ $frontmatter.title }}</Title>

<Subtitle>
  bobkonf 2026
</Subtitle>

---
layout: mono-header
---

::header::

<Heading>Link to Slides</Heading>

::main::
<div class="bg-white max-w-min my-10 mx-auto">
  <QRCode
    value="https://haglobah.github.io/talks/functional-programming-in-typescript"
    :width="320"
    :height="320"
  />
</div>

---
layout: mono-header
---

::header::

<Heading>Links</Heading>

::main::

- [functional-programming-typescript | Github](https://github.com/haglobah/functional-programming-typescript/tree/tutorial)
- [Audio Player | SolidJS playground](https://playground.solidjs.com/anonymous/ca35d06f-0f0f-499f-a035-2b83804015b4)

---
layout: mono-header
---

::header::

<Heading>Overview</Heading>

::main::

<v-clicks>

0. Imperative, hidden-model audio player application.
1. Refactoring to: _Making Illegal States Unrepresentable_ + explicit model
2. Refactoring to: `reduce`-style state transitions
3. Refactoring to: Explicit side effects
4. Extensibility & Maintainability: Adding functionality
5. Outlook

</v-clicks>

---
layout: mono-header
---

::main::

<Title>CODE</Title>

---
layout: mono-header
---

::header::
<Heading>Outlook</Heading>

::main::

<v-clicks>

- [Immutable.js](https://immutable-js.com/)
- [purify-ts](https://gigobyte.github.io/purify/getting-started)
- [Effect](https://effect.website/)

</v-clicks>

---
layout: mono-header
---

::header::
<Heading>Resources</Heading>

::main::

- <OuterLink href="https://functional-architecture.org/make_illegal_states_unrepresentable/">Making Illegal States Unrepresentable</OuterLink>
- <OuterLink href="https://lexi-lambda.github.io/blog/2019/11/05/parse-don-t-validate/">Parse, don't Validate</OuterLink>
- <OuterLink href="https://functional-architecture.org/functional_core_imperative_shell/">move effects out of the core of your application</OuterLink>

---
src: ./parts/beat.md
---

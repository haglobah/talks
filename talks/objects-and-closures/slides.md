---
theme: ../../themes/beathagenlocher.com
title: On Closures and Objects
date: 2025-10-28
info: |

author: Beat Hagenlocher
class: text-center
fonts:
  sans: "Fira Sans"
  mono: "Fira Code"
transition: slide-left
addons:
 - "@katzumi/slidev-addon-qrcode"
mdc: true
---

<Title>{{ $frontmatter.title }}</Title>

<Subtitle>
  TL;DR: <OuterLink href="https://wiki.c2.com/?ClosuresAndObjectsAreEquivalent">Closures and Objects are Equivalent</OuterLink>.
</Subtitle>

---
layout: mono-header
---

::header::

<Heading>Link to Slides</Heading>

::main::
<div class="bg-white max-w-min my-10 mx-auto">
  <QRCode
    value="https://haglobah.github.io/talks/objects-and-closures"
    :width="400"
    :height="400"
    color="white"
  />
</div>

---
layout: mono-header
---

::header::

<Heading>Link to Repo</Heading>

::main::
<div class="bg-white max-w-min my-10 mx-auto">
  <QRCode
    value="https://github.com/haglobah/objects-and-closures"
    :width="400"
    :height="400"
    color="white"
  />
</div>

---
layout: iframe

url: https://wiki.c2.com/?ClosuresAndObjectsAreEquivalent
---
---
layout: left-right-header
---

::left::

<v-clicks>

<Highlight>What is a Closure?</Highlight>

- A function as a value (1)
- That can capture (_close over_) variables <br> in its scope on creation (2)

</v-clicks>

::right::

<v-clicks>

<Highlight>What is an Object?</Highlight>

- A value (1)
- That maps names (2)
- To other values or functions ("methods") (3)

</v-clicks>

---
layout: mono-header
---

::main::

<Title>DEMO</Title>

---
layout: mono-header
---

::header::

<Heading>Python</Heading>

::main::

<<< @/snippets/main.py#problem

---
layout: mono-header
---

::header::

<Heading>Python</Heading>

::main::

<<< @/snippets/main.py#solution

---
layout: mono-header
---

::header::

<Heading>Python</Heading>

::main::

<<< @/snippets/main.py#more

---
layout: mono-header
---

::header::

<Heading>Racket</Heading>

::main::

<<< @/snippets/racket-closures-work.rkt scheme {*}{maxHeight:'400px'}

---
layout: mono-header
---

::header::

<Heading>Racket: Message Passing</Heading>

::main::

<<< @/snippets/racket-message-passing.rkt scheme {*}{maxHeight:'400px'}

---
layout: mono-header
---

::header::

<Heading>Racket: Constructors</Heading>

::main::

<<< @/snippets/racket-constructors.rkt scheme {*}{maxHeight:'400px'}

---
layout: mono-header
---

::header::

<Heading>Racket: With State</Heading>

::main::

<<< @/snippets/racket-with-state.rkt scheme {*}{maxHeight:'400px'}

---
layout: mono-header
---

::header::

<Heading>Racket: With Static</Heading>

::main::

<<< @/snippets/racket-with-static.rkt scheme {*}{maxHeight:'400px'}

---
layout: mono-header
---

::header::

<Heading>TypeScript</Heading>

::main::

<<< @/snippets/main.ts#closures-work {*}{maxHeight:'400px'}

---
layout: mono-header
---

::header::

<Heading>TypeScript: Message Passing</Heading>

::main::

<<< @/snippets/main.ts#message-passing {*}{maxHeight:'400px'}

---
layout: mono-header
---

::header::

<Heading>TypeScript: Constructors</Heading>

::main::

<<< @/snippets/main.ts#constructors {*}{maxHeight:'400px'}

---
layout: mono-header
---

::header::

<Heading>TypeScript: With State</Heading>

::main::

<<< @/snippets/main.ts#with-state {*}{maxHeight:'400px'}

---
layout: mono-header
---

::header::

<Heading>TypeScript: With Static</Heading>

::main::

<<< @/snippets/main.ts#with-static {*}{maxHeight:'400px'}

---
layout: left-right-header
---

::left::

<v-clicks>
<Highlight>Closures</Highlight>

_are Objects:_

- with fields as lexically bound variables
- with exactly one method: `call`

</v-clicks>

::right::

<v-clicks>

<Highlight>Objects</Highlight>

_are Closures:_

- with local state in `let`s
- you can send messages to

</v-clicks>

---
layout: mono-header
---

::header::
<Heading>Resources</Heading>

- <OuterLink href="https://www.plai.org/">Programming Languages: Application and Intepretation</OuterLink>,<br> specifically _A Standard Model of Objects_
- <OuterLink href="https://wiki.c2.com/?ClosuresAndObjectsAreEquivalent">Closures And Objects Are Equivalent</OuterLink>

---
src: ./parts/beat.md
---

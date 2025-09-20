---
theme: ../../themes/beathagenlocher.com
title: Side Project Night
info: |
  Work on your side projects alongside other motivated people
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

<Subtitle>Work on your side projects alongside other motivated people</Subtitle>

---
layout: mono-header
---

::header::

<Heading>Foundation</Heading>

::main::
<div class="bg-white max-w-min my-10 mx-auto">
  <QRCode
    value="https://haglobah.github.io/talks/2025-07-27-simple-webserver-elixir"
    :width="400"
    :height="400"
    color="white"
  />
</div>

---
layout: mono-header
---
::header::
<Heading>Schedule</Heading>

::main::
<div class="grid grid-cols-2 items-center h-full gap-x-10">
    <Timeslot>Intro</Timeslot><Highlight>~15min</Highlight>
    <Timeslot>Work I</Timeslot><Highlight>~50min</Highlight>
    <Timeslot>Break</Timeslot><Highlight>~10min</Highlight>
    <Timeslot>Work II</Timeslot><Highlight>~50min</Highlight>
    <Timeslot>Demos & End</Timeslot><Highlight>~15min</Highlight>
</div>

---
<Clock>
</Clock>

---
theme: ../../themes/beathagenlocher.com
title: Side Project Night
date: 2025-09-20
info: |
  Work on your side projects alongside motivated people
author: Beat Hagenlocher
class: text-center
fonts:
  sans: "Fira Sans"
  mono: "Fira Code"
transition: slide-left
addons:
 - "slidev-addon-qrcode"
mdc: true
---

<Title>{{ $frontmatter.title }}</Title>

<Subtitle>{{ $frontmatter.info }}</Subtitle>

---
layout: mono-header
---

::header::
<Heading>What's This All About?</Heading>

::main::

<div class="text-center space-y-12">

<div class="text-2xl font-bold leading-[1.8]">
Work on your side projects surrounded by<br>
nice human beings ✨
</div>

<div class="grid grid-cols-3 gap-8 text-lg">
<div class="flex flex-col gap-4">
<Highlight>Who</Highlight>
Anyone with a passion project
</div>
<div class="flex flex-col gap-4">
<Highlight>What</Highlight>
Code, design, write, build—anything!
</div>
<div class="flex flex-col gap-4">
<Highlight>Why</Highlight>
Stop procrastinating & make friends
</div>
</div>

<div class="flex justify-center gap-12">
<div class="opacity-60 leading-[2]">
📍 Westspitze: <br> Eisenbahnstraße 1, 6th Floor
</div>

<div class="w-[4px] bg-zinc-400 opacity-30"></div>

<div class="flex gap-8">
<Highlight>Register <br> here:</Highlight>
<div class="bg-white -mt-5 rounded">
  <QRCode
    data="https://luma.com/side-project-night/"
    :width="120"
    :height="120"
  />
</div>
</div>
</div>
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
layout: mono-header
---

::header::
<Heading>Work Session I</Heading>

::main::
<Clock>
</Clock>

---
layout: mono-header
---

::header::
<Heading>Break</Heading>

::main::
<Clock>
</Clock>

---
layout: mono-header
---

::header::
<Heading>Work Session II</Heading>

::main::
<Clock>
</Clock>

---
layout: mono-header
---

::header::
<Heading>Demos</Heading>

::main::
<Clock>
</Clock>

---
layout: mono-header
---

::header::

<Heading>Register for the calendar (and next event)</Heading>

::main::

<div class="bg-white max-w-min p-2 my-10 mx-auto">
  <QRCode
    data="https://luma.com/side-project-night/"
    :width="400"
    :height="400"
  />
</div>

---
layout: mono-header
---

::header::

<Heading>Hop onto discord</Heading>

::main::
<div class="bg-white max-w-min p-2 my-10 mx-auto">
  <QRCode
    data="https://discord.gg/SyHCXBJ6"
    :width="400"
    :height="400"
  />
</div>

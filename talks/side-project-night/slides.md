---
theme: ../../themes/beathagenlocher.com
title: Side Project Night
info: |
  Work on your side projects alongside motivated people
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

<Subtitle>{{ $frontmatter.info }}</Subtitle>

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

<style>
h2 {
  color: theme('colors.cornflower.light')
}
</style>

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
<div class="bg-white max-w-min my-10 mx-auto">
  <QRCode
    value="https://luma.com/side-project-night/"
    :width="400"
    :height="400"
    color="white"
  />
</div>

---
layout: mono-header
---

::header::

<Heading>Hop onto discord</Heading>

::main::
<div class="bg-white max-w-min my-10 mx-auto">
  <QRCode
    value="https://discord.gg/SyHCXBJ6"
    :width="400"
    :height="400"
    color="white"
  />
</div>

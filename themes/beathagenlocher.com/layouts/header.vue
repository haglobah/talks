<!--
```md
---
layout: header
---

::header::
This is the heading

::main::

This is on main.

```
-->

<template>
  <div class="py-10 px-14 w-full h-full flex flex-col items-center">
    <slot name="header"/>
    <slot name="main"/>
  </div>
</template>



<!--
```md
---
layout: left-right
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
    <div class="my-6 w-full h-full flex flex-col gap-2 justify-center items-center">
      <slot name="main"/>
    </div>
  </div>
</template>

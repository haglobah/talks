<!--
```md
---
layout: left-right
---

::header::
This is the heading
::left::

This is on the left side.

::right::

This is on the right side.

```
-->

<template>
  <div class="py-10 px-14 w-full h-full flex flex-col items-center bg-space-cadet">
    <slot name="header"/>
    <div class="my-6 w-full h-full grid grid-cols-2 gap-2 content-start">
      <div class="my-auto">
        <slot name="left"/>
      </div>
      <div class="my-auto">
        <slot name="right"/>
      </div>
    </div>
  </div>
</template>

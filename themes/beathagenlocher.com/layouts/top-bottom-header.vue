
<!--
```md
---
layout: top-bottom-header
---

::header::
This is the heading
::top::

This is on the left side.

::bottom::

This is on the right side.

```
-->

<template>
  <div class="py-10 px-14 w-full h-full flex flex-col items-center">
    <slot name="header"/>
    <div class="my-6 w-full h-full flex flex-col justify-around">
      <div class="mx-auto">
        <slot name="top"/>
      </div>
      <div class="mx-auto">
        <slot name="bottom"/>
      </div>
    </div>
  </div>
</template>

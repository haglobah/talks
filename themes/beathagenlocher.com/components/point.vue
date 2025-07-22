<template>
  <div class="flex flex-col gap-10 justify-around">
    <div class="relative">
      <div class="absolute top-[50%] left-[50%] translate-x-[-50%] translate-y-[-50%] bg-cornflower size-3 rounded-full"></div>
      <div class="absolute top-[50%] left-[50%] translate-y-[-50%] translate-x-[-50%] size-6 border border-zinc-400 border-3 rounded-full"></div>
    </div>
    <slot />
  </div>
</template>

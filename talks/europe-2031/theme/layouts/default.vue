<template>
  <div class="slidev-layout default">
    <img
      class="europe-brand"
      src="https://europe2031.ai/assets/europe-hero-960.webp"
      alt=""
      aria-hidden="true"
    />
    <slot />
  </div>
</template>

<style scoped>
.slidev-layout.default {
  position: relative;
}

.europe-brand {
  position: absolute;
  bottom: 1.25rem;
  right: 1.5rem;
  width: 140px;
  height: auto;
  opacity: 0.55;
  pointer-events: none;
  user-select: none;
  z-index: 1;
}
</style>

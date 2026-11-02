<script setup lang="ts">
const props = withDefaults(
  defineProps<{
    items?: string[]
    highlight?: string[]
  }>(),
  {
    items: () => ['privacy', 'security', 'fairness', 'economics', 'policy', 'transparency', 'accidents in ML systems'],
    highlight: () => [],
  },
)
</script>

<template>
  <div class="concern-row">
    <span
      v-for="item in props.items"
      :key="item"
      class="concern"
      :class="{ active: props.highlight.includes(item) }"
    >{{ item }}</span>
  </div>
</template>

<style scoped>
.concern-row {
  display: flex;
  flex-wrap: wrap;
  gap: 0.6rem;
}

.concern {
  padding: 0.3rem 0.8rem;
  border-radius: 0.4rem;
  border: 1.5px dashed var(--mute);
  color: var(--ink-soft);
  transition: all 150ms ease;
}

.concern.active {
  border-style: solid;
  border-color: var(--blue-700);
  background: color-mix(in srgb, var(--blue-700) 12%, transparent);
  color: var(--ink);
}
</style>

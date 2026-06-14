<script setup lang="ts">
interface Event {
  date: string
  title: string
  description?: string
  click?: number | string
}

defineProps<{ events: Event[] }>()
</script>

<template>
  <div class="timeline">
    <div
      v-for="(e, i) in events"
      :key="i"
      v-click="e.click"
      class="row"
    >
      <div class="date">{{ e.date }}</div>
      <div class="body">
        <div class="dot" />
        <h3 class="title">{{ e.title }}</h3>
        <p v-if="e.description" class="desc">{{ e.description }}</p>
      </div>
    </div>
  </div>
</template>

<style scoped>
.timeline {
  display: grid;
  gap: 1.5rem;
  max-width: 64rem;
  margin-top: 1.5rem;
}

.row {
  display: grid;
  grid-template-columns: 140px 1fr;
  gap: 2rem;
  align-items: start;
}

.date {
  font-family: 'PT Mono', ui-monospace, monospace;
  font-size: 0.875rem;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: var(--ink-soft);
  padding-top: 0.35rem;
}

.body {
  position: relative;
  border-left: 1px solid var(--rule);
  padding: 0 0 0.5rem 1.5rem;
}

.dot {
  position: absolute;
  left: -5px;
  top: 0.55rem;
  width: 9px;
  height: 9px;
  border-radius: 9999px;
  background: var(--blue-700);
}

.title {
  font-size: 1.5rem;
  font-weight: 400;
  line-height: 1.12;
  letter-spacing: -0.02em;
  margin: 0 0 0.4rem 0;
  color: var(--ink);
}

.desc {
  font-size: 1rem;
  line-height: 1.55;
  color: var(--ink);
  margin: 0;
}
</style>

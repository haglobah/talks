<script setup lang="ts">
interface Event {
  date: string
  title: string
  description?: string
  click?: number | string
  completed?: string
  completedClick?: number
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
      :class="{ completed: e.completedClick != null && $clicks >= e.completedClick }"
    >
      <div class="date-col">
        <div class="date">{{ e.date }}</div>
        <div v-if="e.completed" class="completed-meta">Completed {{ e.completed }}</div>
      </div>
      <div class="body">
        <div class="dot" />
        <h3 class="title">{{ e.title }}</h3>
        <p v-if="e.description" class="desc">{{ e.description }}</p>
        <slot :name="`overlay-${i}`" />
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
  border: 2px solid transparent;
  border-radius: 12px;
  padding: 0.75rem 1rem;
  margin: -0.75rem -1rem;
  background: transparent;
  transition: border-color 200ms ease, background 200ms ease, box-shadow 200ms ease;
}

.row.completed {
  border-color: var(--rule);
  background: color-mix(in srgb, var(--ink) 5%, transparent);
  box-shadow:
    0 10px 15px -3px rgba(0, 0, 0, 0.1),
    0 4px 6px -4px rgba(0, 0, 0, 0.1);
}

.date-col {
  padding-top: 0.35rem;
}

.date {
  font-family: 'PT Mono', ui-monospace, monospace;
  font-size: 0.875rem;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: var(--ink-soft);
}

.completed-meta {
  font-family: 'PT Mono', ui-monospace, monospace;
  font-size: 0.72rem;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: var(--ink-soft);
  margin-top: 0.4rem;
  opacity: 0;
  transition: opacity 200ms ease;
}

.row.completed .completed-meta {
  opacity: 1;
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
  transition: background 200ms ease;
}

.row.completed .dot {
  background: var(--ink-soft);
}

.title {
  font-size: 1.5rem;
  font-weight: 400;
  line-height: 1.12;
  letter-spacing: -0.02em;
  margin: 0 0 0.4rem 0;
  color: var(--ink);
  transition: color 200ms ease;
}

.row.completed .title {
  color: var(--ink-soft);
  text-decoration: line-through;
  text-decoration-color: var(--ink-soft);
  text-decoration-thickness: 1.75px;
}

.desc {
  font-size: 1rem;
  line-height: 1.55;
  color: var(--ink);
  margin: 0;
  transition: color 200ms ease;
}

.row.completed .desc {
  color: var(--ink-soft);
}
</style>

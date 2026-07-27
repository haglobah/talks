<script setup lang="ts">
defineProps<{
  task: string
  completed: string
}>()
</script>

<template>
  <div class="todo-card">
    <div class="checkbox">
      <svg viewBox="0 0 16 16" width="22" height="22" aria-hidden="true">
        <path
          d="M3 8.2 L6.7 11.6 L13 4.6"
          stroke="white"
          stroke-width="2.4"
          fill="none"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
      </svg>
    </div>
    <div class="content">
      <div class="task">{{ task }}</div>
      <div class="meta">Completed {{ completed }}</div>
    </div>
  </div>
</template>

<style scoped>
.todo-card {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%) rotate(-1.75deg);
  display: flex;
  align-items: center;
  gap: 1.25rem;
  background: var(--paper);
  border: 1px solid var(--rule);
  border-radius: 14px;
  padding: 1.1rem 1.5rem;
  box-shadow:
    0 22px 48px rgba(17, 17, 17, 0.16),
    0 4px 10px rgba(17, 17, 17, 0.08);
  z-index: 10;
}

.checkbox {
  width: 34px;
  height: 34px;
  border-radius: 8px;
  background: #2BB673;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.12);
}

.content {
  display: flex;
  flex-direction: column;
  gap: 0.3rem;
  line-height: 1.2;
}

.task {
  font-size: 1.35rem;
  font-weight: 500;
  color: var(--ink-soft);
  text-decoration: line-through;
  text-decoration-color: var(--ink-soft);
  text-decoration-thickness: 1.75px;
}

.meta {
  font-size: 0.78rem;
  color: var(--ink-soft);
  font-family: 'PT Mono', ui-monospace, monospace;
  letter-spacing: 0.08em;
  text-transform: uppercase;
}
</style>

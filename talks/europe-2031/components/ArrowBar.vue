<script setup lang="ts">
import { computed } from 'vue'

interface Stop {
  label: string
  position?: string
  click?: number | string
  below?: boolean
}

const props = withDefaults(
  defineProps<{
    stops: Stop[]
    direction?: 'left' | 'right'
    topLabels?: string[]
    arrowLabel?: string
  }>(),
  {
    direction: 'left',
    topLabels: () => [],
    arrowLabel: 'This way',
  },
)

const distributed = computed(() => {
  const n = props.stops.length
  return props.stops.map((s, i) => ({
    ...s,
    pos: s.position ?? `${(i / Math.max(n - 1, 1)) * 100}%`,
  }))
})
</script>

<template>
  <div class="arrow-bar">
    <div v-if="topLabels.length" class="top-labels">
      <span v-for="(l, i) in topLabels" :key="i">{{ l }}</span>
    </div>

    <div class="arrow-label" :class="direction === 'left' ? 'is-right' : 'is-left'">
      <template v-if="direction === 'left'">
        <span class="chev">&#x25C0;</span> {{ arrowLabel }}
      </template>
      <template v-else>
        {{ arrowLabel }} <span class="chev">&#x25B6;</span>
      </template>
    </div>

    <div class="line-wrap">
      <div class="line" />
      <div
        v-for="(s, i) in distributed"
        :key="`dot-${i}`"
        class="dot"
        :style="{ left: s.pos }"
      />
    </div>

    <div class="labels">
      <span
        v-for="(s, i) in distributed"
        :key="`label-${i}`"
        v-click="s.click"
        class="label"
        :class="{ below: s.below }"
        :style="{ left: s.pos }"
      >
        {{ s.label }}
      </span>
    </div>
  </div>
</template>

<style scoped>
.arrow-bar {
  --arrow-color: var(--blue-700);
  position: relative;
  margin-top: 5rem;
  padding: 0 2rem;
}

.top-labels {
  display: flex;
  justify-content: space-between;
  color: var(--arrow-color);
  font-weight: 700;
  font-size: 1.125rem;
  letter-spacing: -0.01em;
  margin-bottom: 1.5rem;
}

.arrow-label {
  position: absolute;
  background: var(--arrow-color);
  color: var(--paper);
  font-weight: 700;
  font-size: 0.875rem;
  padding: 0.25rem 1rem;
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  white-space: nowrap;
}

.arrow-label.is-right {
  right: 13rem;
  top: -0.25rem;
}

.arrow-label.is-left {
  left: 2rem;
  top: -3rem;
}

.chev {
  font-size: 1.25rem;
  line-height: 1;
}

.line-wrap {
  position: relative;
  height: 1rem;
  display: flex;
  align-items: center;
}

.line {
  position: absolute;
  left: 0;
  right: 0;
  height: 4px;
  background: var(--arrow-color);
  border-radius: 9999px;
}

.dot {
  position: absolute;
  width: 1rem;
  height: 1rem;
  background: var(--arrow-color);
  border-radius: 9999px;
  transform: translateX(-50%);
}

.labels {
  position: relative;
  height: 8rem;
  margin-top: 1.5rem;
  font-size: 1.125rem;
  color: var(--ink);
}

.label {
  position: absolute;
  top: 0.5rem;
  transform: translateX(-50%);
  max-width: 11rem;
  text-align: center;
  line-height: 1.25;
}

.label.below {
  top: 4rem;
}
</style>

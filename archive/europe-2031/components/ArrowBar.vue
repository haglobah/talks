<script setup lang="ts">
import { computed } from 'vue'

interface Stop {
  label: string
  position?: string
  click?: number | string
  below?: boolean
}

interface TopLabel {
  label: string
  position?: string
  click?: number | string
}

interface Highlight {
  click?: number | string | (number | string)[]
  indices: number[]
}

const props = withDefaults(
  defineProps<{
    stops: Stop[]
    direction?: 'left' | 'right'
    topLabels?: TopLabel[]
    highlights?: Highlight[]
    arrowLabel?: string
  }>(),
  {
    direction: 'left',
    topLabels: () => [],
    highlights: () => [],
  },
)

function distribute<T extends { position?: string }>(items: T[]) {
  const n = items.length
  return items.map((s, i) => ({
    ...s,
    pos: s.position ?? `${(i / Math.max(n - 1, 1)) * 100}%`,
  }))
}

const distributed = computed(() => distribute(props.stops))
const distributedTop = computed(() => distribute(props.topLabels))

const highlightPositions = computed(() => {
  const top = distributedTop.value
  const result: { click: Highlight['click']; label: string; style: Record<string, string> }[] = []
  for (const h of props.highlights) {
    for (const i of h.indices) {
      const t = top[i]
      if (!t) continue
      result.push({
        click: h.click,
        label: t.label,
        style: { left: t.pos },
      })
    }
  }
  return result
})
</script>

<template>
  <div class="arrow-bar">
    <div v-if="distributedTop.length" class="top-labels">
      <div
        v-for="(h, i) in highlightPositions"
        :key="`hl-${i}`"
        v-click="h.click"
        class="top-highlight"
        :style="h.style"
      >
        <span class="top-highlight-ghost">{{ h.label }}</span>
      </div>
      <span
        v-for="(t, i) in distributedTop"
        :key="`top-${i}`"
        v-click="t.click"
        class="top-label"
        :style="{ left: t.pos }"
      >
        {{ t.label }}
      </span>
    </div>

    <template v-if="arrowLabel !== undefined">
      <div class="arrow-label" :class="direction === 'left' ? 'is-right' : 'is-left'">
        <template v-if="direction === 'left'">
          <span class="chev">&#x2190;</span><span class="arrow-text">{{ arrowLabel }}</span>
        </template>
        <template v-else>
          <span class="arrow-text">{{ arrowLabel }}</span><span class="chev">&#x2192;</span>
        </template>
      </div>
    </template>

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
  --arrow-rule: var(--rule);
  --arrow-accent: var(--blue-700);
  --arrow-mute: var(--ink-soft);
  position: relative;
  margin-top: 4rem;
  padding: 0 1rem;
}

.top-labels {
  position: relative;
  height: 1rem;
  margin-bottom: 1.75rem;
  font-family: 'PT Mono', ui-monospace, monospace;
  text-transform: uppercase;
  font-size: 0.75rem;
  letter-spacing: 0.08em;
  color: var(--arrow-mute);
}

.top-label {
  position: absolute;
  top: 0;
  transform: translateX(-50%);
  white-space: nowrap;
  z-index: 1;
}

.top-highlight {
  position: absolute;
  top: -0.3rem;
  transform: translateX(-50%);
  padding: 0.25rem 0.6rem;
  border: 1.5px dashed var(--arrow-accent);
  border-radius: 0.5rem;
  background: color-mix(in srgb, var(--arrow-accent) 12%, transparent);
  pointer-events: none;
  box-sizing: content-box;
}

.top-highlight-ghost {
  display: block;
  font-family: 'PT Mono', ui-monospace, monospace;
  text-transform: uppercase;
  font-size: 0.75rem;
  letter-spacing: 0.08em;
  white-space: nowrap;
  visibility: hidden;
}

.arrow-label {
  position: absolute;
  display: inline-flex;
  align-items: baseline;
  gap: 0.5rem;
  font-family: 'PT Mono', ui-monospace, monospace;
  text-transform: uppercase;
  font-size: 0.75rem;
  letter-spacing: 0.08em;
  color: var(--arrow-mute);
  white-space: nowrap;
}

.arrow-label.is-right {
  right: 1rem;
  top: -0.4rem;
}

.arrow-label.is-left {
  left: 1rem;
  top: -2.5rem;
}

.chev {
  color: var(--arrow-accent);
  font-size: 1rem;
  line-height: 1;
  transform: translateY(2px);
}

.arrow-text {
  display: inline-block;
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
  height: 1px;
  background: var(--arrow-rule);
}

.dot {
  position: absolute;
  width: 9px;
  height: 9px;
  background: var(--arrow-accent);
  border-radius: 9999px;
  transform: translateX(-50%);
}

.labels {
  position: relative;
  height: 7rem;
  margin-top: 1.25rem;
  font-family: var(--slidev-font-serif, 'PT Serif', Georgia, serif);
  font-size: 1rem;
  color: var(--ink);
}

.label {
  position: absolute;
  top: 0.4rem;
  transform: translateX(-50%);
  max-width: 11rem;
  text-align: center;
  line-height: 1.3;
  letter-spacing: -0.005em;
}

.label.below {
  top: 3.5rem;
}
</style>

<script setup lang="ts">
import { computed } from 'vue'

// at click `at`: box the name in pen, then draw a line to a highlighter note
// whose left edge sits (dx, dy) px from the box's bottom (or top) centre
const props = withDefaults(
  defineProps<{
    note: string
    at: number
    dx: number
    dy: number
    from?: 'bottom' | 'top'
  }>(),
  { from: 'bottom' },
)

// stop short of the note, and bow the line a little so it looks hand-drawn
const path = computed(() => {
  const ex = props.dx - 8
  const ey = props.dy
  const cx = ex / 2 + ey * 0.12
  const cy = ey / 2 - ex * 0.12
  return `M 0 0 Q ${cx} ${cy} ${ex} ${ey}`
})
</script>

<template>
  <span class="scribble" :class="props.from">
    <span v-mark="{ at: props.at, type: 'box', color: '#E0457B', strokeWidth: 2, padding: 3 }"><slot /></span>
    <span v-click="props.at" class="scribble-link">
      <svg class="scribble-line" width="1" height="1">
        <path :d="path" pathLength="1" />
      </svg>
      <span class="scribble-note" :style="{ '--dx': `${props.dx}px`, '--dy': `${props.dy}px` }">{{ props.note }}</span>
    </span>
  </span>
</template>

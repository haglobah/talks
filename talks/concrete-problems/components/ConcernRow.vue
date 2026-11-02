<script setup lang="ts">
import { nextTick, onBeforeUnmount, onMounted, ref } from 'vue'

const props = withDefaults(
  defineProps<{
    items?: string[]
    highlight?: string[]
    // reveal the chips one per click, starting at this click
    at?: number
    // a new line below, with arrows from the last chip to each of these
    branches?: string[]
    // draw the arrows and reveal the branches one per click, starting at this click
    branchAt?: number
  }>(),
  {
    items: () => ['privacy', 'security', 'fairness', 'economics', 'policy', 'transparency', 'accidents in ML systems'],
    highlight: () => [],
    branches: () => [],
  },
)

const wrap = ref<HTMLElement>()
const source = ref<HTMLElement[]>([])
const targets = ref<HTMLElement[]>([])
const arrows = ref<{ line: string, head: string }[]>([])

const HEAD_LENGTH = 11
const HEAD_WIDTH = 10

// offsets, not bounding rects: the slide is scaled with a transform
function measure() {
  const from = source.value[props.items.length - 1]
  if (!from)
    return
  const sx = from.offsetLeft + from.offsetWidth / 2
  const sy = from.offsetTop + from.offsetHeight + 4
  arrows.value = targets.value.map((to) => {
    // the curve ends heading straight down, so the head points down too
    const ex = to.offsetLeft + to.offsetWidth / 2
    const ey = to.offsetTop - 4
    const by = ey - HEAD_LENGTH
    const my = (sy + by) / 2
    return {
      line: `M ${sx} ${sy} C ${sx} ${my} ${ex} ${my} ${ex} ${by + 1}`,
      head: `M ${ex} ${ey} L ${ex - HEAD_WIDTH / 2} ${by} L ${ex + HEAD_WIDTH / 2} ${by} Z`,
    }
  })
}

let observer: ResizeObserver | undefined
onMounted(async () => {
  if (!props.branches.length)
    return
  await nextTick()
  measure()
  document.fonts?.ready.then(measure)
  observer = new ResizeObserver(measure)
  observer.observe(wrap.value!)
})
onBeforeUnmount(() => observer?.disconnect())
</script>

<template>
  <div ref="wrap" class="concern-wrap">
    <div v-if="props.at !== undefined" class="concern-row">
      <!-- v-click on a wrapper: patching :class would wipe its classes -->
      <span v-for="(item, i) in props.items" :key="item" v-click="props.at + i">
        <span
          ref="source"
          class="concern"
          :class="{ active: props.highlight.includes(item) }"
        >{{ item }}</span>
      </span>
    </div>
    <div v-else class="concern-row">
      <span
        v-for="item in props.items"
        :key="item"
        ref="source"
        class="concern"
        :class="{ active: props.highlight.includes(item) }"
      >{{ item }}</span>
    </div>
    <template v-if="props.branches.length">
      <svg
        v-for="(arrow, i) in arrows"
        :key="i"
        v-click="props.branchAt + i"
        class="branch-arrows"
      >
        <path class="line" :d="arrow.line" />
        <path class="head" :d="arrow.head" />
      </svg>
      <div class="branch-row">
        <span v-for="(item, i) in props.branches" :key="item" v-click="props.branchAt + i">
          <span
            ref="targets"
            class="concern"
            :class="{ active: props.highlight.includes(item) }"
          >{{ item }}</span>
        </span>
      </div>
    </template>
  </div>
</template>

<style scoped>
.concern-wrap {
  position: relative;
}

.concern-row {
  display: flex;
  flex-wrap: wrap;
  gap: 0.6rem;
}

.concern {
  display: inline-block;
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

.branch-row {
  display: flex;
  justify-content: center;
  gap: 6rem;
  margin-top: 4rem;
}

.branch-arrows {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  overflow: visible;
  pointer-events: none;
  /* appear at once, without the usual v-click fade */
  transition: none !important;
}

.branch-arrows .line {
  fill: none;
  stroke: var(--ink-soft);
  stroke-width: 1.5;
  stroke-linecap: round;
}

.branch-arrows .head {
  fill: var(--ink-soft);
  stroke: var(--ink-soft);
  stroke-width: 1;
  stroke-linejoin: round;
}
</style>

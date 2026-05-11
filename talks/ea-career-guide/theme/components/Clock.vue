<script setup lang="ts">
import { computed, onBeforeUnmount, ref, watch } from 'vue'

const props = defineProps<{
  time: number | string
  autostart?: boolean
}>()

function parseTime(value: number | string): number {
  if (typeof value === 'number') return Math.max(0, Math.floor(value))
  const parts = value.split(':').map(p => Number.parseInt(p, 10))
  if (parts.some(Number.isNaN)) return 0
  if (parts.length === 1) return Math.max(0, parts[0])
  if (parts.length === 2) return Math.max(0, parts[0] * 60 + parts[1])
  return Math.max(0, parts[0] * 3600 + parts[1] * 60 + parts[2])
}

const initial = computed(() => parseTime(props.time))
const remaining = ref(initial.value)
const running = ref(false)
let intervalId: ReturnType<typeof setInterval> | null = null

function clearTick() {
  if (intervalId !== null) {
    clearInterval(intervalId)
    intervalId = null
  }
}

function tick() {
  if (remaining.value <= 0) {
    stop()
    return
  }
  remaining.value -= 1
  if (remaining.value <= 0) stop()
}

function start() {
  if (running.value || remaining.value <= 0) return
  running.value = true
  intervalId = setInterval(tick, 1000)
}

function stop() {
  running.value = false
  clearTick()
}

function toggle() {
  if (running.value) stop()
  else start()
}

function reset() {
  stop()
  remaining.value = initial.value
}

watch(initial, (next) => {
  stop()
  remaining.value = next
})

if (props.autostart) start()

onBeforeUnmount(clearTick)

const display = computed(() => {
  const total = remaining.value
  const h = Math.floor(total / 3600)
  const m = Math.floor((total % 3600) / 60)
  const s = total % 60
  const pad = (n: number) => n.toString().padStart(2, '0')
  return h > 0 ? `${h}:${pad(m)}:${pad(s)}` : `${pad(m)}:${pad(s)}`
})

const finished = computed(() => remaining.value <= 0)
</script>

<template>
  <div
    class="clock"
    :class="{ 'clock--running': running, 'clock--finished': finished }"
    flex="~ items-center gap-3"
    border="~ rounded-lg"
    p="x-4 y-2"
    w="min"
  >
    <span
      class="clock__display"
      font="mono 600"
      text="3xl"
      tabular-nums
    >{{ display }}</span>
    <div flex="~ gap-1">
      <button
        class="clock__btn"
        border="~ rounded"
        p="x-2 y-1"
        text="sm"
        outline="!none"
        hover:bg="gray-400 opacity-20"
        :aria-label="running ? 'Pause' : 'Start'"
        @click="toggle"
      >
        {{ running ? 'Pause' : 'Start' }}
      </button>
      <button
        class="clock__btn"
        border="~ rounded"
        p="x-2 y-1"
        text="sm"
        outline="!none"
        hover:bg="gray-400 opacity-20"
        aria-label="Reset"
        @click="reset"
      >
        Reset
      </button>
    </div>
  </div>
</template>

<style scoped>
.clock {
  font-family: 'Outfit', sans-serif;
  border-color: #2DBDD180;
  background: #2DBDD110;
  transition: background 0.2s, border-color 0.2s;
}
.clock--running {
  border-color: #2DBDD1;
  background: #2DBDD120;
}
.clock--finished .clock__display {
  color: #d14a4a;
}
.clock__display {
  color: #2DBDD1;
  min-width: 4ch;
  text-align: center;
}
</style>
